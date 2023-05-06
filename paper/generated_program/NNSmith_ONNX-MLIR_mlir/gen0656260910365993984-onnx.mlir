module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4 , 2] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 4 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<[1, 1, 4, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<[1, 1, 4, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v2_0"]} {
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
    %13 = llvm.mlir.constant(1 : i64) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(3 : index) : i64
    %17 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %18 = llvm.bitcast %17 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %19 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(4 : index) : i64
    %25 = llvm.insertvalue %24, %23[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %35 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(4 : index) : i64
    %43 = llvm.insertvalue %42, %41[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.insertvalue %44, %43[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(4 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(4 : index) : i64
    %52 = llvm.mlir.constant(4 : index) : i64
    %53 = llvm.mlir.null : !llvm.ptr<i32>
    %54 = llvm.getelementptr %53[%52] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %55 = llvm.ptrtoint %54 : !llvm.ptr<i32> to i64
    %56 = llvm.mlir.constant(16 : index) : i64
    %57 = llvm.add %55, %56  : i64
    %58 = llvm.call @malloc(%57) : (i64) -> !llvm.ptr<i8>
    %59 = llvm.bitcast %58 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %60 = llvm.ptrtoint %59 : !llvm.ptr<i32> to i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.sub %56, %61  : i64
    %63 = llvm.add %60, %62  : i64
    %64 = llvm.urem %63, %56  : i64
    %65 = llvm.sub %63, %64  : i64
    %66 = llvm.inttoptr %65 : i64 to !llvm.ptr<i32>
    %67 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %68 = llvm.insertvalue %59, %67[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %46, %71[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %47, %72[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %48, %73[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %49, %74[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %51, %75[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %48, %76[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %49, %77[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %50, %78[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%80 : i64)
  ^bb1(%83: i64):  // 2 preds: ^bb0, ^bb11
    %84 = llvm.icmp "slt" %83, %81 : i64
    llvm.cond_br %84, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%85 : i64)
  ^bb3(%88: i64):  // 2 preds: ^bb2, ^bb10
    %89 = llvm.icmp "slt" %88, %86 : i64
    llvm.cond_br %89, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.mlir.constant(4 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%90 : i64)
  ^bb5(%93: i64):  // 2 preds: ^bb4, ^bb9
    %94 = llvm.icmp "slt" %93, %91 : i64
    llvm.cond_br %94, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%95 : i64)
  ^bb7(%98: i64):  // 2 preds: ^bb6, ^bb8
    %99 = llvm.icmp "slt" %98, %96 : i64
    llvm.cond_br %99, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.mul %98, %100  : i64
    %102 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.constant(8 : index) : i64
    %104 = llvm.mul %83, %103  : i64
    %105 = llvm.mlir.constant(8 : index) : i64
    %106 = llvm.mul %88, %105  : i64
    %107 = llvm.add %104, %106  : i64
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mul %93, %108  : i64
    %110 = llvm.add %107, %109  : i64
    %111 = llvm.add %110, %101  : i64
    %112 = llvm.getelementptr %102[%111] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %113 = llvm.load %112 : !llvm.ptr<i32>
    %114 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.mlir.constant(4 : index) : i64
    %116 = llvm.mul %83, %115  : i64
    %117 = llvm.mlir.constant(4 : index) : i64
    %118 = llvm.mul %88, %117  : i64
    %119 = llvm.add %116, %118  : i64
    %120 = llvm.add %119, %93  : i64
    %121 = llvm.add %120, %98  : i64
    %122 = llvm.getelementptr %114[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %113, %122 : !llvm.ptr<i32>
    %123 = llvm.add %98, %97  : i64
    llvm.br ^bb7(%123 : i64)
  ^bb9:  // pred: ^bb7
    %124 = llvm.add %93, %92  : i64
    llvm.br ^bb5(%124 : i64)
  ^bb10:  // pred: ^bb5
    %125 = llvm.add %88, %87  : i64
    llvm.br ^bb3(%125 : i64)
  ^bb11:  // pred: ^bb3
    %126 = llvm.add %83, %82  : i64
    llvm.br ^bb1(%126 : i64)
  ^bb12:  // pred: ^bb1
    %127 = llvm.mlir.constant(4 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.null : !llvm.ptr<i64>
    %130 = llvm.getelementptr %129[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %131 = llvm.ptrtoint %130 : !llvm.ptr<i64> to i64
    %132 = llvm.mlir.constant(16 : index) : i64
    %133 = llvm.add %131, %132  : i64
    %134 = llvm.call @malloc(%133) : (i64) -> !llvm.ptr<i8>
    %135 = llvm.bitcast %134 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %136 = llvm.ptrtoint %135 : !llvm.ptr<i64> to i64
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.sub %132, %137  : i64
    %139 = llvm.add %136, %138  : i64
    %140 = llvm.urem %139, %132  : i64
    %141 = llvm.sub %139, %140  : i64
    %142 = llvm.inttoptr %141 : i64 to !llvm.ptr<i64>
    %143 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %144 = llvm.insertvalue %135, %143[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %145 = llvm.insertvalue %142, %144[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.insertvalue %146, %145[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.insertvalue %127, %147[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.insertvalue %128, %148[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.mlir.constant(0 : index) : i64
    %151 = llvm.mlir.constant(4 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%150 : i64)
  ^bb13(%153: i64):  // 2 preds: ^bb12, ^bb14
    %154 = llvm.icmp "slt" %153, %151 : i64
    llvm.cond_br %154, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %155 = llvm.extractvalue %149[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.getelementptr %155[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %156 : !llvm.ptr<i64>
    %157 = llvm.add %153, %152  : i64
    llvm.br ^bb13(%157 : i64)
  ^bb15:  // pred: ^bb13
    %158 = llvm.mlir.constant(4 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.mlir.null : !llvm.ptr<i64>
    %161 = llvm.getelementptr %160[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %162 = llvm.ptrtoint %161 : !llvm.ptr<i64> to i64
    %163 = llvm.mlir.constant(16 : index) : i64
    %164 = llvm.add %162, %163  : i64
    %165 = llvm.call @malloc(%164) : (i64) -> !llvm.ptr<i8>
    %166 = llvm.bitcast %165 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %167 = llvm.ptrtoint %166 : !llvm.ptr<i64> to i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.sub %163, %168  : i64
    %170 = llvm.add %167, %169  : i64
    %171 = llvm.urem %170, %163  : i64
    %172 = llvm.sub %170, %171  : i64
    %173 = llvm.inttoptr %172 : i64 to !llvm.ptr<i64>
    %174 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %175 = llvm.insertvalue %166, %174[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.insertvalue %173, %175[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.insertvalue %177, %176[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.insertvalue %158, %178[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.insertvalue %159, %179[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.mlir.constant(0 : index) : i64
    %182 = llvm.mlir.constant(4 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%181 : i64)
  ^bb16(%184: i64):  // 2 preds: ^bb15, ^bb17
    %185 = llvm.icmp "slt" %184, %182 : i64
    llvm.cond_br %185, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %186 = llvm.extractvalue %149[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %187 = llvm.getelementptr %186[%184] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %188 = llvm.load %187 : !llvm.ptr<i64>
    %189 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %190 = llvm.load %189 : !llvm.ptr<i64>
    %191 = llvm.mul %188, %190  : i64
    %192 = llvm.extractvalue %180[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %193 = llvm.getelementptr %192[%184] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %191, %193 : !llvm.ptr<i64>
    %194 = llvm.add %184, %183  : i64
    llvm.br ^bb16(%194 : i64)
  ^bb18:  // pred: ^bb16
    %195 = llvm.mlir.constant(4 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.null : !llvm.ptr<i1>
    %198 = llvm.getelementptr %197[%195] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %199 = llvm.ptrtoint %198 : !llvm.ptr<i1> to i64
    %200 = llvm.mlir.constant(16 : index) : i64
    %201 = llvm.add %199, %200  : i64
    %202 = llvm.call @malloc(%201) : (i64) -> !llvm.ptr<i8>
    %203 = llvm.bitcast %202 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %204 = llvm.ptrtoint %203 : !llvm.ptr<i1> to i64
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.sub %200, %205  : i64
    %207 = llvm.add %204, %206  : i64
    %208 = llvm.urem %207, %200  : i64
    %209 = llvm.sub %207, %208  : i64
    %210 = llvm.inttoptr %209 : i64 to !llvm.ptr<i1>
    %211 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %212 = llvm.insertvalue %203, %211[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.insertvalue %210, %212[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.insertvalue %214, %213[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.insertvalue %195, %215[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.insertvalue %196, %216[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.mlir.constant(4 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%218 : i64)
  ^bb19(%221: i64):  // 2 preds: ^bb18, ^bb20
    %222 = llvm.icmp "slt" %221, %219 : i64
    llvm.cond_br %222, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %223 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %224 = llvm.getelementptr %223[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %225 = llvm.load %224 : !llvm.ptr<i64>
    %226 = llvm.extractvalue %180[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %227 = llvm.getelementptr %226[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %228 = llvm.load %227 : !llvm.ptr<i64>
    %229 = llvm.icmp "eq" %225, %228 : i64
    %230 = llvm.extractvalue %217[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %231 = llvm.getelementptr %230[%221] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %229, %231 : !llvm.ptr<i1>
    %232 = llvm.add %221, %220  : i64
    llvm.br ^bb19(%232 : i64)
  ^bb21:  // pred: ^bb19
    %233 = llvm.mlir.constant(4 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.null : !llvm.ptr<i64>
    %236 = llvm.getelementptr %235[%233] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %237 = llvm.ptrtoint %236 : !llvm.ptr<i64> to i64
    %238 = llvm.mlir.constant(16 : index) : i64
    %239 = llvm.add %237, %238  : i64
    %240 = llvm.call @malloc(%239) : (i64) -> !llvm.ptr<i8>
    %241 = llvm.bitcast %240 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %242 = llvm.ptrtoint %241 : !llvm.ptr<i64> to i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.sub %238, %243  : i64
    %245 = llvm.add %242, %244  : i64
    %246 = llvm.urem %245, %238  : i64
    %247 = llvm.sub %245, %246  : i64
    %248 = llvm.inttoptr %247 : i64 to !llvm.ptr<i64>
    %249 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %250 = llvm.insertvalue %241, %249[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.insertvalue %248, %250[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.insertvalue %252, %251[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.insertvalue %233, %253[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.insertvalue %234, %254[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.mlir.constant(4 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%256 : i64)
  ^bb22(%259: i64):  // 2 preds: ^bb21, ^bb23
    %260 = llvm.icmp "slt" %259, %257 : i64
    llvm.cond_br %260, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %261 = llvm.extractvalue %217[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.getelementptr %261[%259] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %263 = llvm.load %262 : !llvm.ptr<i1>
    %264 = llvm.extractvalue %149[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.getelementptr %264[%259] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %266 = llvm.load %265 : !llvm.ptr<i64>
    %267 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %268 = llvm.getelementptr %267[%259] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %269 = llvm.load %268 : !llvm.ptr<i64>
    %270 = llvm.select %263, %266, %269 : i1, i64
    %271 = llvm.extractvalue %255[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %272 = llvm.getelementptr %271[%259] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %270, %272 : !llvm.ptr<i64>
    %273 = llvm.add %259, %258  : i64
    llvm.br ^bb22(%273 : i64)
  ^bb24:  // pred: ^bb22
    %274 = llvm.extractvalue %255[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %275 = llvm.getelementptr %274[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %276 = llvm.load %275 : !llvm.ptr<i64>
    %277 = llvm.extractvalue %255[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %278 = llvm.getelementptr %277[%14] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %279 = llvm.load %278 : !llvm.ptr<i64>
    %280 = llvm.extractvalue %255[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %281 = llvm.getelementptr %280[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %282 = llvm.load %281 : !llvm.ptr<i64>
    %283 = llvm.mlir.constant(4 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mul %282, %283  : i64
    %286 = llvm.mul %285, %279  : i64
    %287 = llvm.mul %286, %276  : i64
    %288 = llvm.mlir.null : !llvm.ptr<i32>
    %289 = llvm.getelementptr %288[%287] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %290 = llvm.ptrtoint %289 : !llvm.ptr<i32> to i64
    %291 = llvm.mlir.constant(16 : index) : i64
    %292 = llvm.add %290, %291  : i64
    %293 = llvm.call @malloc(%292) : (i64) -> !llvm.ptr<i8>
    %294 = llvm.bitcast %293 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %295 = llvm.ptrtoint %294 : !llvm.ptr<i32> to i64
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.sub %291, %296  : i64
    %298 = llvm.add %295, %297  : i64
    %299 = llvm.urem %298, %291  : i64
    %300 = llvm.sub %298, %299  : i64
    %301 = llvm.inttoptr %300 : i64 to !llvm.ptr<i32>
    %302 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %303 = llvm.insertvalue %294, %302[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.insertvalue %301, %303[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.insertvalue %305, %304[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.insertvalue %276, %306[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.insertvalue %279, %307[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.insertvalue %283, %308[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.insertvalue %282, %309[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.insertvalue %286, %310[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %285, %311[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.insertvalue %282, %312[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.insertvalue %284, %313[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%315 : i64)
  ^bb25(%317: i64):  // 2 preds: ^bb24, ^bb35
    %318 = llvm.icmp "slt" %317, %276 : i64
    llvm.cond_br %318, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%319 : i64)
  ^bb27(%321: i64):  // 2 preds: ^bb26, ^bb34
    %322 = llvm.icmp "slt" %321, %279 : i64
    llvm.cond_br %322, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.mlir.constant(4 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%323 : i64)
  ^bb29(%326: i64):  // 2 preds: ^bb28, ^bb33
    %327 = llvm.icmp "slt" %326, %324 : i64
    llvm.cond_br %327, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %328 = llvm.mlir.constant(0 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%328 : i64)
  ^bb31(%330: i64):  // 2 preds: ^bb30, ^bb32
    %331 = llvm.icmp "slt" %330, %282 : i64
    llvm.cond_br %331, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %332 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.mlir.constant(4 : index) : i64
    %334 = llvm.mul %15, %333  : i64
    %335 = llvm.mlir.constant(4 : index) : i64
    %336 = llvm.mul %15, %335  : i64
    %337 = llvm.add %334, %336  : i64
    %338 = llvm.add %337, %326  : i64
    %339 = llvm.add %338, %15  : i64
    %340 = llvm.getelementptr %332[%339] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %341 = llvm.load %340 : !llvm.ptr<i32>
    %342 = llvm.extractvalue %314[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.extractvalue %314[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.mul %317, %343  : i64
    %345 = llvm.extractvalue %314[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.mul %321, %345  : i64
    %347 = llvm.add %344, %346  : i64
    %348 = llvm.extractvalue %314[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.mul %326, %348  : i64
    %350 = llvm.add %347, %349  : i64
    %351 = llvm.add %350, %330  : i64
    %352 = llvm.getelementptr %342[%351] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %341, %352 : !llvm.ptr<i32>
    %353 = llvm.add %330, %329  : i64
    llvm.br ^bb31(%353 : i64)
  ^bb33:  // pred: ^bb31
    %354 = llvm.add %326, %325  : i64
    llvm.br ^bb29(%354 : i64)
  ^bb34:  // pred: ^bb29
    %355 = llvm.add %321, %320  : i64
    llvm.br ^bb27(%355 : i64)
  ^bb35:  // pred: ^bb27
    %356 = llvm.add %317, %316  : i64
    llvm.br ^bb25(%356 : i64)
  ^bb36:  // pred: ^bb25
    %357 = llvm.mlir.constant(4 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    %359 = llvm.mul %282, %357  : i64
    %360 = llvm.mul %359, %279  : i64
    %361 = llvm.mul %360, %276  : i64
    %362 = llvm.mlir.null : !llvm.ptr<i32>
    %363 = llvm.getelementptr %362[%361] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %364 = llvm.ptrtoint %363 : !llvm.ptr<i32> to i64
    %365 = llvm.mlir.constant(16 : index) : i64
    %366 = llvm.add %364, %365  : i64
    %367 = llvm.call @malloc(%366) : (i64) -> !llvm.ptr<i8>
    %368 = llvm.bitcast %367 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %369 = llvm.ptrtoint %368 : !llvm.ptr<i32> to i64
    %370 = llvm.mlir.constant(1 : index) : i64
    %371 = llvm.sub %365, %370  : i64
    %372 = llvm.add %369, %371  : i64
    %373 = llvm.urem %372, %365  : i64
    %374 = llvm.sub %372, %373  : i64
    %375 = llvm.inttoptr %374 : i64 to !llvm.ptr<i32>
    %376 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %377 = llvm.insertvalue %368, %376[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.insertvalue %375, %377[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.insertvalue %379, %378[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.insertvalue %276, %380[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.insertvalue %279, %381[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.insertvalue %357, %382[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.insertvalue %282, %383[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.insertvalue %360, %384[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.insertvalue %359, %385[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.insertvalue %282, %386[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.insertvalue %358, %387[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%389 : i64)
  ^bb37(%391: i64):  // 2 preds: ^bb36, ^bb47
    %392 = llvm.icmp "slt" %391, %276 : i64
    llvm.cond_br %392, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %393 = llvm.mlir.constant(0 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%393 : i64)
  ^bb39(%395: i64):  // 2 preds: ^bb38, ^bb46
    %396 = llvm.icmp "slt" %395, %279 : i64
    llvm.cond_br %396, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.mlir.constant(4 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%397 : i64)
  ^bb41(%400: i64):  // 2 preds: ^bb40, ^bb45
    %401 = llvm.icmp "slt" %400, %398 : i64
    llvm.cond_br %401, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%402 : i64)
  ^bb43(%404: i64):  // 2 preds: ^bb42, ^bb44
    %405 = llvm.icmp "slt" %404, %282 : i64
    llvm.cond_br %405, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %406 = llvm.extractvalue %314[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.extractvalue %314[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.mul %391, %407  : i64
    %409 = llvm.extractvalue %314[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.mul %395, %409  : i64
    %411 = llvm.add %408, %410  : i64
    %412 = llvm.extractvalue %314[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.mul %400, %412  : i64
    %414 = llvm.add %411, %413  : i64
    %415 = llvm.add %414, %404  : i64
    %416 = llvm.getelementptr %406[%415] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %417 = llvm.load %416 : !llvm.ptr<i32>
    %418 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.mlir.constant(4 : index) : i64
    %420 = llvm.mul %15, %419  : i64
    %421 = llvm.mlir.constant(4 : index) : i64
    %422 = llvm.mul %15, %421  : i64
    %423 = llvm.add %420, %422  : i64
    %424 = llvm.add %423, %400  : i64
    %425 = llvm.add %424, %15  : i64
    %426 = llvm.getelementptr %418[%425] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %427 = llvm.load %426 : !llvm.ptr<i32>
    %428 = llvm.icmp "slt" %417, %427 : i32
    %429 = llvm.select %428, %417, %427 : i1, i32
    %430 = llvm.extractvalue %388[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.extractvalue %388[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.mul %391, %431  : i64
    %433 = llvm.extractvalue %388[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.mul %395, %433  : i64
    %435 = llvm.add %432, %434  : i64
    %436 = llvm.extractvalue %388[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.mul %400, %436  : i64
    %438 = llvm.add %435, %437  : i64
    %439 = llvm.add %438, %404  : i64
    %440 = llvm.getelementptr %430[%439] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %429, %440 : !llvm.ptr<i32>
    %441 = llvm.add %404, %403  : i64
    llvm.br ^bb43(%441 : i64)
  ^bb45:  // pred: ^bb43
    %442 = llvm.add %400, %399  : i64
    llvm.br ^bb41(%442 : i64)
  ^bb46:  // pred: ^bb41
    %443 = llvm.add %395, %394  : i64
    llvm.br ^bb39(%443 : i64)
  ^bb47:  // pred: ^bb39
    %444 = llvm.add %391, %390  : i64
    llvm.br ^bb37(%444 : i64)
  ^bb48:  // pred: ^bb37
    %445 = llvm.mlir.constant(4 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.mul %282, %445  : i64
    %448 = llvm.mul %447, %279  : i64
    %449 = llvm.mul %448, %276  : i64
    %450 = llvm.mlir.null : !llvm.ptr<i64>
    %451 = llvm.getelementptr %450[%449] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %452 = llvm.ptrtoint %451 : !llvm.ptr<i64> to i64
    %453 = llvm.mlir.constant(16 : index) : i64
    %454 = llvm.add %452, %453  : i64
    %455 = llvm.call @malloc(%454) : (i64) -> !llvm.ptr<i8>
    %456 = llvm.bitcast %455 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %457 = llvm.ptrtoint %456 : !llvm.ptr<i64> to i64
    %458 = llvm.mlir.constant(1 : index) : i64
    %459 = llvm.sub %453, %458  : i64
    %460 = llvm.add %457, %459  : i64
    %461 = llvm.urem %460, %453  : i64
    %462 = llvm.sub %460, %461  : i64
    %463 = llvm.inttoptr %462 : i64 to !llvm.ptr<i64>
    %464 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %465 = llvm.insertvalue %456, %464[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.insertvalue %463, %465[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.mlir.constant(0 : index) : i64
    %468 = llvm.insertvalue %467, %466[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.insertvalue %276, %468[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.insertvalue %279, %469[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.insertvalue %445, %470[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.insertvalue %282, %471[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.insertvalue %448, %472[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %447, %473[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %282, %474[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %446, %475[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%477 : i64)
  ^bb49(%479: i64):  // 2 preds: ^bb48, ^bb59
    %480 = llvm.icmp "slt" %479, %276 : i64
    llvm.cond_br %480, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %481 = llvm.mlir.constant(0 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%481 : i64)
  ^bb51(%483: i64):  // 2 preds: ^bb50, ^bb58
    %484 = llvm.icmp "slt" %483, %279 : i64
    llvm.cond_br %484, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %485 = llvm.mlir.constant(0 : index) : i64
    %486 = llvm.mlir.constant(4 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%485 : i64)
  ^bb53(%488: i64):  // 2 preds: ^bb52, ^bb57
    %489 = llvm.icmp "slt" %488, %486 : i64
    llvm.cond_br %489, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %490 = llvm.mlir.constant(0 : index) : i64
    %491 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%490 : i64)
  ^bb55(%492: i64):  // 2 preds: ^bb54, ^bb56
    %493 = llvm.icmp "slt" %492, %282 : i64
    llvm.cond_br %493, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %494 = llvm.extractvalue %388[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %495 = llvm.extractvalue %388[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %496 = llvm.mul %479, %495  : i64
    %497 = llvm.extractvalue %388[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.mul %483, %497  : i64
    %499 = llvm.add %496, %498  : i64
    %500 = llvm.extractvalue %388[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %501 = llvm.mul %488, %500  : i64
    %502 = llvm.add %499, %501  : i64
    %503 = llvm.add %502, %492  : i64
    %504 = llvm.getelementptr %494[%503] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %505 = llvm.load %504 : !llvm.ptr<i32>
    %506 = llvm.sext %505 : i32 to i64
    %507 = llvm.extractvalue %476[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.extractvalue %476[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %509 = llvm.mul %479, %508  : i64
    %510 = llvm.extractvalue %476[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.mul %483, %510  : i64
    %512 = llvm.add %509, %511  : i64
    %513 = llvm.extractvalue %476[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %514 = llvm.mul %488, %513  : i64
    %515 = llvm.add %512, %514  : i64
    %516 = llvm.add %515, %492  : i64
    %517 = llvm.getelementptr %507[%516] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %506, %517 : !llvm.ptr<i64>
    %518 = llvm.add %492, %491  : i64
    llvm.br ^bb55(%518 : i64)
  ^bb57:  // pred: ^bb55
    %519 = llvm.add %488, %487  : i64
    llvm.br ^bb53(%519 : i64)
  ^bb58:  // pred: ^bb53
    %520 = llvm.add %483, %482  : i64
    llvm.br ^bb51(%520 : i64)
  ^bb59:  // pred: ^bb51
    %521 = llvm.add %479, %478  : i64
    llvm.br ^bb49(%521 : i64)
  ^bb60:  // pred: ^bb49
    %522 = llvm.mlir.constant(1 : index) : i64
    %523 = llvm.mlir.constant(4 : index) : i64
    %524 = llvm.mlir.constant(1 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    %526 = llvm.mlir.constant(4 : index) : i64
    %527 = llvm.mlir.null : !llvm.ptr<i64>
    %528 = llvm.getelementptr %527[%526] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %529 = llvm.ptrtoint %528 : !llvm.ptr<i64> to i64
    %530 = llvm.mlir.constant(16 : index) : i64
    %531 = llvm.add %529, %530  : i64
    %532 = llvm.call @malloc(%531) : (i64) -> !llvm.ptr<i8>
    %533 = llvm.bitcast %532 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %534 = llvm.ptrtoint %533 : !llvm.ptr<i64> to i64
    %535 = llvm.mlir.constant(1 : index) : i64
    %536 = llvm.sub %530, %535  : i64
    %537 = llvm.add %534, %536  : i64
    %538 = llvm.urem %537, %530  : i64
    %539 = llvm.sub %537, %538  : i64
    %540 = llvm.inttoptr %539 : i64 to !llvm.ptr<i64>
    %541 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %542 = llvm.insertvalue %533, %541[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %543 = llvm.insertvalue %540, %542[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %544 = llvm.mlir.constant(0 : index) : i64
    %545 = llvm.insertvalue %544, %543[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %546 = llvm.insertvalue %522, %545[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %547 = llvm.insertvalue %523, %546[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %548 = llvm.insertvalue %524, %547[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %549 = llvm.insertvalue %523, %548[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %550 = llvm.insertvalue %524, %549[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %551 = llvm.insertvalue %525, %550[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %552 = llvm.mlir.constant(0 : index) : i64
    %553 = llvm.mlir.constant(1 : index) : i64
    %554 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%552 : i64)
  ^bb61(%555: i64):  // 2 preds: ^bb60, ^bb68
    %556 = llvm.icmp "slt" %555, %553 : i64
    llvm.cond_br %556, ^bb62, ^bb69
  ^bb62:  // pred: ^bb61
    %557 = llvm.mlir.constant(0 : index) : i64
    %558 = llvm.mlir.constant(4 : index) : i64
    %559 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%557 : i64)
  ^bb63(%560: i64):  // 2 preds: ^bb62, ^bb67
    %561 = llvm.icmp "slt" %560, %558 : i64
    llvm.cond_br %561, ^bb64, ^bb68
  ^bb64:  // pred: ^bb63
    %562 = llvm.mlir.constant(0 : index) : i64
    %563 = llvm.mlir.constant(1 : index) : i64
    %564 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%562 : i64)
  ^bb65(%565: i64):  // 2 preds: ^bb64, ^bb66
    %566 = llvm.icmp "slt" %565, %563 : i64
    llvm.cond_br %566, ^bb66, ^bb67
  ^bb66:  // pred: ^bb65
    %567 = llvm.extractvalue %551[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %568 = llvm.mlir.constant(4 : index) : i64
    %569 = llvm.mul %555, %568  : i64
    %570 = llvm.add %569, %560  : i64
    %571 = llvm.add %570, %565  : i64
    %572 = llvm.getelementptr %567[%571] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %572 : !llvm.ptr<i64>
    %573 = llvm.add %565, %564  : i64
    llvm.br ^bb65(%573 : i64)
  ^bb67:  // pred: ^bb65
    %574 = llvm.add %560, %559  : i64
    llvm.br ^bb63(%574 : i64)
  ^bb68:  // pred: ^bb63
    %575 = llvm.add %555, %554  : i64
    llvm.br ^bb61(%575 : i64)
  ^bb69:  // pred: ^bb61
    %576 = llvm.mlir.constant(0 : index) : i64
    %577 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%576 : i64)
  ^bb70(%578: i64):  // 2 preds: ^bb69, ^bb80
    %579 = llvm.icmp "slt" %578, %276 : i64
    llvm.cond_br %579, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %580 = llvm.mlir.constant(0 : index) : i64
    %581 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%580 : i64)
  ^bb72(%582: i64):  // 2 preds: ^bb71, ^bb79
    %583 = llvm.icmp "slt" %582, %279 : i64
    llvm.cond_br %583, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %584 = llvm.mlir.constant(0 : index) : i64
    %585 = llvm.mlir.constant(4 : index) : i64
    %586 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%584 : i64)
  ^bb74(%587: i64):  // 2 preds: ^bb73, ^bb78
    %588 = llvm.icmp "slt" %587, %585 : i64
    llvm.cond_br %588, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %589 = llvm.mlir.constant(0 : index) : i64
    %590 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%589 : i64)
  ^bb76(%591: i64):  // 2 preds: ^bb75, ^bb77
    %592 = llvm.icmp "slt" %591, %282 : i64
    llvm.cond_br %592, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %593 = llvm.extractvalue %476[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %594 = llvm.extractvalue %476[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %595 = llvm.mul %578, %594  : i64
    %596 = llvm.extractvalue %476[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %597 = llvm.mul %582, %596  : i64
    %598 = llvm.add %595, %597  : i64
    %599 = llvm.extractvalue %476[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %600 = llvm.mul %587, %599  : i64
    %601 = llvm.add %598, %600  : i64
    %602 = llvm.add %601, %591  : i64
    %603 = llvm.getelementptr %593[%602] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %604 = llvm.load %603 : !llvm.ptr<i64>
    %605 = llvm.extractvalue %551[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %606 = llvm.mlir.constant(4 : index) : i64
    %607 = llvm.mul %582, %606  : i64
    %608 = llvm.add %607, %587  : i64
    %609 = llvm.add %608, %591  : i64
    %610 = llvm.getelementptr %605[%609] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %611 = llvm.load %610 : !llvm.ptr<i64>
    %612 = llvm.add %611, %604  : i64
    %613 = llvm.extractvalue %551[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %614 = llvm.mlir.constant(4 : index) : i64
    %615 = llvm.mul %582, %614  : i64
    %616 = llvm.add %615, %587  : i64
    %617 = llvm.add %616, %591  : i64
    %618 = llvm.getelementptr %613[%617] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %612, %618 : !llvm.ptr<i64>
    %619 = llvm.add %591, %590  : i64
    llvm.br ^bb76(%619 : i64)
  ^bb78:  // pred: ^bb76
    %620 = llvm.add %587, %586  : i64
    llvm.br ^bb74(%620 : i64)
  ^bb79:  // pred: ^bb74
    %621 = llvm.add %582, %581  : i64
    llvm.br ^bb72(%621 : i64)
  ^bb80:  // pred: ^bb72
    %622 = llvm.add %578, %577  : i64
    llvm.br ^bb70(%622 : i64)
  ^bb81:  // pred: ^bb70
    llvm.return %551 : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.mlir.constant(8 : i64) : i64
    %47 = llvm.call @malloc(%46) : (i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %49 = llvm.mlir.constant(3 : i64) : i64
    %50 = llvm.call @omTensorCreateUntyped(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.extractvalue %44[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %53 = llvm.bitcast %52 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %54 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%50, %51, %53, %55) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %56 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%50, %56) : (!llvm.ptr<i8>, i64) -> ()
    %57 = llvm.call @omTensorGetShape(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %58 = llvm.call @omTensorGetStrides(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %59 = llvm.mlir.constant(0 : i64) : i64
    %60 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.getelementptr %57[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.getelementptr %58[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %44[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.getelementptr %57[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.extractvalue %44[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %58[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.mlir.constant(2 : i64) : i64
    %70 = llvm.extractvalue %44[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.getelementptr %57[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %44[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %58[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(0 : i64) : i64
    %75 = llvm.getelementptr %48[%74] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %50, %75 : !llvm.ptr<ptr<i8>>
    %76 = llvm.call @omTensorListCreate(%48, %45, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %76 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<67 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<67 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

