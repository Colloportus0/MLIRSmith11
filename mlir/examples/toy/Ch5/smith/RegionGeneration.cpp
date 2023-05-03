//
// Created by Stan Wang on 2022/10/31.
//

#include "smith/RegionGeneration.h"

OpGen *RegionGen::selectOpGenerator() {
  assert(weights.size() == generators.size());
  if (weights.empty()) {
    applyFilters();
  }
  int id = getWeightedRandomIndex(weights);
  return &generators[id];
}

OpGen *RegionGen::selectOpGeneratorDiverse() {
  assert(weights.size() == generators.size());

  if (weights.empty()) {
    applyFilters();
  }

  std::set<std::string> opsToCover;
  std::set<std::string> opNestsToCover;

  for (auto op : conf.supported_ops) {
    if (diversity.ops.find(op.getFullName()) == diversity.ops.end()) {
      opsToCover.insert(op.getFullName());
    }
  }
  for (auto op : availableOpNests[region->parent_op]) {
    if (diversity.ops.find(op) == diversity.ops.end()) {
      opNestsToCover.insert(op);
    }
  }

  for (size_t i = 0; i < generators.size(); i++) {
    auto opName = generators[i].opName;
    if (opsToCover.find(opName) != opsToCover.end()) {
      weights[i] += 5 * priority_base;
    }
    if (opNestsToCover.find(opName) != opNestsToCover.end()) {
      weights[i] += 5 * priority_base;
    }
  }

  assert(weights.size() == generators.size());
  debugPrint(region->parent_op);

  size_t id = getWeightedRandomIndex(weights);
  if (weights.empty()) {
    debugPrint("no ops available for " + region->parent_op);
    return nullptr;
  }
  return &generators[id];
}

std::vector<Operation *> RegionGen::apply(OpBuilder &builder, Location loc,
                                          int opLenLimit) {
  int length = 0;
  std::vector<Operation *> operations;
  while (true) {
    OpGen *opGen;
    if (diverse) {
      opGen = selectOpGeneratorDiverse();
    } else {
      opGen = selectOpGenerator();
    }
    if (!opGen) {
      continue;
    }
//    std::cout << "before " + opGen->opName << std::endl;
    auto operation = opGen->apply(builder, loc, *region);
//    std::cout << "after " + opGen->opName << std::endl;
    if (operation) {
      operations.push_back(operation);
      auto current_op = operation->getName().getStringRef().str();
      diversity.insertOp(current_op);
      diversity.insertOpNest(region->parent_op, current_op);
      for (const auto &item : operation->getOperands()) {
        if (!item.getDefiningOp()) {
          continue;
        }
        auto from = item.getDefiningOp()->getName().getStringRef().str();
        diversity.insertOpConnection(from, current_op);
      }
    }
    length++;
    if (length >= opLenLimit) {
      // generate terminator
      break;
    }
  }
  return operations;
}

// for debug use
std::vector<Operation *> RegionGen::applyAll(mlir::OpBuilder &builder,
                                             mlir::Location loc) {
  std::vector<Operation *> operations;
  for (auto opGen : generators) {
    auto operation = opGen.apply(builder, loc, *region);
    if (operation) {
      operations.push_back(operation);
    }
  }
  return operations;
}
