module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 2] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [4] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<[[3], [4]]> : tensor<2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x i32>>
  llvm.mlir.global internal constant @constant_5(dense<5> : tensor<1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_4(dense<[2, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<[2, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v7_0", "v1_0", "v0_0"]} {
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
    %13 = llvm.mlir.constant(0 : i32) : i32
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(0 : i64) : i64
    %16 = llvm.mlir.constant(-1 : i64) : i64
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
    %46 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i32>>
    %47 = llvm.bitcast %46 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.insertvalue %47, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.insertvalue %47, %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.insertvalue %51, %50[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<2 x array<1 x i32>>>
    %58 = llvm.bitcast %57 : !llvm.ptr<array<2 x array<1 x i32>>> to !llvm.ptr<i32>
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %60 = llvm.insertvalue %58, %59[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.mlir.constant(2 : index) : i64
    %65 = llvm.insertvalue %64, %63[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.insertvalue %70, %69[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.null : !llvm.ptr<i64>
    %74 = llvm.getelementptr %73[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %75 = llvm.ptrtoint %74 : !llvm.ptr<i64> to i64
    %76 = llvm.call @malloc(%75) : (i64) -> !llvm.ptr<i8>
    %77 = llvm.bitcast %76 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %78 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %79 = llvm.insertvalue %77, %78[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %80 = llvm.insertvalue %77, %79[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.insertvalue %81, %80[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %83 = llvm.extractvalue %82[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    llvm.store %16, %83 : !llvm.ptr<i64>
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%84 : i64)
  ^bb1(%87: i64):  // 2 preds: ^bb0, ^bb2
    %88 = llvm.icmp "slt" %87, %85 : i64
    llvm.cond_br %88, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %89 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.getelementptr %89[%87] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %91 = llvm.load %90 : !llvm.ptr<i32>
    %92 = llvm.extractvalue %82[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %93 = llvm.load %92 : !llvm.ptr<i64>
    %94 = llvm.icmp "slt" %93, %15 : i64
    %95 = llvm.select %94, %15, %93 : i1, i64
    %96 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.getelementptr %96[%95] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %98 = llvm.load %97 : !llvm.ptr<i32>
    %99 = llvm.icmp "slt" %91, %98 : i32
    %100 = llvm.select %99, %87, %95 : i1, i64
    %101 = llvm.extractvalue %82[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.add %87, %86  : i64
    llvm.br ^bb1(%102 : i64)
  ^bb3:  // pred: ^bb1
    %103 = llvm.mlir.constant(2 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.mlir.null : !llvm.ptr<i32>
    %106 = llvm.getelementptr %105[%103] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %107 = llvm.ptrtoint %106 : !llvm.ptr<i32> to i64
    %108 = llvm.mlir.constant(16 : index) : i64
    %109 = llvm.add %107, %108  : i64
    %110 = llvm.call @malloc(%109) : (i64) -> !llvm.ptr<i8>
    %111 = llvm.bitcast %110 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %112 = llvm.ptrtoint %111 : !llvm.ptr<i32> to i64
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.sub %108, %113  : i64
    %115 = llvm.add %112, %114  : i64
    %116 = llvm.urem %115, %108  : i64
    %117 = llvm.sub %115, %116  : i64
    %118 = llvm.inttoptr %117 : i64 to !llvm.ptr<i32>
    %119 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %120 = llvm.insertvalue %111, %119[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %121 = llvm.insertvalue %118, %120[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %122 = llvm.mlir.constant(0 : index) : i64
    %123 = llvm.insertvalue %122, %121[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %124 = llvm.insertvalue %103, %123[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %125 = llvm.insertvalue %104, %124[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.null : !llvm.ptr<i32>
    %128 = llvm.getelementptr %127[%126] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %129 = llvm.ptrtoint %128 : !llvm.ptr<i32> to i64
    %130 = llvm.alloca %129 x i32 : (i64) -> !llvm.ptr<i32>
    %131 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %132 = llvm.insertvalue %130, %131[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %133 = llvm.insertvalue %130, %132[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %134 = llvm.mlir.constant(0 : index) : i64
    %135 = llvm.insertvalue %134, %133[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%136 : i64)
  ^bb4(%139: i64):  // 2 preds: ^bb3, ^bb8
    %140 = llvm.icmp "slt" %139, %137 : i64
    llvm.cond_br %140, ^bb5, ^bb9
  ^bb5:  // pred: ^bb4
    %141 = llvm.extractvalue %135[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %13, %141 : !llvm.ptr<i32>
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb6(%142 : i64)
  ^bb6(%145: i64):  // 2 preds: ^bb5, ^bb7
    %146 = llvm.icmp "slt" %145, %143 : i64
    llvm.cond_br %146, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %147 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %148 = llvm.add %139, %145  : i64
    %149 = llvm.getelementptr %147[%148] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %150 = llvm.load %149 : !llvm.ptr<i32>
    %151 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %152 = llvm.getelementptr %151[%145] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %153 = llvm.load %152 : !llvm.ptr<i32>
    %154 = llvm.extractvalue %135[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %155 = llvm.load %154 : !llvm.ptr<i32>
    %156 = llvm.mul %150, %153  : i32
    %157 = llvm.add %155, %156  : i32
    %158 = llvm.extractvalue %135[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %157, %158 : !llvm.ptr<i32>
    %159 = llvm.add %145, %144  : i64
    llvm.br ^bb6(%159 : i64)
  ^bb8:  // pred: ^bb6
    %160 = llvm.extractvalue %135[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %161 = llvm.load %160 : !llvm.ptr<i32>
    %162 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %163 = llvm.getelementptr %162[%139] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %161, %163 : !llvm.ptr<i32>
    %164 = llvm.add %139, %138  : i64
    llvm.br ^bb4(%164 : i64)
  ^bb9:  // pred: ^bb4
    %165 = llvm.mlir.constant(2 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(2 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.constant(2 : index) : i64
    %171 = llvm.mlir.constant(2 : index) : i64
    %172 = llvm.mlir.constant(4 : index) : i64
    %173 = llvm.mlir.null : !llvm.ptr<i32>
    %174 = llvm.getelementptr %173[%172] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %175 = llvm.ptrtoint %174 : !llvm.ptr<i32> to i64
    %176 = llvm.mlir.constant(16 : index) : i64
    %177 = llvm.add %175, %176  : i64
    %178 = llvm.call @malloc(%177) : (i64) -> !llvm.ptr<i8>
    %179 = llvm.bitcast %178 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %180 = llvm.ptrtoint %179 : !llvm.ptr<i32> to i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.sub %176, %181  : i64
    %183 = llvm.add %180, %182  : i64
    %184 = llvm.urem %183, %176  : i64
    %185 = llvm.sub %183, %184  : i64
    %186 = llvm.inttoptr %185 : i64 to !llvm.ptr<i32>
    %187 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %188 = llvm.insertvalue %179, %187[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.insertvalue %186, %188[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.insertvalue %190, %189[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %165, %191[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %166, %192[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %167, %193[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %168, %194[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.insertvalue %171, %195[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.insertvalue %170, %196[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %168, %197[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.insertvalue %169, %198[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.mlir.constant(2 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%200 : i64)
  ^bb10(%203: i64):  // 2 preds: ^bb9, ^bb20
    %204 = llvm.icmp "slt" %203, %201 : i64
    llvm.cond_br %204, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%205 : i64)
  ^bb12(%208: i64):  // 2 preds: ^bb11, ^bb19
    %209 = llvm.icmp "slt" %208, %206 : i64
    llvm.cond_br %209, ^bb13, ^bb20
  ^bb13:  // pred: ^bb12
    %210 = llvm.mlir.constant(0 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%210 : i64)
  ^bb14(%213: i64):  // 2 preds: ^bb13, ^bb18
    %214 = llvm.icmp "slt" %213, %211 : i64
    llvm.cond_br %214, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.mlir.constant(2 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%215 : i64)
  ^bb16(%218: i64):  // 2 preds: ^bb15, ^bb17
    %219 = llvm.icmp "slt" %218, %216 : i64
    llvm.cond_br %219, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %220 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.getelementptr %220[%218] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %222 = llvm.load %221 : !llvm.ptr<i32>
    %223 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.add %203, %208  : i64
    %225 = llvm.add %224, %213  : i64
    %226 = llvm.add %225, %14  : i64
    %227 = llvm.getelementptr %223[%226] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %228 = llvm.load %227 : !llvm.ptr<i32>
    %229 = llvm.mul %222, %228  : i32
    %230 = llvm.extractvalue %199[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.mlir.constant(2 : index) : i64
    %232 = llvm.mul %203, %231  : i64
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.mul %208, %233  : i64
    %235 = llvm.add %232, %234  : i64
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mul %213, %236  : i64
    %238 = llvm.add %235, %237  : i64
    %239 = llvm.add %238, %218  : i64
    %240 = llvm.getelementptr %230[%239] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %229, %240 : !llvm.ptr<i32>
    %241 = llvm.add %218, %217  : i64
    llvm.br ^bb16(%241 : i64)
  ^bb18:  // pred: ^bb16
    %242 = llvm.add %213, %212  : i64
    llvm.br ^bb14(%242 : i64)
  ^bb19:  // pred: ^bb14
    %243 = llvm.add %208, %207  : i64
    llvm.br ^bb12(%243 : i64)
  ^bb20:  // pred: ^bb12
    %244 = llvm.add %203, %202  : i64
    llvm.br ^bb10(%244 : i64)
  ^bb21:  // pred: ^bb10
    %245 = llvm.mlir.constant(4 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.null : !llvm.ptr<i64>
    %248 = llvm.getelementptr %247[%245] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %249 = llvm.ptrtoint %248 : !llvm.ptr<i64> to i64
    %250 = llvm.mlir.constant(16 : index) : i64
    %251 = llvm.add %249, %250  : i64
    %252 = llvm.call @malloc(%251) : (i64) -> !llvm.ptr<i8>
    %253 = llvm.bitcast %252 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %254 = llvm.ptrtoint %253 : !llvm.ptr<i64> to i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.sub %250, %255  : i64
    %257 = llvm.add %254, %256  : i64
    %258 = llvm.urem %257, %250  : i64
    %259 = llvm.sub %257, %258  : i64
    %260 = llvm.inttoptr %259 : i64 to !llvm.ptr<i64>
    %261 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %262 = llvm.insertvalue %253, %261[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.insertvalue %260, %262[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.insertvalue %264, %263[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.insertvalue %245, %265[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.insertvalue %246, %266[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.mlir.constant(4 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%268 : i64)
  ^bb22(%271: i64):  // 2 preds: ^bb21, ^bb23
    %272 = llvm.icmp "slt" %271, %269 : i64
    llvm.cond_br %272, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %273 = llvm.extractvalue %267[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %274 = llvm.getelementptr %273[%271] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %274 : !llvm.ptr<i64>
    %275 = llvm.add %271, %270  : i64
    llvm.br ^bb22(%275 : i64)
  ^bb24:  // pred: ^bb22
    %276 = llvm.mlir.constant(4 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    %278 = llvm.mlir.null : !llvm.ptr<i64>
    %279 = llvm.getelementptr %278[%276] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %280 = llvm.ptrtoint %279 : !llvm.ptr<i64> to i64
    %281 = llvm.mlir.constant(16 : index) : i64
    %282 = llvm.add %280, %281  : i64
    %283 = llvm.call @malloc(%282) : (i64) -> !llvm.ptr<i8>
    %284 = llvm.bitcast %283 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %285 = llvm.ptrtoint %284 : !llvm.ptr<i64> to i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.sub %281, %286  : i64
    %288 = llvm.add %285, %287  : i64
    %289 = llvm.urem %288, %281  : i64
    %290 = llvm.sub %288, %289  : i64
    %291 = llvm.inttoptr %290 : i64 to !llvm.ptr<i64>
    %292 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %293 = llvm.insertvalue %284, %292[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.insertvalue %291, %293[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.insertvalue %295, %294[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %297 = llvm.insertvalue %276, %296[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %298 = llvm.insertvalue %277, %297[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %299 = llvm.mlir.constant(0 : index) : i64
    %300 = llvm.mlir.constant(4 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%299 : i64)
  ^bb25(%302: i64):  // 2 preds: ^bb24, ^bb26
    %303 = llvm.icmp "slt" %302, %300 : i64
    llvm.cond_br %303, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %304 = llvm.extractvalue %267[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.getelementptr %304[%302] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %306 = llvm.load %305 : !llvm.ptr<i64>
    %307 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %308 = llvm.load %307 : !llvm.ptr<i64>
    %309 = llvm.mul %306, %308  : i64
    %310 = llvm.extractvalue %298[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %311 = llvm.getelementptr %310[%302] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %309, %311 : !llvm.ptr<i64>
    %312 = llvm.add %302, %301  : i64
    llvm.br ^bb25(%312 : i64)
  ^bb27:  // pred: ^bb25
    %313 = llvm.mlir.constant(4 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.null : !llvm.ptr<i1>
    %316 = llvm.getelementptr %315[%313] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %317 = llvm.ptrtoint %316 : !llvm.ptr<i1> to i64
    %318 = llvm.mlir.constant(16 : index) : i64
    %319 = llvm.add %317, %318  : i64
    %320 = llvm.call @malloc(%319) : (i64) -> !llvm.ptr<i8>
    %321 = llvm.bitcast %320 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %322 = llvm.ptrtoint %321 : !llvm.ptr<i1> to i64
    %323 = llvm.mlir.constant(1 : index) : i64
    %324 = llvm.sub %318, %323  : i64
    %325 = llvm.add %322, %324  : i64
    %326 = llvm.urem %325, %318  : i64
    %327 = llvm.sub %325, %326  : i64
    %328 = llvm.inttoptr %327 : i64 to !llvm.ptr<i1>
    %329 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %330 = llvm.insertvalue %321, %329[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %331 = llvm.insertvalue %328, %330[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %332 = llvm.mlir.constant(0 : index) : i64
    %333 = llvm.insertvalue %332, %331[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %334 = llvm.insertvalue %313, %333[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %335 = llvm.insertvalue %314, %334[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %336 = llvm.mlir.constant(0 : index) : i64
    %337 = llvm.mlir.constant(4 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%336 : i64)
  ^bb28(%339: i64):  // 2 preds: ^bb27, ^bb29
    %340 = llvm.icmp "slt" %339, %337 : i64
    llvm.cond_br %340, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %341 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %342 = llvm.getelementptr %341[%339] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %343 = llvm.load %342 : !llvm.ptr<i64>
    %344 = llvm.extractvalue %298[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %345 = llvm.getelementptr %344[%339] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %346 = llvm.load %345 : !llvm.ptr<i64>
    %347 = llvm.icmp "eq" %343, %346 : i64
    %348 = llvm.extractvalue %335[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %349 = llvm.getelementptr %348[%339] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %347, %349 : !llvm.ptr<i1>
    %350 = llvm.add %339, %338  : i64
    llvm.br ^bb28(%350 : i64)
  ^bb30:  // pred: ^bb28
    %351 = llvm.mlir.constant(4 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.mlir.null : !llvm.ptr<i64>
    %354 = llvm.getelementptr %353[%351] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %355 = llvm.ptrtoint %354 : !llvm.ptr<i64> to i64
    %356 = llvm.mlir.constant(16 : index) : i64
    %357 = llvm.add %355, %356  : i64
    %358 = llvm.call @malloc(%357) : (i64) -> !llvm.ptr<i8>
    %359 = llvm.bitcast %358 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %360 = llvm.ptrtoint %359 : !llvm.ptr<i64> to i64
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.sub %356, %361  : i64
    %363 = llvm.add %360, %362  : i64
    %364 = llvm.urem %363, %356  : i64
    %365 = llvm.sub %363, %364  : i64
    %366 = llvm.inttoptr %365 : i64 to !llvm.ptr<i64>
    %367 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %368 = llvm.insertvalue %359, %367[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %369 = llvm.insertvalue %366, %368[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %370 = llvm.mlir.constant(0 : index) : i64
    %371 = llvm.insertvalue %370, %369[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %372 = llvm.insertvalue %351, %371[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %373 = llvm.insertvalue %352, %372[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %374 = llvm.mlir.constant(0 : index) : i64
    %375 = llvm.mlir.constant(4 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%374 : i64)
  ^bb31(%377: i64):  // 2 preds: ^bb30, ^bb32
    %378 = llvm.icmp "slt" %377, %375 : i64
    llvm.cond_br %378, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %379 = llvm.extractvalue %335[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %380 = llvm.getelementptr %379[%377] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %381 = llvm.load %380 : !llvm.ptr<i1>
    %382 = llvm.extractvalue %267[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %383 = llvm.getelementptr %382[%377] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %384 = llvm.load %383 : !llvm.ptr<i64>
    %385 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %386 = llvm.getelementptr %385[%377] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %387 = llvm.load %386 : !llvm.ptr<i64>
    %388 = llvm.select %381, %384, %387 : i1, i64
    %389 = llvm.extractvalue %373[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %390 = llvm.getelementptr %389[%377] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %388, %390 : !llvm.ptr<i64>
    %391 = llvm.add %377, %376  : i64
    llvm.br ^bb31(%391 : i64)
  ^bb33:  // pred: ^bb31
    %392 = llvm.mlir.constant(2 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.mlir.constant(2 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    %397 = llvm.mlir.constant(2 : index) : i64
    %398 = llvm.mlir.constant(2 : index) : i64
    %399 = llvm.mlir.constant(4 : index) : i64
    %400 = llvm.mlir.null : !llvm.ptr<i32>
    %401 = llvm.getelementptr %400[%399] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %402 = llvm.ptrtoint %401 : !llvm.ptr<i32> to i64
    %403 = llvm.mlir.constant(16 : index) : i64
    %404 = llvm.add %402, %403  : i64
    %405 = llvm.call @malloc(%404) : (i64) -> !llvm.ptr<i8>
    %406 = llvm.bitcast %405 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %407 = llvm.ptrtoint %406 : !llvm.ptr<i32> to i64
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.sub %403, %408  : i64
    %410 = llvm.add %407, %409  : i64
    %411 = llvm.urem %410, %403  : i64
    %412 = llvm.sub %410, %411  : i64
    %413 = llvm.inttoptr %412 : i64 to !llvm.ptr<i32>
    %414 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %415 = llvm.insertvalue %406, %414[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.insertvalue %413, %415[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.insertvalue %417, %416[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.insertvalue %392, %418[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.insertvalue %393, %419[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.insertvalue %394, %420[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.insertvalue %395, %421[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.insertvalue %398, %422[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.insertvalue %397, %423[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.insertvalue %395, %424[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.insertvalue %396, %425[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.mlir.constant(0 : index) : i64
    %428 = llvm.mlir.constant(2 : index) : i64
    %429 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%427 : i64)
  ^bb34(%430: i64):  // 2 preds: ^bb33, ^bb44
    %431 = llvm.icmp "slt" %430, %428 : i64
    llvm.cond_br %431, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %432 = llvm.mlir.constant(0 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%432 : i64)
  ^bb36(%435: i64):  // 2 preds: ^bb35, ^bb43
    %436 = llvm.icmp "slt" %435, %433 : i64
    llvm.cond_br %436, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %437 = llvm.mlir.constant(0 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%437 : i64)
  ^bb38(%440: i64):  // 2 preds: ^bb37, ^bb42
    %441 = llvm.icmp "slt" %440, %438 : i64
    llvm.cond_br %441, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %442 = llvm.mlir.constant(0 : index) : i64
    %443 = llvm.mlir.constant(2 : index) : i64
    %444 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%442 : i64)
  ^bb40(%445: i64):  // 2 preds: ^bb39, ^bb41
    %446 = llvm.icmp "slt" %445, %443 : i64
    llvm.cond_br %446, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %447 = llvm.extractvalue %199[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.mlir.constant(2 : index) : i64
    %449 = llvm.mul %430, %448  : i64
    %450 = llvm.mlir.constant(2 : index) : i64
    %451 = llvm.mul %14, %450  : i64
    %452 = llvm.add %449, %451  : i64
    %453 = llvm.mlir.constant(2 : index) : i64
    %454 = llvm.mul %14, %453  : i64
    %455 = llvm.add %452, %454  : i64
    %456 = llvm.add %455, %445  : i64
    %457 = llvm.getelementptr %447[%456] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %458 = llvm.load %457 : !llvm.ptr<i32>
    %459 = llvm.extractvalue %426[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %460 = llvm.mlir.constant(2 : index) : i64
    %461 = llvm.mul %430, %460  : i64
    %462 = llvm.mlir.constant(2 : index) : i64
    %463 = llvm.mul %435, %462  : i64
    %464 = llvm.add %461, %463  : i64
    %465 = llvm.mlir.constant(2 : index) : i64
    %466 = llvm.mul %440, %465  : i64
    %467 = llvm.add %464, %466  : i64
    %468 = llvm.add %467, %445  : i64
    %469 = llvm.getelementptr %459[%468] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %458, %469 : !llvm.ptr<i32>
    %470 = llvm.add %445, %444  : i64
    llvm.br ^bb40(%470 : i64)
  ^bb42:  // pred: ^bb40
    %471 = llvm.add %440, %439  : i64
    llvm.br ^bb38(%471 : i64)
  ^bb43:  // pred: ^bb38
    %472 = llvm.add %435, %434  : i64
    llvm.br ^bb36(%472 : i64)
  ^bb44:  // pred: ^bb36
    %473 = llvm.add %430, %429  : i64
    llvm.br ^bb34(%473 : i64)
  ^bb45:  // pred: ^bb34
    %474 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %475 = llvm.extractvalue %199[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.extractvalue %199[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.insertvalue %475, %474[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %478 = llvm.insertvalue %476, %477[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %479 = llvm.mlir.constant(0 : index) : i64
    %480 = llvm.insertvalue %479, %478[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %481 = llvm.mlir.constant(4 : index) : i64
    %482 = llvm.insertvalue %481, %480[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.insertvalue %483, %482[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %485 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
    %486 = llvm.insertvalue %82, %485[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %487 = llvm.insertvalue %426, %486[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %488 = llvm.insertvalue %484, %487[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    llvm.return %488 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v7_0", "v1_0", "v0_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(0 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.getelementptr %51[%62] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %63 : !llvm.ptr<ptr<i8>>
    %64 = llvm.mlir.constant(4 : i64) : i64
    %65 = llvm.call @omTensorCreateUntyped(%64) : (i64) -> !llvm.ptr<i8>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.bitcast %67 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %69 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.bitcast %69 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%65, %66, %68, %70) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %71 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%65, %71) : (!llvm.ptr<i8>, i64) -> ()
    %72 = llvm.call @omTensorGetShape(%65) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %73 = llvm.call @omTensorGetStrides(%65) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %74 = llvm.mlir.constant(0 : i64) : i64
    %75 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %72[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %73[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(1 : i64) : i64
    %80 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %72[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %73[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.mlir.constant(2 : i64) : i64
    %85 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.getelementptr %72[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %73[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.mlir.constant(3 : i64) : i64
    %90 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.getelementptr %72[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.getelementptr %73[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.getelementptr %51[%94] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %65, %95 : !llvm.ptr<ptr<i8>>
    %96 = llvm.mlir.constant(1 : i64) : i64
    %97 = llvm.call @omTensorCreateUntyped(%96) : (i64) -> !llvm.ptr<i8>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.bitcast %99 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %101 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.bitcast %101 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%97, %98, %100, %102) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %103 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%97, %103) : (!llvm.ptr<i8>, i64) -> ()
    %104 = llvm.call @omTensorGetShape(%97) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %105 = llvm.call @omTensorGetStrides(%97) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %106 = llvm.mlir.constant(0 : i64) : i64
    %107 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.getelementptr %104[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.getelementptr %105[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.mlir.constant(2 : i64) : i64
    %112 = llvm.getelementptr %51[%111] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %97, %112 : !llvm.ptr<ptr<i8>>
    %113 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %113 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<186 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<186 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

