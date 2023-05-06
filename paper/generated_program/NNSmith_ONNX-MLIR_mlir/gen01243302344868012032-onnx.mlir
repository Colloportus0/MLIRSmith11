module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[2, 1, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[2, 1, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v0_0"]} {
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
    %12 = llvm.mlir.constant(1 : i64) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(4 : index) : i64
    %22 = llvm.insertvalue %21, %20[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.insertvalue %23, %22[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %26 = llvm.bitcast %25 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %33 = llvm.bitcast %32 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(4 : index) : i64
    %40 = llvm.insertvalue %39, %38[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.insertvalue %41, %40[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.mlir.constant(2 : index) : i64
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.mlir.null : !llvm.ptr<i32>
    %50 = llvm.getelementptr %49[%48] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %51 = llvm.ptrtoint %50 : !llvm.ptr<i32> to i64
    %52 = llvm.mlir.constant(16 : index) : i64
    %53 = llvm.add %51, %52  : i64
    %54 = llvm.call @malloc(%53) : (i64) -> !llvm.ptr<i8>
    %55 = llvm.bitcast %54 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %56 = llvm.ptrtoint %55 : !llvm.ptr<i32> to i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.sub %52, %57  : i64
    %59 = llvm.add %56, %58  : i64
    %60 = llvm.urem %59, %52  : i64
    %61 = llvm.sub %59, %60  : i64
    %62 = llvm.inttoptr %61 : i64 to !llvm.ptr<i32>
    %63 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %64 = llvm.insertvalue %55, %63[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %43, %67[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %44, %68[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %45, %69[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %46, %70[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %44, %71[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %45, %72[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %46, %73[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %47, %74[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%76 : i64)
  ^bb1(%79: i64):  // 2 preds: ^bb0, ^bb11
    %80 = llvm.icmp "slt" %79, %77 : i64
    llvm.cond_br %80, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.mlir.constant(2 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%81 : i64)
  ^bb3(%84: i64):  // 2 preds: ^bb2, ^bb10
    %85 = llvm.icmp "slt" %84, %82 : i64
    llvm.cond_br %85, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%86 : i64)
  ^bb5(%89: i64):  // 2 preds: ^bb4, ^bb9
    %90 = llvm.icmp "slt" %89, %87 : i64
    llvm.cond_br %90, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%91 : i64)
  ^bb7(%94: i64):  // 2 preds: ^bb6, ^bb8
    %95 = llvm.icmp "slt" %94, %92 : i64
    llvm.cond_br %95, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %96 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(2 : index) : i64
    %98 = llvm.mul %79, %97  : i64
    %99 = llvm.add %98, %84  : i64
    %100 = llvm.add %99, %89  : i64
    %101 = llvm.add %100, %94  : i64
    %102 = llvm.getelementptr %96[%101] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %103 = llvm.load %102 : !llvm.ptr<i32>
    %104 = llvm.extractvalue %75[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(2 : index) : i64
    %106 = llvm.mul %79, %105  : i64
    %107 = llvm.add %106, %84  : i64
    %108 = llvm.add %107, %89  : i64
    %109 = llvm.add %108, %94  : i64
    %110 = llvm.getelementptr %104[%109] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %103, %110 : !llvm.ptr<i32>
    %111 = llvm.add %94, %93  : i64
    llvm.br ^bb7(%111 : i64)
  ^bb9:  // pred: ^bb7
    %112 = llvm.add %89, %88  : i64
    llvm.br ^bb5(%112 : i64)
  ^bb10:  // pred: ^bb5
    %113 = llvm.add %84, %83  : i64
    llvm.br ^bb3(%113 : i64)
  ^bb11:  // pred: ^bb3
    %114 = llvm.add %79, %78  : i64
    llvm.br ^bb1(%114 : i64)
  ^bb12:  // pred: ^bb1
    %115 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %116 = llvm.extractvalue %75[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.extractvalue %75[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.insertvalue %116, %115[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.insertvalue %117, %118[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = llvm.insertvalue %120, %119[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.mlir.constant(2 : index) : i64
    %123 = llvm.insertvalue %122, %121[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.insertvalue %124, %123[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.insertvalue %126, %125[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.insertvalue %128, %127[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.insertvalue %130, %129[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.insertvalue %132, %131[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.insertvalue %134, %133[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.insertvalue %136, %135[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.constant(4 : index) : i64
    %144 = llvm.mlir.null : !llvm.ptr<i32>
    %145 = llvm.getelementptr %144[%143] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %146 = llvm.ptrtoint %145 : !llvm.ptr<i32> to i64
    %147 = llvm.mlir.constant(16 : index) : i64
    %148 = llvm.add %146, %147  : i64
    %149 = llvm.call @malloc(%148) : (i64) -> !llvm.ptr<i8>
    %150 = llvm.bitcast %149 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %151 = llvm.ptrtoint %150 : !llvm.ptr<i32> to i64
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.sub %147, %152  : i64
    %154 = llvm.add %151, %153  : i64
    %155 = llvm.urem %154, %147  : i64
    %156 = llvm.sub %154, %155  : i64
    %157 = llvm.inttoptr %156 : i64 to !llvm.ptr<i32>
    %158 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %159 = llvm.insertvalue %150, %158[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %157, %159[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.insertvalue %161, %160[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.insertvalue %138, %162[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.insertvalue %139, %163[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.insertvalue %140, %164[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.insertvalue %141, %165[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.insertvalue %139, %166[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.insertvalue %140, %167[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.insertvalue %141, %168[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.insertvalue %142, %169[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.mlir.constant(2 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%171 : i64)
  ^bb13(%174: i64):  // 2 preds: ^bb12, ^bb23
    %175 = llvm.icmp "slt" %174, %172 : i64
    llvm.cond_br %175, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.mlir.constant(2 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%176 : i64)
  ^bb15(%179: i64):  // 2 preds: ^bb14, ^bb22
    %180 = llvm.icmp "slt" %179, %177 : i64
    llvm.cond_br %180, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %181 = llvm.mlir.constant(0 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%181 : i64)
  ^bb17(%184: i64):  // 2 preds: ^bb16, ^bb21
    %185 = llvm.icmp "slt" %184, %182 : i64
    llvm.cond_br %185, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %186 = llvm.mlir.constant(0 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%186 : i64)
  ^bb19(%189: i64):  // 2 preds: ^bb18, ^bb20
    %190 = llvm.icmp "slt" %189, %187 : i64
    llvm.cond_br %190, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %191 = llvm.extractvalue %75[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.mlir.constant(2 : index) : i64
    %193 = llvm.mul %13, %192  : i64
    %194 = llvm.add %193, %179  : i64
    %195 = llvm.add %194, %184  : i64
    %196 = llvm.add %195, %189  : i64
    %197 = llvm.getelementptr %191[%196] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %198 = llvm.load %197 : !llvm.ptr<i32>
    %199 = llvm.extractvalue %137[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.add %174, %13  : i64
    %201 = llvm.add %200, %184  : i64
    %202 = llvm.add %201, %189  : i64
    %203 = llvm.getelementptr %199[%202] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %204 = llvm.load %203 : !llvm.ptr<i32>
    %205 = llvm.icmp "slt" %198, %204 : i32
    %206 = llvm.select %205, %198, %204 : i1, i32
    %207 = llvm.extractvalue %170[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.mlir.constant(2 : index) : i64
    %209 = llvm.mul %174, %208  : i64
    %210 = llvm.add %209, %179  : i64
    %211 = llvm.add %210, %184  : i64
    %212 = llvm.add %211, %189  : i64
    %213 = llvm.getelementptr %207[%212] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %206, %213 : !llvm.ptr<i32>
    %214 = llvm.add %189, %188  : i64
    llvm.br ^bb19(%214 : i64)
  ^bb21:  // pred: ^bb19
    %215 = llvm.add %184, %183  : i64
    llvm.br ^bb17(%215 : i64)
  ^bb22:  // pred: ^bb17
    %216 = llvm.add %179, %178  : i64
    llvm.br ^bb15(%216 : i64)
  ^bb23:  // pred: ^bb15
    %217 = llvm.add %174, %173  : i64
    llvm.br ^bb13(%217 : i64)
  ^bb24:  // pred: ^bb13
    %218 = llvm.mlir.constant(2 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.mlir.null : !llvm.ptr<i32>
    %224 = llvm.getelementptr %223[%218] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %225 = llvm.ptrtoint %224 : !llvm.ptr<i32> to i64
    %226 = llvm.mlir.constant(16 : index) : i64
    %227 = llvm.add %225, %226  : i64
    %228 = llvm.call @malloc(%227) : (i64) -> !llvm.ptr<i8>
    %229 = llvm.bitcast %228 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %230 = llvm.ptrtoint %229 : !llvm.ptr<i32> to i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.sub %226, %231  : i64
    %233 = llvm.add %230, %232  : i64
    %234 = llvm.urem %233, %226  : i64
    %235 = llvm.sub %233, %234  : i64
    %236 = llvm.inttoptr %235 : i64 to !llvm.ptr<i32>
    %237 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %238 = llvm.insertvalue %229, %237[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.insertvalue %236, %238[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.insertvalue %240, %239[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.insertvalue %218, %241[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.insertvalue %219, %242[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.insertvalue %220, %243[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.insertvalue %221, %244[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.insertvalue %219, %245[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.insertvalue %220, %246[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.insertvalue %221, %247[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.insertvalue %222, %248[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.mlir.constant(0 : index) : i64
    %251 = llvm.mlir.constant(2 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%250 : i64)
  ^bb25(%253: i64):  // 2 preds: ^bb24, ^bb35
    %254 = llvm.icmp "slt" %253, %251 : i64
    llvm.cond_br %254, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %255 = llvm.mlir.constant(0 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%255 : i64)
  ^bb27(%258: i64):  // 2 preds: ^bb26, ^bb34
    %259 = llvm.icmp "slt" %258, %256 : i64
    llvm.cond_br %259, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %260 = llvm.mlir.constant(0 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%260 : i64)
  ^bb29(%263: i64):  // 2 preds: ^bb28, ^bb33
    %264 = llvm.icmp "slt" %263, %261 : i64
    llvm.cond_br %264, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %265 = llvm.mlir.constant(0 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%265 : i64)
  ^bb31(%268: i64):  // 2 preds: ^bb30, ^bb32
    %269 = llvm.icmp "slt" %268, %266 : i64
    llvm.cond_br %269, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %270 = llvm.extractvalue %137[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.add %253, %258  : i64
    %272 = llvm.add %271, %263  : i64
    %273 = llvm.add %272, %268  : i64
    %274 = llvm.getelementptr %270[%273] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %275 = llvm.load %274 : !llvm.ptr<i32>
    %276 = llvm.extractvalue %249[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.add %253, %258  : i64
    %278 = llvm.add %277, %263  : i64
    %279 = llvm.add %278, %268  : i64
    %280 = llvm.getelementptr %276[%279] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %275, %280 : !llvm.ptr<i32>
    %281 = llvm.add %268, %267  : i64
    llvm.br ^bb31(%281 : i64)
  ^bb33:  // pred: ^bb31
    %282 = llvm.add %263, %262  : i64
    llvm.br ^bb29(%282 : i64)
  ^bb34:  // pred: ^bb29
    %283 = llvm.add %258, %257  : i64
    llvm.br ^bb27(%283 : i64)
  ^bb35:  // pred: ^bb27
    %284 = llvm.add %253, %252  : i64
    llvm.br ^bb25(%284 : i64)
  ^bb36:  // pred: ^bb25
    %285 = llvm.mlir.constant(4 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.null : !llvm.ptr<i64>
    %288 = llvm.getelementptr %287[%285] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %289 = llvm.ptrtoint %288 : !llvm.ptr<i64> to i64
    %290 = llvm.mlir.constant(16 : index) : i64
    %291 = llvm.add %289, %290  : i64
    %292 = llvm.call @malloc(%291) : (i64) -> !llvm.ptr<i8>
    %293 = llvm.bitcast %292 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %294 = llvm.ptrtoint %293 : !llvm.ptr<i64> to i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.sub %290, %295  : i64
    %297 = llvm.add %294, %296  : i64
    %298 = llvm.urem %297, %290  : i64
    %299 = llvm.sub %297, %298  : i64
    %300 = llvm.inttoptr %299 : i64 to !llvm.ptr<i64>
    %301 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %302 = llvm.insertvalue %293, %301[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.insertvalue %300, %302[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.insertvalue %304, %303[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.insertvalue %285, %305[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.insertvalue %286, %306[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.mlir.constant(4 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%308 : i64)
  ^bb37(%311: i64):  // 2 preds: ^bb36, ^bb38
    %312 = llvm.icmp "slt" %311, %309 : i64
    llvm.cond_br %312, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %313 = llvm.extractvalue %307[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %314 = llvm.getelementptr %313[%311] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %314 : !llvm.ptr<i64>
    %315 = llvm.add %311, %310  : i64
    llvm.br ^bb37(%315 : i64)
  ^bb39:  // pred: ^bb37
    %316 = llvm.mlir.constant(4 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.null : !llvm.ptr<i64>
    %319 = llvm.getelementptr %318[%316] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %320 = llvm.ptrtoint %319 : !llvm.ptr<i64> to i64
    %321 = llvm.mlir.constant(16 : index) : i64
    %322 = llvm.add %320, %321  : i64
    %323 = llvm.call @malloc(%322) : (i64) -> !llvm.ptr<i8>
    %324 = llvm.bitcast %323 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %325 = llvm.ptrtoint %324 : !llvm.ptr<i64> to i64
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.sub %321, %326  : i64
    %328 = llvm.add %325, %327  : i64
    %329 = llvm.urem %328, %321  : i64
    %330 = llvm.sub %328, %329  : i64
    %331 = llvm.inttoptr %330 : i64 to !llvm.ptr<i64>
    %332 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %333 = llvm.insertvalue %324, %332[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %334 = llvm.insertvalue %331, %333[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.insertvalue %335, %334[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.insertvalue %316, %336[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %338 = llvm.insertvalue %317, %337[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %339 = llvm.mlir.constant(0 : index) : i64
    %340 = llvm.mlir.constant(4 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%339 : i64)
  ^bb40(%342: i64):  // 2 preds: ^bb39, ^bb41
    %343 = llvm.icmp "slt" %342, %340 : i64
    llvm.cond_br %343, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %344 = llvm.extractvalue %307[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %345 = llvm.getelementptr %344[%342] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %346 = llvm.load %345 : !llvm.ptr<i64>
    %347 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %348 = llvm.load %347 : !llvm.ptr<i64>
    %349 = llvm.mul %346, %348  : i64
    %350 = llvm.extractvalue %338[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %351 = llvm.getelementptr %350[%342] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %349, %351 : !llvm.ptr<i64>
    %352 = llvm.add %342, %341  : i64
    llvm.br ^bb40(%352 : i64)
  ^bb42:  // pred: ^bb40
    %353 = llvm.mlir.constant(4 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    %355 = llvm.mlir.null : !llvm.ptr<i1>
    %356 = llvm.getelementptr %355[%353] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %357 = llvm.ptrtoint %356 : !llvm.ptr<i1> to i64
    %358 = llvm.mlir.constant(16 : index) : i64
    %359 = llvm.add %357, %358  : i64
    %360 = llvm.call @malloc(%359) : (i64) -> !llvm.ptr<i8>
    %361 = llvm.bitcast %360 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %362 = llvm.ptrtoint %361 : !llvm.ptr<i1> to i64
    %363 = llvm.mlir.constant(1 : index) : i64
    %364 = llvm.sub %358, %363  : i64
    %365 = llvm.add %362, %364  : i64
    %366 = llvm.urem %365, %358  : i64
    %367 = llvm.sub %365, %366  : i64
    %368 = llvm.inttoptr %367 : i64 to !llvm.ptr<i1>
    %369 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %370 = llvm.insertvalue %361, %369[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %371 = llvm.insertvalue %368, %370[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %372 = llvm.mlir.constant(0 : index) : i64
    %373 = llvm.insertvalue %372, %371[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %374 = llvm.insertvalue %353, %373[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %375 = llvm.insertvalue %354, %374[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %376 = llvm.mlir.constant(0 : index) : i64
    %377 = llvm.mlir.constant(4 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%376 : i64)
  ^bb43(%379: i64):  // 2 preds: ^bb42, ^bb44
    %380 = llvm.icmp "slt" %379, %377 : i64
    llvm.cond_br %380, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %381 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %382 = llvm.getelementptr %381[%379] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %383 = llvm.load %382 : !llvm.ptr<i64>
    %384 = llvm.extractvalue %338[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %385 = llvm.getelementptr %384[%379] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %386 = llvm.load %385 : !llvm.ptr<i64>
    %387 = llvm.icmp "eq" %383, %386 : i64
    %388 = llvm.extractvalue %375[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %389 = llvm.getelementptr %388[%379] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %387, %389 : !llvm.ptr<i1>
    %390 = llvm.add %379, %378  : i64
    llvm.br ^bb43(%390 : i64)
  ^bb45:  // pred: ^bb43
    %391 = llvm.mlir.constant(4 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    %393 = llvm.mlir.null : !llvm.ptr<i64>
    %394 = llvm.getelementptr %393[%391] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %395 = llvm.ptrtoint %394 : !llvm.ptr<i64> to i64
    %396 = llvm.mlir.constant(16 : index) : i64
    %397 = llvm.add %395, %396  : i64
    %398 = llvm.call @malloc(%397) : (i64) -> !llvm.ptr<i8>
    %399 = llvm.bitcast %398 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %400 = llvm.ptrtoint %399 : !llvm.ptr<i64> to i64
    %401 = llvm.mlir.constant(1 : index) : i64
    %402 = llvm.sub %396, %401  : i64
    %403 = llvm.add %400, %402  : i64
    %404 = llvm.urem %403, %396  : i64
    %405 = llvm.sub %403, %404  : i64
    %406 = llvm.inttoptr %405 : i64 to !llvm.ptr<i64>
    %407 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %408 = llvm.insertvalue %399, %407[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %409 = llvm.insertvalue %406, %408[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %410 = llvm.mlir.constant(0 : index) : i64
    %411 = llvm.insertvalue %410, %409[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %412 = llvm.insertvalue %391, %411[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %413 = llvm.insertvalue %392, %412[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %414 = llvm.mlir.constant(0 : index) : i64
    %415 = llvm.mlir.constant(4 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%414 : i64)
  ^bb46(%417: i64):  // 2 preds: ^bb45, ^bb47
    %418 = llvm.icmp "slt" %417, %415 : i64
    llvm.cond_br %418, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %419 = llvm.extractvalue %375[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %420 = llvm.getelementptr %419[%417] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %421 = llvm.load %420 : !llvm.ptr<i1>
    %422 = llvm.extractvalue %307[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %423 = llvm.getelementptr %422[%417] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %424 = llvm.load %423 : !llvm.ptr<i64>
    %425 = llvm.extractvalue %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %426 = llvm.getelementptr %425[%417] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %427 = llvm.load %426 : !llvm.ptr<i64>
    %428 = llvm.select %421, %424, %427 : i1, i64
    %429 = llvm.extractvalue %413[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %430 = llvm.getelementptr %429[%417] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %428, %430 : !llvm.ptr<i64>
    %431 = llvm.add %417, %416  : i64
    llvm.br ^bb46(%431 : i64)
  ^bb48:  // pred: ^bb46
    %432 = llvm.mlir.constant(2 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    %437 = llvm.mlir.null : !llvm.ptr<i32>
    %438 = llvm.getelementptr %437[%432] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %439 = llvm.ptrtoint %438 : !llvm.ptr<i32> to i64
    %440 = llvm.mlir.constant(16 : index) : i64
    %441 = llvm.add %439, %440  : i64
    %442 = llvm.call @malloc(%441) : (i64) -> !llvm.ptr<i8>
    %443 = llvm.bitcast %442 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %444 = llvm.ptrtoint %443 : !llvm.ptr<i32> to i64
    %445 = llvm.mlir.constant(1 : index) : i64
    %446 = llvm.sub %440, %445  : i64
    %447 = llvm.add %444, %446  : i64
    %448 = llvm.urem %447, %440  : i64
    %449 = llvm.sub %447, %448  : i64
    %450 = llvm.inttoptr %449 : i64 to !llvm.ptr<i32>
    %451 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %452 = llvm.insertvalue %443, %451[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.insertvalue %450, %452[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.mlir.constant(0 : index) : i64
    %455 = llvm.insertvalue %454, %453[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %456 = llvm.insertvalue %432, %455[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.insertvalue %433, %456[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %458 = llvm.insertvalue %434, %457[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.insertvalue %435, %458[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %460 = llvm.insertvalue %433, %459[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.insertvalue %434, %460[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.insertvalue %435, %461[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.insertvalue %436, %462[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %464 = llvm.mlir.constant(0 : index) : i64
    %465 = llvm.mlir.constant(2 : index) : i64
    %466 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%464 : i64)
  ^bb49(%467: i64):  // 2 preds: ^bb48, ^bb59
    %468 = llvm.icmp "slt" %467, %465 : i64
    llvm.cond_br %468, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %469 = llvm.mlir.constant(0 : index) : i64
    %470 = llvm.mlir.constant(1 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%469 : i64)
  ^bb51(%472: i64):  // 2 preds: ^bb50, ^bb58
    %473 = llvm.icmp "slt" %472, %470 : i64
    llvm.cond_br %473, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %474 = llvm.mlir.constant(0 : index) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    %476 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%474 : i64)
  ^bb53(%477: i64):  // 2 preds: ^bb52, ^bb57
    %478 = llvm.icmp "slt" %477, %475 : i64
    llvm.cond_br %478, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %479 = llvm.mlir.constant(0 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    %481 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%479 : i64)
  ^bb55(%482: i64):  // 2 preds: ^bb54, ^bb56
    %483 = llvm.icmp "slt" %482, %480 : i64
    llvm.cond_br %483, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %484 = llvm.extractvalue %249[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %485 = llvm.add %467, %13  : i64
    %486 = llvm.add %485, %13  : i64
    %487 = llvm.add %486, %13  : i64
    %488 = llvm.getelementptr %484[%487] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %489 = llvm.load %488 : !llvm.ptr<i32>
    %490 = llvm.extractvalue %463[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %491 = llvm.add %467, %472  : i64
    %492 = llvm.add %491, %477  : i64
    %493 = llvm.add %492, %482  : i64
    %494 = llvm.getelementptr %490[%493] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %489, %494 : !llvm.ptr<i32>
    %495 = llvm.add %482, %481  : i64
    llvm.br ^bb55(%495 : i64)
  ^bb57:  // pred: ^bb55
    %496 = llvm.add %477, %476  : i64
    llvm.br ^bb53(%496 : i64)
  ^bb58:  // pred: ^bb53
    %497 = llvm.add %472, %471  : i64
    llvm.br ^bb51(%497 : i64)
  ^bb59:  // pred: ^bb51
    %498 = llvm.add %467, %466  : i64
    llvm.br ^bb49(%498 : i64)
  ^bb60:  // pred: ^bb49
    %499 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %500 = llvm.insertvalue %170, %499[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %501 = llvm.insertvalue %463, %500[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %501 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v0_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(4 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(3 : i64) : i64
    %109 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %91[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %92[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.getelementptr %50[%113] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %114 : !llvm.ptr<ptr<i8>>
    %115 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %115 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

