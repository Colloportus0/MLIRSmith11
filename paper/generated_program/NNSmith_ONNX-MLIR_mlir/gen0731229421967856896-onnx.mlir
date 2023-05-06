module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.mlir.constant(-1 : i64) : i64
    %14 = llvm.mlir.constant(0 : i32) : i32
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(2 : index) : i64
    %18 = llvm.mlir.constant(2 : index) : i64
    %19 = llvm.mlir.constant(2 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.constant(4 : index) : i64
    %22 = llvm.mlir.constant(8 : index) : i64
    %23 = llvm.mlir.constant(8 : index) : i64
    %24 = llvm.mlir.null : !llvm.ptr<i32>
    %25 = llvm.getelementptr %24[%23] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %26 = llvm.ptrtoint %25 : !llvm.ptr<i32> to i64
    %27 = llvm.mlir.constant(16 : index) : i64
    %28 = llvm.add %26, %27  : i64
    %29 = llvm.call @malloc(%28) : (i64) -> !llvm.ptr<i8>
    %30 = llvm.bitcast %29 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %31 = llvm.ptrtoint %30 : !llvm.ptr<i32> to i64
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.sub %27, %32  : i64
    %34 = llvm.add %31, %33  : i64
    %35 = llvm.urem %34, %27  : i64
    %36 = llvm.sub %34, %35  : i64
    %37 = llvm.inttoptr %36 : i64 to !llvm.ptr<i32>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %39 = llvm.insertvalue %30, %38[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %16, %42[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %17, %43[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %18, %44[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %19, %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %22, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %21, %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.insertvalue %19, %48[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %20, %49[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%51 : i64)
  ^bb1(%54: i64):  // 2 preds: ^bb0, ^bb11
    %55 = llvm.icmp "slt" %54, %52 : i64
    llvm.cond_br %55, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.mlir.constant(2 : index) : i64
    %58 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%56 : i64)
  ^bb3(%59: i64):  // 2 preds: ^bb2, ^bb10
    %60 = llvm.icmp "slt" %59, %57 : i64
    llvm.cond_br %60, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.mlir.constant(2 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%61 : i64)
  ^bb5(%64: i64):  // 2 preds: ^bb4, ^bb9
    %65 = llvm.icmp "slt" %64, %62 : i64
    llvm.cond_br %65, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.mlir.constant(2 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%66 : i64)
  ^bb7(%69: i64):  // 2 preds: ^bb6, ^bb8
    %70 = llvm.icmp "slt" %69, %67 : i64
    llvm.cond_br %70, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %71 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(8 : index) : i64
    %73 = llvm.mul %54, %72  : i64
    %74 = llvm.mlir.constant(4 : index) : i64
    %75 = llvm.mul %59, %74  : i64
    %76 = llvm.add %73, %75  : i64
    %77 = llvm.mlir.constant(2 : index) : i64
    %78 = llvm.mul %64, %77  : i64
    %79 = llvm.add %76, %78  : i64
    %80 = llvm.add %79, %69  : i64
    %81 = llvm.getelementptr %71[%80] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %82 = llvm.load %81 : !llvm.ptr<i32>
    %83 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(8 : index) : i64
    %85 = llvm.mul %54, %84  : i64
    %86 = llvm.mlir.constant(4 : index) : i64
    %87 = llvm.mul %59, %86  : i64
    %88 = llvm.add %85, %87  : i64
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mul %64, %89  : i64
    %91 = llvm.add %88, %90  : i64
    %92 = llvm.add %91, %69  : i64
    %93 = llvm.getelementptr %83[%92] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %82, %93 : !llvm.ptr<i32>
    %94 = llvm.add %69, %68  : i64
    llvm.br ^bb7(%94 : i64)
  ^bb9:  // pred: ^bb7
    %95 = llvm.add %64, %63  : i64
    llvm.br ^bb5(%95 : i64)
  ^bb10:  // pred: ^bb5
    %96 = llvm.add %59, %58  : i64
    llvm.br ^bb3(%96 : i64)
  ^bb11:  // pred: ^bb3
    %97 = llvm.add %54, %53  : i64
    llvm.br ^bb1(%97 : i64)
  ^bb12:  // pred: ^bb1
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.constant(2 : index) : i64
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.mlir.constant(2 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(4 : index) : i64
    %104 = llvm.mlir.constant(8 : index) : i64
    %105 = llvm.mlir.constant(8 : index) : i64
    %106 = llvm.mlir.null : !llvm.ptr<i1>
    %107 = llvm.getelementptr %106[%105] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %108 = llvm.ptrtoint %107 : !llvm.ptr<i1> to i64
    %109 = llvm.mlir.constant(16 : index) : i64
    %110 = llvm.add %108, %109  : i64
    %111 = llvm.call @malloc(%110) : (i64) -> !llvm.ptr<i8>
    %112 = llvm.bitcast %111 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %113 = llvm.ptrtoint %112 : !llvm.ptr<i1> to i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.sub %109, %114  : i64
    %116 = llvm.add %113, %115  : i64
    %117 = llvm.urem %116, %109  : i64
    %118 = llvm.sub %116, %117  : i64
    %119 = llvm.inttoptr %118 : i64 to !llvm.ptr<i1>
    %120 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %121 = llvm.insertvalue %112, %120[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.insertvalue %119, %121[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.insertvalue %123, %122[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.insertvalue %98, %124[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %99, %125[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.insertvalue %100, %126[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.insertvalue %101, %127[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.insertvalue %104, %128[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %103, %129[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.insertvalue %101, %130[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.insertvalue %102, %131[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%133 : i64)
  ^bb13(%136: i64):  // 2 preds: ^bb12, ^bb23
    %137 = llvm.icmp "slt" %136, %134 : i64
    llvm.cond_br %137, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%138 : i64)
  ^bb15(%141: i64):  // 2 preds: ^bb14, ^bb22
    %142 = llvm.icmp "slt" %141, %139 : i64
    llvm.cond_br %142, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %143 = llvm.mlir.constant(0 : index) : i64
    %144 = llvm.mlir.constant(2 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%143 : i64)
  ^bb17(%146: i64):  // 2 preds: ^bb16, ^bb21
    %147 = llvm.icmp "slt" %146, %144 : i64
    llvm.cond_br %147, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%148 : i64)
  ^bb19(%151: i64):  // 2 preds: ^bb18, ^bb20
    %152 = llvm.icmp "slt" %151, %149 : i64
    llvm.cond_br %152, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %153 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.mlir.constant(8 : index) : i64
    %155 = llvm.mul %136, %154  : i64
    %156 = llvm.mlir.constant(4 : index) : i64
    %157 = llvm.mul %141, %156  : i64
    %158 = llvm.add %155, %157  : i64
    %159 = llvm.mlir.constant(2 : index) : i64
    %160 = llvm.mul %146, %159  : i64
    %161 = llvm.add %158, %160  : i64
    %162 = llvm.add %161, %151  : i64
    %163 = llvm.getelementptr %153[%162] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %164 = llvm.load %163 : !llvm.ptr<i32>
    %165 = llvm.icmp "ne" %164, %14 : i32
    %166 = llvm.extractvalue %132[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.mlir.constant(8 : index) : i64
    %168 = llvm.mul %136, %167  : i64
    %169 = llvm.mlir.constant(4 : index) : i64
    %170 = llvm.mul %141, %169  : i64
    %171 = llvm.add %168, %170  : i64
    %172 = llvm.mlir.constant(2 : index) : i64
    %173 = llvm.mul %146, %172  : i64
    %174 = llvm.add %171, %173  : i64
    %175 = llvm.add %174, %151  : i64
    %176 = llvm.getelementptr %166[%175] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %165, %176 : !llvm.ptr<i1>
    %177 = llvm.add %151, %150  : i64
    llvm.br ^bb19(%177 : i64)
  ^bb21:  // pred: ^bb19
    %178 = llvm.add %146, %145  : i64
    llvm.br ^bb17(%178 : i64)
  ^bb22:  // pred: ^bb17
    %179 = llvm.add %141, %140  : i64
    llvm.br ^bb15(%179 : i64)
  ^bb23:  // pred: ^bb15
    %180 = llvm.add %136, %135  : i64
    llvm.br ^bb13(%180 : i64)
  ^bb24:  // pred: ^bb13
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.constant(2 : index) : i64
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.constant(4 : index) : i64
    %186 = llvm.mlir.constant(4 : index) : i64
    %187 = llvm.mlir.null : !llvm.ptr<i64>
    %188 = llvm.getelementptr %187[%186] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %189 = llvm.ptrtoint %188 : !llvm.ptr<i64> to i64
    %190 = llvm.mlir.constant(16 : index) : i64
    %191 = llvm.add %189, %190  : i64
    %192 = llvm.call @malloc(%191) : (i64) -> !llvm.ptr<i8>
    %193 = llvm.bitcast %192 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %194 = llvm.ptrtoint %193 : !llvm.ptr<i64> to i64
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.sub %190, %195  : i64
    %197 = llvm.add %194, %196  : i64
    %198 = llvm.urem %197, %190  : i64
    %199 = llvm.sub %197, %198  : i64
    %200 = llvm.inttoptr %199 : i64 to !llvm.ptr<i64>
    %201 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %202 = llvm.insertvalue %193, %201[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %203 = llvm.insertvalue %200, %202[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %204 = llvm.mlir.constant(0 : index) : i64
    %205 = llvm.insertvalue %204, %203[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %206 = llvm.insertvalue %181, %205[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %207 = llvm.insertvalue %182, %206[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %208 = llvm.insertvalue %183, %207[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %209 = llvm.insertvalue %185, %208[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %210 = llvm.insertvalue %183, %209[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %211 = llvm.insertvalue %184, %210[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%212 : i64)
  ^bb25(%215: i64):  // 2 preds: ^bb24, ^bb32
    %216 = llvm.icmp "slt" %215, %213 : i64
    llvm.cond_br %216, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.mlir.constant(2 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%217 : i64)
  ^bb27(%220: i64):  // 2 preds: ^bb26, ^bb31
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %222 = llvm.mlir.constant(0 : index) : i64
    %223 = llvm.mlir.constant(2 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%222 : i64)
  ^bb29(%225: i64):  // 2 preds: ^bb28, ^bb30
    %226 = llvm.icmp "slt" %225, %223 : i64
    llvm.cond_br %226, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %227 = llvm.extractvalue %211[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %228 = llvm.mlir.constant(4 : index) : i64
    %229 = llvm.mul %215, %228  : i64
    %230 = llvm.mlir.constant(2 : index) : i64
    %231 = llvm.mul %220, %230  : i64
    %232 = llvm.add %229, %231  : i64
    %233 = llvm.add %232, %225  : i64
    %234 = llvm.getelementptr %227[%233] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %234 : !llvm.ptr<i64>
    %235 = llvm.add %225, %224  : i64
    llvm.br ^bb29(%235 : i64)
  ^bb31:  // pred: ^bb29
    %236 = llvm.add %220, %219  : i64
    llvm.br ^bb27(%236 : i64)
  ^bb32:  // pred: ^bb27
    %237 = llvm.add %215, %214  : i64
    llvm.br ^bb25(%237 : i64)
  ^bb33:  // pred: ^bb25
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%238 : i64)
  ^bb34(%241: i64):  // 2 preds: ^bb33, ^bb44
    %242 = llvm.icmp "slt" %241, %239 : i64
    llvm.cond_br %242, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %243 = llvm.mlir.constant(0 : index) : i64
    %244 = llvm.mlir.constant(2 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%243 : i64)
  ^bb36(%246: i64):  // 2 preds: ^bb35, ^bb43
    %247 = llvm.icmp "slt" %246, %244 : i64
    llvm.cond_br %247, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.mlir.constant(2 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%248 : i64)
  ^bb38(%251: i64):  // 2 preds: ^bb37, ^bb42
    %252 = llvm.icmp "slt" %251, %249 : i64
    llvm.cond_br %252, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.mlir.constant(2 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%253 : i64)
  ^bb40(%256: i64):  // 2 preds: ^bb39, ^bb41
    %257 = llvm.icmp "slt" %256, %254 : i64
    llvm.cond_br %257, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %258 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.mlir.constant(8 : index) : i64
    %260 = llvm.mul %241, %259  : i64
    %261 = llvm.mlir.constant(4 : index) : i64
    %262 = llvm.mul %246, %261  : i64
    %263 = llvm.add %260, %262  : i64
    %264 = llvm.mlir.constant(2 : index) : i64
    %265 = llvm.mul %251, %264  : i64
    %266 = llvm.add %263, %265  : i64
    %267 = llvm.add %266, %256  : i64
    %268 = llvm.getelementptr %258[%267] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %269 = llvm.load %268 : !llvm.ptr<i32>
    %270 = llvm.extractvalue %211[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %271 = llvm.mlir.constant(4 : index) : i64
    %272 = llvm.mul %241, %271  : i64
    %273 = llvm.mlir.constant(2 : index) : i64
    %274 = llvm.mul %246, %273  : i64
    %275 = llvm.add %272, %274  : i64
    %276 = llvm.add %275, %251  : i64
    %277 = llvm.getelementptr %270[%276] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %278 = llvm.load %277 : !llvm.ptr<i64>
    %279 = llvm.icmp "slt" %278, %12 : i64
    %280 = llvm.select %279, %12, %278 : i1, i64
    %281 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.mlir.constant(8 : index) : i64
    %283 = llvm.mul %241, %282  : i64
    %284 = llvm.mlir.constant(4 : index) : i64
    %285 = llvm.mul %246, %284  : i64
    %286 = llvm.add %283, %285  : i64
    %287 = llvm.mlir.constant(2 : index) : i64
    %288 = llvm.mul %251, %287  : i64
    %289 = llvm.add %286, %288  : i64
    %290 = llvm.add %289, %280  : i64
    %291 = llvm.getelementptr %281[%290] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %292 = llvm.load %291 : !llvm.ptr<i32>
    %293 = llvm.icmp "slt" %269, %292 : i32
    %294 = llvm.select %293, %256, %280 : i1, i64
    %295 = llvm.extractvalue %211[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %296 = llvm.mlir.constant(4 : index) : i64
    %297 = llvm.mul %241, %296  : i64
    %298 = llvm.mlir.constant(2 : index) : i64
    %299 = llvm.mul %246, %298  : i64
    %300 = llvm.add %297, %299  : i64
    %301 = llvm.add %300, %251  : i64
    %302 = llvm.getelementptr %295[%301] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %294, %302 : !llvm.ptr<i64>
    %303 = llvm.add %256, %255  : i64
    llvm.br ^bb40(%303 : i64)
  ^bb42:  // pred: ^bb40
    %304 = llvm.add %251, %250  : i64
    llvm.br ^bb38(%304 : i64)
  ^bb43:  // pred: ^bb38
    %305 = llvm.add %246, %245  : i64
    llvm.br ^bb36(%305 : i64)
  ^bb44:  // pred: ^bb36
    %306 = llvm.add %241, %240  : i64
    llvm.br ^bb34(%306 : i64)
  ^bb45:  // pred: ^bb34
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.constant(2 : index) : i64
    %309 = llvm.mlir.constant(2 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.mlir.constant(4 : index) : i64
    %312 = llvm.mlir.constant(4 : index) : i64
    %313 = llvm.mlir.null : !llvm.ptr<i64>
    %314 = llvm.getelementptr %313[%312] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %315 = llvm.ptrtoint %314 : !llvm.ptr<i64> to i64
    %316 = llvm.mlir.constant(16 : index) : i64
    %317 = llvm.add %315, %316  : i64
    %318 = llvm.call @malloc(%317) : (i64) -> !llvm.ptr<i8>
    %319 = llvm.bitcast %318 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %320 = llvm.ptrtoint %319 : !llvm.ptr<i64> to i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.sub %316, %321  : i64
    %323 = llvm.add %320, %322  : i64
    %324 = llvm.urem %323, %316  : i64
    %325 = llvm.sub %323, %324  : i64
    %326 = llvm.inttoptr %325 : i64 to !llvm.ptr<i64>
    %327 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %328 = llvm.insertvalue %319, %327[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %329 = llvm.insertvalue %326, %328[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %330 = llvm.mlir.constant(0 : index) : i64
    %331 = llvm.insertvalue %330, %329[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %332 = llvm.insertvalue %307, %331[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %333 = llvm.insertvalue %308, %332[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %334 = llvm.insertvalue %309, %333[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %335 = llvm.insertvalue %311, %334[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %336 = llvm.insertvalue %309, %335[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %337 = llvm.insertvalue %310, %336[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %338 = llvm.mlir.constant(1 : index) : i64
    %339 = llvm.mlir.null : !llvm.ptr<i64>
    %340 = llvm.getelementptr %339[%338] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %341 = llvm.ptrtoint %340 : !llvm.ptr<i64> to i64
    %342 = llvm.alloca %341 x i64 : (i64) -> !llvm.ptr<i64>
    %343 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %344 = llvm.insertvalue %342, %343[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %345 = llvm.insertvalue %342, %344[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.insertvalue %346, %345[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %348 = llvm.mlir.constant(0 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%348 : i64)
  ^bb46(%351: i64):  // 2 preds: ^bb45, ^bb56
    %352 = llvm.icmp "slt" %351, %349 : i64
    llvm.cond_br %352, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.mlir.constant(2 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%353 : i64)
  ^bb48(%356: i64):  // 2 preds: ^bb47, ^bb55
    %357 = llvm.icmp "slt" %356, %354 : i64
    llvm.cond_br %357, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.mlir.constant(2 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%358 : i64)
  ^bb50(%361: i64):  // 2 preds: ^bb49, ^bb54
    %362 = llvm.icmp "slt" %361, %359 : i64
    llvm.cond_br %362, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %363 = llvm.extractvalue %347[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    llvm.store %12, %363 : !llvm.ptr<i64>
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.mlir.constant(2 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%364 : i64)
  ^bb52(%367: i64):  // 2 preds: ^bb51, ^bb53
    %368 = llvm.icmp "slt" %367, %365 : i64
    llvm.cond_br %368, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %369 = llvm.extractvalue %211[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %370 = llvm.mlir.constant(4 : index) : i64
    %371 = llvm.mul %351, %370  : i64
    %372 = llvm.mlir.constant(2 : index) : i64
    %373 = llvm.mul %356, %372  : i64
    %374 = llvm.add %371, %373  : i64
    %375 = llvm.add %374, %367  : i64
    %376 = llvm.getelementptr %369[%375] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %377 = llvm.load %376 : !llvm.ptr<i64>
    %378 = llvm.extractvalue %211[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %379 = llvm.mlir.constant(4 : index) : i64
    %380 = llvm.mul %351, %379  : i64
    %381 = llvm.mlir.constant(2 : index) : i64
    %382 = llvm.mul %367, %381  : i64
    %383 = llvm.add %380, %382  : i64
    %384 = llvm.add %383, %361  : i64
    %385 = llvm.getelementptr %378[%384] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %386 = llvm.load %385 : !llvm.ptr<i64>
    %387 = llvm.extractvalue %347[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %388 = llvm.load %387 : !llvm.ptr<i64>
    %389 = llvm.mul %377, %386  : i64
    %390 = llvm.add %388, %389  : i64
    %391 = llvm.extractvalue %347[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    llvm.store %390, %391 : !llvm.ptr<i64>
    %392 = llvm.add %367, %366  : i64
    llvm.br ^bb52(%392 : i64)
  ^bb54:  // pred: ^bb52
    %393 = llvm.extractvalue %347[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %394 = llvm.load %393 : !llvm.ptr<i64>
    %395 = llvm.extractvalue %337[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %396 = llvm.mlir.constant(4 : index) : i64
    %397 = llvm.mul %351, %396  : i64
    %398 = llvm.mlir.constant(2 : index) : i64
    %399 = llvm.mul %356, %398  : i64
    %400 = llvm.add %397, %399  : i64
    %401 = llvm.add %400, %361  : i64
    %402 = llvm.getelementptr %395[%401] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %394, %402 : !llvm.ptr<i64>
    %403 = llvm.add %361, %360  : i64
    llvm.br ^bb50(%403 : i64)
  ^bb55:  // pred: ^bb50
    %404 = llvm.add %356, %355  : i64
    llvm.br ^bb48(%404 : i64)
  ^bb56:  // pred: ^bb48
    %405 = llvm.add %351, %350  : i64
    llvm.br ^bb46(%405 : i64)
  ^bb57:  // pred: ^bb46
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.mlir.constant(2 : index) : i64
    %408 = llvm.mlir.constant(2 : index) : i64
    %409 = llvm.mlir.constant(2 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    %411 = llvm.mlir.constant(4 : index) : i64
    %412 = llvm.mlir.constant(8 : index) : i64
    %413 = llvm.mlir.constant(8 : index) : i64
    %414 = llvm.mlir.null : !llvm.ptr<i64>
    %415 = llvm.getelementptr %414[%413] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %416 = llvm.ptrtoint %415 : !llvm.ptr<i64> to i64
    %417 = llvm.mlir.constant(16 : index) : i64
    %418 = llvm.add %416, %417  : i64
    %419 = llvm.call @malloc(%418) : (i64) -> !llvm.ptr<i8>
    %420 = llvm.bitcast %419 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %421 = llvm.ptrtoint %420 : !llvm.ptr<i64> to i64
    %422 = llvm.mlir.constant(1 : index) : i64
    %423 = llvm.sub %417, %422  : i64
    %424 = llvm.add %421, %423  : i64
    %425 = llvm.urem %424, %417  : i64
    %426 = llvm.sub %424, %425  : i64
    %427 = llvm.inttoptr %426 : i64 to !llvm.ptr<i64>
    %428 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %429 = llvm.insertvalue %420, %428[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.insertvalue %427, %429[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.mlir.constant(0 : index) : i64
    %432 = llvm.insertvalue %431, %430[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.insertvalue %406, %432[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.insertvalue %407, %433[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %408, %434[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.insertvalue %409, %435[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.insertvalue %412, %436[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %411, %437[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %409, %438[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.insertvalue %410, %439[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.mlir.constant(0 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%441 : i64)
  ^bb58(%444: i64):  // 2 preds: ^bb57, ^bb68
    %445 = llvm.icmp "slt" %444, %442 : i64
    llvm.cond_br %445, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.mlir.constant(2 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%446 : i64)
  ^bb60(%449: i64):  // 2 preds: ^bb59, ^bb67
    %450 = llvm.icmp "slt" %449, %447 : i64
    llvm.cond_br %450, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.mlir.constant(2 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%451 : i64)
  ^bb62(%454: i64):  // 2 preds: ^bb61, ^bb66
    %455 = llvm.icmp "slt" %454, %452 : i64
    llvm.cond_br %455, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.mlir.constant(2 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%456 : i64)
  ^bb64(%459: i64):  // 2 preds: ^bb63, ^bb65
    %460 = llvm.icmp "slt" %459, %457 : i64
    llvm.cond_br %460, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %461 = llvm.extractvalue %132[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.mlir.constant(8 : index) : i64
    %463 = llvm.mul %444, %462  : i64
    %464 = llvm.mlir.constant(4 : index) : i64
    %465 = llvm.mul %449, %464  : i64
    %466 = llvm.add %463, %465  : i64
    %467 = llvm.mlir.constant(2 : index) : i64
    %468 = llvm.mul %454, %467  : i64
    %469 = llvm.add %466, %468  : i64
    %470 = llvm.add %469, %459  : i64
    %471 = llvm.getelementptr %461[%470] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %472 = llvm.load %471 : !llvm.ptr<i1>
    %473 = llvm.extractvalue %211[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %474 = llvm.mlir.constant(4 : index) : i64
    %475 = llvm.mul %15, %474  : i64
    %476 = llvm.mlir.constant(2 : index) : i64
    %477 = llvm.mul %454, %476  : i64
    %478 = llvm.add %475, %477  : i64
    %479 = llvm.add %478, %459  : i64
    %480 = llvm.getelementptr %473[%479] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %481 = llvm.load %480 : !llvm.ptr<i64>
    %482 = llvm.extractvalue %337[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %483 = llvm.mlir.constant(4 : index) : i64
    %484 = llvm.mul %15, %483  : i64
    %485 = llvm.mlir.constant(2 : index) : i64
    %486 = llvm.mul %454, %485  : i64
    %487 = llvm.add %484, %486  : i64
    %488 = llvm.add %487, %459  : i64
    %489 = llvm.getelementptr %482[%488] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %490 = llvm.load %489 : !llvm.ptr<i64>
    %491 = llvm.select %472, %481, %490 : i1, i64
    %492 = llvm.extractvalue %440[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.mlir.constant(8 : index) : i64
    %494 = llvm.mul %444, %493  : i64
    %495 = llvm.mlir.constant(4 : index) : i64
    %496 = llvm.mul %449, %495  : i64
    %497 = llvm.add %494, %496  : i64
    %498 = llvm.mlir.constant(2 : index) : i64
    %499 = llvm.mul %454, %498  : i64
    %500 = llvm.add %497, %499  : i64
    %501 = llvm.add %500, %459  : i64
    %502 = llvm.getelementptr %492[%501] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %491, %502 : !llvm.ptr<i64>
    %503 = llvm.add %459, %458  : i64
    llvm.br ^bb64(%503 : i64)
  ^bb66:  // pred: ^bb64
    %504 = llvm.add %454, %453  : i64
    llvm.br ^bb62(%504 : i64)
  ^bb67:  // pred: ^bb62
    %505 = llvm.add %449, %448  : i64
    llvm.br ^bb60(%505 : i64)
  ^bb68:  // pred: ^bb60
    %506 = llvm.add %444, %443  : i64
    llvm.br ^bb58(%506 : i64)
  ^bb69:  // pred: ^bb58
    llvm.return %440 : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.mlir.constant(8 : i64) : i64
    %47 = llvm.call @malloc(%46) : (i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %49 = llvm.mlir.constant(4 : i64) : i64
    %50 = llvm.call @omTensorCreateUntyped(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.extractvalue %44[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.bitcast %52 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %54 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%50, %51, %53, %55) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %56 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%50, %56) : (!llvm.ptr<i8>, i64) -> ()
    %57 = llvm.call @omTensorGetShape(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %58 = llvm.call @omTensorGetStrides(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %59 = llvm.mlir.constant(0 : i64) : i64
    %60 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %57[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %58[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %44[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %57[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.extractvalue %44[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %58[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.mlir.constant(2 : i64) : i64
    %70 = llvm.extractvalue %44[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %57[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %44[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %58[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(3 : i64) : i64
    %75 = llvm.extractvalue %44[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %57[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %44[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %58[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(0 : i64) : i64
    %80 = llvm.getelementptr %48[%79] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %50, %80 : !llvm.ptr<ptr<i8>>
    %81 = llvm.call @omTensorListCreate(%48, %45, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %81 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

