echo "module{" > src.mlir
echo "  toy.gen" >> src.mlir
echo "}" >> src.mlir

build/bin/toyc-ch5 -emit=mlir-affine src.mlir
