module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_7(dense<6> : tensor<2x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_6(dense<[2, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_4(dense<[2, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<[2, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[2, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v2_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.insertvalue %arg6, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.insertvalue %arg7, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.insertvalue %arg8, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.mlir.constant(0 : i32) : i32
    %11 = llvm.mlir.constant(1 : i64) : i64
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %14 = llvm.bitcast %13 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %15 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %16 = llvm.insertvalue %14, %15[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %14, %16[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.insertvalue %18, %17[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.mlir.constant(4 : index) : i64
    %21 = llvm.insertvalue %20, %19[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.insertvalue %22, %21[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %25 = llvm.bitcast %24 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %26 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %27 = llvm.insertvalue %25, %26[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %28 = llvm.insertvalue %25, %27[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %29 = llvm.mlir.constant(0 : index) : i64
    %30 = llvm.insertvalue %29, %28[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %31 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %32 = llvm.bitcast %31 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %33 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %34 = llvm.insertvalue %32, %33[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(4 : index) : i64
    %39 = llvm.insertvalue %38, %37[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.insertvalue %40, %39[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %43 = llvm.bitcast %42 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %44 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %45 = llvm.insertvalue %43, %44[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.insertvalue %43, %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.constant(0 : index) : i64
    %48 = llvm.insertvalue %47, %46[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(4 : index) : i64
    %50 = llvm.insertvalue %49, %48[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i64>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %56 = llvm.insertvalue %54, %55[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %57 = llvm.insertvalue %54, %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.insertvalue %58, %57[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %60 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
    %61 = llvm.bitcast %60 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %62 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %63 = llvm.insertvalue %61, %62[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.insertvalue %61, %63[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.mlir.constant(4 : index) : i64
    %68 = llvm.insertvalue %67, %66[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<2 x array<1 x array<1 x array<1 x i32>>>>>
    %72 = llvm.bitcast %71 : !llvm.ptr<array<2 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %73 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %74 = llvm.insertvalue %72, %73[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %72, %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.insertvalue %76, %75[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(2 : index) : i64
    %79 = llvm.insertvalue %78, %77[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.insertvalue %80, %79[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.insertvalue %82, %81[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.insertvalue %84, %83[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.insertvalue %86, %85[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.insertvalue %88, %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.insertvalue %90, %89[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.insertvalue %92, %91[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(2 : index) : i64
    %95 = llvm.mlir.constant(2 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.constant(4 : index) : i64
    %100 = llvm.mlir.null : !llvm.ptr<i32>
    %101 = llvm.getelementptr %100[%99] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %102 = llvm.ptrtoint %101 : !llvm.ptr<i32> to i64
    %103 = llvm.mlir.constant(16 : index) : i64
    %104 = llvm.add %102, %103  : i64
    %105 = llvm.call @malloc(%104) : (i64) -> !llvm.ptr<i8>
    %106 = llvm.bitcast %105 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %107 = llvm.ptrtoint %106 : !llvm.ptr<i32> to i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.sub %103, %108  : i64
    %110 = llvm.add %107, %109  : i64
    %111 = llvm.urem %110, %103  : i64
    %112 = llvm.sub %110, %111  : i64
    %113 = llvm.inttoptr %112 : i64 to !llvm.ptr<i32>
    %114 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %115 = llvm.insertvalue %106, %114[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.insertvalue %113, %115[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.insertvalue %117, %116[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.insertvalue %94, %118[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.insertvalue %95, %119[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.insertvalue %96, %120[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.insertvalue %97, %121[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.insertvalue %95, %122[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.insertvalue %96, %123[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.insertvalue %97, %124[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %98, %125[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.mlir.constant(2 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%127 : i64)
  ^bb1(%130: i64):  // 2 preds: ^bb0, ^bb11
    %131 = llvm.icmp "slt" %130, %128 : i64
    llvm.cond_br %131, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.mlir.constant(2 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%132 : i64)
  ^bb3(%135: i64):  // 2 preds: ^bb2, ^bb10
    %136 = llvm.icmp "slt" %135, %133 : i64
    llvm.cond_br %136, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %137 = llvm.mlir.constant(0 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%137 : i64)
  ^bb5(%140: i64):  // 2 preds: ^bb4, ^bb9
    %141 = llvm.icmp "slt" %140, %138 : i64
    llvm.cond_br %141, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%142 : i64)
  ^bb7(%145: i64):  // 2 preds: ^bb6, ^bb8
    %146 = llvm.icmp "slt" %145, %143 : i64
    llvm.cond_br %146, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %147 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %148 = llvm.add %135, %140  : i64
    %149 = llvm.add %148, %145  : i64
    %150 = llvm.getelementptr %147[%149] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %151 = llvm.load %150 : !llvm.ptr<i32>
    %152 = llvm.extractvalue %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.add %130, %12  : i64
    %154 = llvm.add %153, %140  : i64
    %155 = llvm.add %154, %145  : i64
    %156 = llvm.getelementptr %152[%155] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %157 = llvm.load %156 : !llvm.ptr<i32>
    %158 = llvm.icmp "slt" %151, %157 : i32
    %159 = llvm.select %158, %151, %157 : i1, i32
    %160 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.mlir.constant(2 : index) : i64
    %162 = llvm.mul %130, %161  : i64
    %163 = llvm.add %162, %135  : i64
    %164 = llvm.add %163, %140  : i64
    %165 = llvm.add %164, %145  : i64
    %166 = llvm.getelementptr %160[%165] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %159, %166 : !llvm.ptr<i32>
    %167 = llvm.add %145, %144  : i64
    llvm.br ^bb7(%167 : i64)
  ^bb9:  // pred: ^bb7
    %168 = llvm.add %140, %139  : i64
    llvm.br ^bb5(%168 : i64)
  ^bb10:  // pred: ^bb5
    %169 = llvm.add %135, %134  : i64
    llvm.br ^bb3(%169 : i64)
  ^bb11:  // pred: ^bb3
    %170 = llvm.add %130, %129  : i64
    llvm.br ^bb1(%170 : i64)
  ^bb12:  // pred: ^bb1
    %171 = llvm.mlir.constant(2 : index) : i64
    %172 = llvm.mlir.constant(2 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(4 : index) : i64
    %177 = llvm.mlir.null : !llvm.ptr<i32>
    %178 = llvm.getelementptr %177[%176] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %179 = llvm.ptrtoint %178 : !llvm.ptr<i32> to i64
    %180 = llvm.mlir.constant(16 : index) : i64
    %181 = llvm.add %179, %180  : i64
    %182 = llvm.call @malloc(%181) : (i64) -> !llvm.ptr<i8>
    %183 = llvm.bitcast %182 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %184 = llvm.ptrtoint %183 : !llvm.ptr<i32> to i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.sub %180, %185  : i64
    %187 = llvm.add %184, %186  : i64
    %188 = llvm.urem %187, %180  : i64
    %189 = llvm.sub %187, %188  : i64
    %190 = llvm.inttoptr %189 : i64 to !llvm.ptr<i32>
    %191 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %192 = llvm.insertvalue %183, %191[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %190, %192[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.mlir.constant(0 : index) : i64
    %195 = llvm.insertvalue %194, %193[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.insertvalue %171, %195[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.insertvalue %172, %196[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %173, %197[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.insertvalue %174, %198[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.insertvalue %172, %199[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.insertvalue %173, %200[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.insertvalue %174, %201[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.insertvalue %175, %202[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.mlir.constant(0 : index) : i64
    %205 = llvm.mlir.constant(2 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%204 : i64)
  ^bb13(%207: i64):  // 2 preds: ^bb12, ^bb23
    %208 = llvm.icmp "slt" %207, %205 : i64
    llvm.cond_br %208, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.mlir.constant(2 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%209 : i64)
  ^bb15(%212: i64):  // 2 preds: ^bb14, ^bb22
    %213 = llvm.icmp "slt" %212, %210 : i64
    llvm.cond_br %213, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%214 : i64)
  ^bb17(%217: i64):  // 2 preds: ^bb16, ^bb21
    %218 = llvm.icmp "slt" %217, %215 : i64
    llvm.cond_br %218, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%219 : i64)
  ^bb19(%222: i64):  // 2 preds: ^bb18, ^bb20
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %224 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.mlir.constant(2 : index) : i64
    %226 = llvm.mul %207, %225  : i64
    %227 = llvm.add %226, %212  : i64
    %228 = llvm.add %227, %217  : i64
    %229 = llvm.add %228, %222  : i64
    %230 = llvm.getelementptr %224[%229] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %231 = llvm.load %230 : !llvm.ptr<i32>
    %232 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.mul %207, %233  : i64
    %235 = llvm.add %234, %212  : i64
    %236 = llvm.add %235, %217  : i64
    %237 = llvm.add %236, %222  : i64
    %238 = llvm.getelementptr %232[%237] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %239 = llvm.load %238 : !llvm.ptr<i32>
    %240 = llvm.add %231, %239  : i32
    %241 = llvm.extractvalue %203[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mul %207, %242  : i64
    %244 = llvm.add %243, %212  : i64
    %245 = llvm.add %244, %217  : i64
    %246 = llvm.add %245, %222  : i64
    %247 = llvm.getelementptr %241[%246] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %240, %247 : !llvm.ptr<i32>
    %248 = llvm.add %222, %221  : i64
    llvm.br ^bb19(%248 : i64)
  ^bb21:  // pred: ^bb19
    %249 = llvm.add %217, %216  : i64
    llvm.br ^bb17(%249 : i64)
  ^bb22:  // pred: ^bb17
    %250 = llvm.add %212, %211  : i64
    llvm.br ^bb15(%250 : i64)
  ^bb23:  // pred: ^bb15
    %251 = llvm.add %207, %206  : i64
    llvm.br ^bb13(%251 : i64)
  ^bb24:  // pred: ^bb13
    %252 = llvm.mlir.constant(4 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.null : !llvm.ptr<i64>
    %255 = llvm.getelementptr %254[%252] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %256 = llvm.ptrtoint %255 : !llvm.ptr<i64> to i64
    %257 = llvm.mlir.constant(16 : index) : i64
    %258 = llvm.add %256, %257  : i64
    %259 = llvm.call @malloc(%258) : (i64) -> !llvm.ptr<i8>
    %260 = llvm.bitcast %259 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %261 = llvm.ptrtoint %260 : !llvm.ptr<i64> to i64
    %262 = llvm.mlir.constant(1 : index) : i64
    %263 = llvm.sub %257, %262  : i64
    %264 = llvm.add %261, %263  : i64
    %265 = llvm.urem %264, %257  : i64
    %266 = llvm.sub %264, %265  : i64
    %267 = llvm.inttoptr %266 : i64 to !llvm.ptr<i64>
    %268 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %269 = llvm.insertvalue %260, %268[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.insertvalue %267, %269[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.mlir.constant(0 : index) : i64
    %272 = llvm.insertvalue %271, %270[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %273 = llvm.insertvalue %252, %272[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %274 = llvm.insertvalue %253, %273[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %275 = llvm.mlir.constant(0 : index) : i64
    %276 = llvm.mlir.constant(4 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%275 : i64)
  ^bb25(%278: i64):  // 2 preds: ^bb24, ^bb26
    %279 = llvm.icmp "slt" %278, %276 : i64
    llvm.cond_br %279, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %280 = llvm.extractvalue %274[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %281 = llvm.getelementptr %280[%278] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %11, %281 : !llvm.ptr<i64>
    %282 = llvm.add %278, %277  : i64
    llvm.br ^bb25(%282 : i64)
  ^bb27:  // pred: ^bb25
    %283 = llvm.mlir.constant(4 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.null : !llvm.ptr<i64>
    %286 = llvm.getelementptr %285[%283] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %287 = llvm.ptrtoint %286 : !llvm.ptr<i64> to i64
    %288 = llvm.mlir.constant(16 : index) : i64
    %289 = llvm.add %287, %288  : i64
    %290 = llvm.call @malloc(%289) : (i64) -> !llvm.ptr<i8>
    %291 = llvm.bitcast %290 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %292 = llvm.ptrtoint %291 : !llvm.ptr<i64> to i64
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.sub %288, %293  : i64
    %295 = llvm.add %292, %294  : i64
    %296 = llvm.urem %295, %288  : i64
    %297 = llvm.sub %295, %296  : i64
    %298 = llvm.inttoptr %297 : i64 to !llvm.ptr<i64>
    %299 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %300 = llvm.insertvalue %291, %299[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %301 = llvm.insertvalue %298, %300[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %302 = llvm.mlir.constant(0 : index) : i64
    %303 = llvm.insertvalue %302, %301[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.insertvalue %283, %303[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.insertvalue %284, %304[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.mlir.constant(0 : index) : i64
    %307 = llvm.mlir.constant(4 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%306 : i64)
  ^bb28(%309: i64):  // 2 preds: ^bb27, ^bb29
    %310 = llvm.icmp "slt" %309, %307 : i64
    llvm.cond_br %310, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %311 = llvm.extractvalue %274[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %312 = llvm.getelementptr %311[%309] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %313 = llvm.load %312 : !llvm.ptr<i64>
    %314 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %315 = llvm.load %314 : !llvm.ptr<i64>
    %316 = llvm.mul %313, %315  : i64
    %317 = llvm.extractvalue %305[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %318 = llvm.getelementptr %317[%309] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %316, %318 : !llvm.ptr<i64>
    %319 = llvm.add %309, %308  : i64
    llvm.br ^bb28(%319 : i64)
  ^bb30:  // pred: ^bb28
    %320 = llvm.mlir.constant(4 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mlir.null : !llvm.ptr<i1>
    %323 = llvm.getelementptr %322[%320] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %324 = llvm.ptrtoint %323 : !llvm.ptr<i1> to i64
    %325 = llvm.mlir.constant(16 : index) : i64
    %326 = llvm.add %324, %325  : i64
    %327 = llvm.call @malloc(%326) : (i64) -> !llvm.ptr<i8>
    %328 = llvm.bitcast %327 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %329 = llvm.ptrtoint %328 : !llvm.ptr<i1> to i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.sub %325, %330  : i64
    %332 = llvm.add %329, %331  : i64
    %333 = llvm.urem %332, %325  : i64
    %334 = llvm.sub %332, %333  : i64
    %335 = llvm.inttoptr %334 : i64 to !llvm.ptr<i1>
    %336 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %337 = llvm.insertvalue %328, %336[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %338 = llvm.insertvalue %335, %337[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %339 = llvm.mlir.constant(0 : index) : i64
    %340 = llvm.insertvalue %339, %338[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.insertvalue %320, %340[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %342 = llvm.insertvalue %321, %341[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %343 = llvm.mlir.constant(0 : index) : i64
    %344 = llvm.mlir.constant(4 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%343 : i64)
  ^bb31(%346: i64):  // 2 preds: ^bb30, ^bb32
    %347 = llvm.icmp "slt" %346, %344 : i64
    llvm.cond_br %347, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %348 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %349 = llvm.getelementptr %348[%346] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %350 = llvm.load %349 : !llvm.ptr<i64>
    %351 = llvm.extractvalue %305[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %352 = llvm.getelementptr %351[%346] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %353 = llvm.load %352 : !llvm.ptr<i64>
    %354 = llvm.icmp "eq" %350, %353 : i64
    %355 = llvm.extractvalue %342[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %356 = llvm.getelementptr %355[%346] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %354, %356 : !llvm.ptr<i1>
    %357 = llvm.add %346, %345  : i64
    llvm.br ^bb31(%357 : i64)
  ^bb33:  // pred: ^bb31
    %358 = llvm.mlir.constant(4 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.mlir.null : !llvm.ptr<i64>
    %361 = llvm.getelementptr %360[%358] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %362 = llvm.ptrtoint %361 : !llvm.ptr<i64> to i64
    %363 = llvm.mlir.constant(16 : index) : i64
    %364 = llvm.add %362, %363  : i64
    %365 = llvm.call @malloc(%364) : (i64) -> !llvm.ptr<i8>
    %366 = llvm.bitcast %365 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %367 = llvm.ptrtoint %366 : !llvm.ptr<i64> to i64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.sub %363, %368  : i64
    %370 = llvm.add %367, %369  : i64
    %371 = llvm.urem %370, %363  : i64
    %372 = llvm.sub %370, %371  : i64
    %373 = llvm.inttoptr %372 : i64 to !llvm.ptr<i64>
    %374 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %375 = llvm.insertvalue %366, %374[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %376 = llvm.insertvalue %373, %375[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.insertvalue %377, %376[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %379 = llvm.insertvalue %358, %378[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %380 = llvm.insertvalue %359, %379[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %381 = llvm.mlir.constant(0 : index) : i64
    %382 = llvm.mlir.constant(4 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%381 : i64)
  ^bb34(%384: i64):  // 2 preds: ^bb33, ^bb35
    %385 = llvm.icmp "slt" %384, %382 : i64
    llvm.cond_br %385, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %386 = llvm.extractvalue %342[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %387 = llvm.getelementptr %386[%384] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %388 = llvm.load %387 : !llvm.ptr<i1>
    %389 = llvm.extractvalue %274[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %390 = llvm.getelementptr %389[%384] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %391 = llvm.load %390 : !llvm.ptr<i64>
    %392 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %393 = llvm.getelementptr %392[%384] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %394 = llvm.load %393 : !llvm.ptr<i64>
    %395 = llvm.select %388, %391, %394 : i1, i64
    %396 = llvm.extractvalue %380[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %397 = llvm.getelementptr %396[%384] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %395, %397 : !llvm.ptr<i64>
    %398 = llvm.add %384, %383  : i64
    llvm.br ^bb34(%398 : i64)
  ^bb36:  // pred: ^bb34
    %399 = llvm.mlir.constant(2 : index) : i64
    %400 = llvm.mlir.constant(2 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.constant(4 : index) : i64
    %405 = llvm.mlir.null : !llvm.ptr<i32>
    %406 = llvm.getelementptr %405[%404] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %407 = llvm.ptrtoint %406 : !llvm.ptr<i32> to i64
    %408 = llvm.mlir.constant(16 : index) : i64
    %409 = llvm.add %407, %408  : i64
    %410 = llvm.call @malloc(%409) : (i64) -> !llvm.ptr<i8>
    %411 = llvm.bitcast %410 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %412 = llvm.ptrtoint %411 : !llvm.ptr<i32> to i64
    %413 = llvm.mlir.constant(1 : index) : i64
    %414 = llvm.sub %408, %413  : i64
    %415 = llvm.add %412, %414  : i64
    %416 = llvm.urem %415, %408  : i64
    %417 = llvm.sub %415, %416  : i64
    %418 = llvm.inttoptr %417 : i64 to !llvm.ptr<i32>
    %419 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %420 = llvm.insertvalue %411, %419[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.insertvalue %418, %420[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.mlir.constant(0 : index) : i64
    %423 = llvm.insertvalue %422, %421[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.insertvalue %399, %423[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.insertvalue %400, %424[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.insertvalue %401, %425[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.insertvalue %402, %426[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.insertvalue %400, %427[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.insertvalue %401, %428[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.insertvalue %402, %429[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.insertvalue %403, %430[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.mlir.constant(0 : index) : i64
    %433 = llvm.mlir.constant(2 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%432 : i64)
  ^bb37(%435: i64):  // 2 preds: ^bb36, ^bb47
    %436 = llvm.icmp "slt" %435, %433 : i64
    llvm.cond_br %436, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %437 = llvm.mlir.constant(0 : index) : i64
    %438 = llvm.mlir.constant(2 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%437 : i64)
  ^bb39(%440: i64):  // 2 preds: ^bb38, ^bb46
    %441 = llvm.icmp "slt" %440, %438 : i64
    llvm.cond_br %441, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %442 = llvm.mlir.constant(0 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    %444 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%442 : i64)
  ^bb41(%445: i64):  // 2 preds: ^bb40, ^bb45
    %446 = llvm.icmp "slt" %445, %443 : i64
    llvm.cond_br %446, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %447 = llvm.mlir.constant(0 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%447 : i64)
  ^bb43(%450: i64):  // 2 preds: ^bb42, ^bb44
    %451 = llvm.icmp "slt" %450, %448 : i64
    llvm.cond_br %451, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %452 = llvm.extractvalue %203[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.mlir.constant(2 : index) : i64
    %454 = llvm.mul %435, %453  : i64
    %455 = llvm.add %454, %440  : i64
    %456 = llvm.add %455, %12  : i64
    %457 = llvm.add %456, %12  : i64
    %458 = llvm.getelementptr %452[%457] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %459 = llvm.load %458 : !llvm.ptr<i32>
    %460 = llvm.extractvalue %431[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.mlir.constant(2 : index) : i64
    %462 = llvm.mul %435, %461  : i64
    %463 = llvm.add %462, %440  : i64
    %464 = llvm.add %463, %445  : i64
    %465 = llvm.add %464, %450  : i64
    %466 = llvm.getelementptr %460[%465] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %459, %466 : !llvm.ptr<i32>
    %467 = llvm.add %450, %449  : i64
    llvm.br ^bb43(%467 : i64)
  ^bb45:  // pred: ^bb43
    %468 = llvm.add %445, %444  : i64
    llvm.br ^bb41(%468 : i64)
  ^bb46:  // pred: ^bb41
    %469 = llvm.add %440, %439  : i64
    llvm.br ^bb39(%469 : i64)
  ^bb47:  // pred: ^bb39
    %470 = llvm.add %435, %434  : i64
    llvm.br ^bb37(%470 : i64)
  ^bb48:  // pred: ^bb37
    %471 = llvm.mlir.constant(4 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    %473 = llvm.mlir.null : !llvm.ptr<i64>
    %474 = llvm.getelementptr %473[%471] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %475 = llvm.ptrtoint %474 : !llvm.ptr<i64> to i64
    %476 = llvm.mlir.constant(16 : index) : i64
    %477 = llvm.add %475, %476  : i64
    %478 = llvm.call @malloc(%477) : (i64) -> !llvm.ptr<i8>
    %479 = llvm.bitcast %478 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %480 = llvm.ptrtoint %479 : !llvm.ptr<i64> to i64
    %481 = llvm.mlir.constant(1 : index) : i64
    %482 = llvm.sub %476, %481  : i64
    %483 = llvm.add %480, %482  : i64
    %484 = llvm.urem %483, %476  : i64
    %485 = llvm.sub %483, %484  : i64
    %486 = llvm.inttoptr %485 : i64 to !llvm.ptr<i64>
    %487 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %488 = llvm.insertvalue %479, %487[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %489 = llvm.insertvalue %486, %488[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %490 = llvm.mlir.constant(0 : index) : i64
    %491 = llvm.insertvalue %490, %489[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %492 = llvm.insertvalue %471, %491[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %493 = llvm.insertvalue %472, %492[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %494 = llvm.mlir.constant(0 : index) : i64
    %495 = llvm.mlir.constant(4 : index) : i64
    %496 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%494 : i64)
  ^bb49(%497: i64):  // 2 preds: ^bb48, ^bb50
    %498 = llvm.icmp "slt" %497, %495 : i64
    llvm.cond_br %498, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %499 = llvm.extractvalue %493[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %500 = llvm.getelementptr %499[%497] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %11, %500 : !llvm.ptr<i64>
    %501 = llvm.add %497, %496  : i64
    llvm.br ^bb49(%501 : i64)
  ^bb51:  // pred: ^bb49
    %502 = llvm.mlir.constant(4 : index) : i64
    %503 = llvm.mlir.constant(1 : index) : i64
    %504 = llvm.mlir.null : !llvm.ptr<i64>
    %505 = llvm.getelementptr %504[%502] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %506 = llvm.ptrtoint %505 : !llvm.ptr<i64> to i64
    %507 = llvm.mlir.constant(16 : index) : i64
    %508 = llvm.add %506, %507  : i64
    %509 = llvm.call @malloc(%508) : (i64) -> !llvm.ptr<i8>
    %510 = llvm.bitcast %509 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %511 = llvm.ptrtoint %510 : !llvm.ptr<i64> to i64
    %512 = llvm.mlir.constant(1 : index) : i64
    %513 = llvm.sub %507, %512  : i64
    %514 = llvm.add %511, %513  : i64
    %515 = llvm.urem %514, %507  : i64
    %516 = llvm.sub %514, %515  : i64
    %517 = llvm.inttoptr %516 : i64 to !llvm.ptr<i64>
    %518 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %519 = llvm.insertvalue %510, %518[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %520 = llvm.insertvalue %517, %519[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %521 = llvm.mlir.constant(0 : index) : i64
    %522 = llvm.insertvalue %521, %520[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %523 = llvm.insertvalue %502, %522[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %524 = llvm.insertvalue %503, %523[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %525 = llvm.mlir.constant(0 : index) : i64
    %526 = llvm.mlir.constant(4 : index) : i64
    %527 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%525 : i64)
  ^bb52(%528: i64):  // 2 preds: ^bb51, ^bb53
    %529 = llvm.icmp "slt" %528, %526 : i64
    llvm.cond_br %529, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %530 = llvm.extractvalue %493[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %531 = llvm.getelementptr %530[%528] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %532 = llvm.load %531 : !llvm.ptr<i64>
    %533 = llvm.extractvalue %30[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %534 = llvm.load %533 : !llvm.ptr<i64>
    %535 = llvm.mul %532, %534  : i64
    %536 = llvm.extractvalue %524[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %537 = llvm.getelementptr %536[%528] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %535, %537 : !llvm.ptr<i64>
    %538 = llvm.add %528, %527  : i64
    llvm.br ^bb52(%538 : i64)
  ^bb54:  // pred: ^bb52
    %539 = llvm.mlir.constant(4 : index) : i64
    %540 = llvm.mlir.constant(1 : index) : i64
    %541 = llvm.mlir.null : !llvm.ptr<i1>
    %542 = llvm.getelementptr %541[%539] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %543 = llvm.ptrtoint %542 : !llvm.ptr<i1> to i64
    %544 = llvm.mlir.constant(16 : index) : i64
    %545 = llvm.add %543, %544  : i64
    %546 = llvm.call @malloc(%545) : (i64) -> !llvm.ptr<i8>
    %547 = llvm.bitcast %546 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %548 = llvm.ptrtoint %547 : !llvm.ptr<i1> to i64
    %549 = llvm.mlir.constant(1 : index) : i64
    %550 = llvm.sub %544, %549  : i64
    %551 = llvm.add %548, %550  : i64
    %552 = llvm.urem %551, %544  : i64
    %553 = llvm.sub %551, %552  : i64
    %554 = llvm.inttoptr %553 : i64 to !llvm.ptr<i1>
    %555 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %556 = llvm.insertvalue %547, %555[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %557 = llvm.insertvalue %554, %556[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %558 = llvm.mlir.constant(0 : index) : i64
    %559 = llvm.insertvalue %558, %557[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %560 = llvm.insertvalue %539, %559[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %561 = llvm.insertvalue %540, %560[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %562 = llvm.mlir.constant(0 : index) : i64
    %563 = llvm.mlir.constant(4 : index) : i64
    %564 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%562 : i64)
  ^bb55(%565: i64):  // 2 preds: ^bb54, ^bb56
    %566 = llvm.icmp "slt" %565, %563 : i64
    llvm.cond_br %566, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %567 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %568 = llvm.getelementptr %567[%565] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %569 = llvm.load %568 : !llvm.ptr<i64>
    %570 = llvm.extractvalue %524[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %571 = llvm.getelementptr %570[%565] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %572 = llvm.load %571 : !llvm.ptr<i64>
    %573 = llvm.icmp "eq" %569, %572 : i64
    %574 = llvm.extractvalue %561[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %575 = llvm.getelementptr %574[%565] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %573, %575 : !llvm.ptr<i1>
    %576 = llvm.add %565, %564  : i64
    llvm.br ^bb55(%576 : i64)
  ^bb57:  // pred: ^bb55
    %577 = llvm.mlir.constant(4 : index) : i64
    %578 = llvm.mlir.constant(1 : index) : i64
    %579 = llvm.mlir.null : !llvm.ptr<i64>
    %580 = llvm.getelementptr %579[%577] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %581 = llvm.ptrtoint %580 : !llvm.ptr<i64> to i64
    %582 = llvm.mlir.constant(16 : index) : i64
    %583 = llvm.add %581, %582  : i64
    %584 = llvm.call @malloc(%583) : (i64) -> !llvm.ptr<i8>
    %585 = llvm.bitcast %584 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %586 = llvm.ptrtoint %585 : !llvm.ptr<i64> to i64
    %587 = llvm.mlir.constant(1 : index) : i64
    %588 = llvm.sub %582, %587  : i64
    %589 = llvm.add %586, %588  : i64
    %590 = llvm.urem %589, %582  : i64
    %591 = llvm.sub %589, %590  : i64
    %592 = llvm.inttoptr %591 : i64 to !llvm.ptr<i64>
    %593 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %594 = llvm.insertvalue %585, %593[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %595 = llvm.insertvalue %592, %594[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %596 = llvm.mlir.constant(0 : index) : i64
    %597 = llvm.insertvalue %596, %595[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %598 = llvm.insertvalue %577, %597[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %599 = llvm.insertvalue %578, %598[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %600 = llvm.mlir.constant(0 : index) : i64
    %601 = llvm.mlir.constant(4 : index) : i64
    %602 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%600 : i64)
  ^bb58(%603: i64):  // 2 preds: ^bb57, ^bb59
    %604 = llvm.icmp "slt" %603, %601 : i64
    llvm.cond_br %604, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %605 = llvm.extractvalue %561[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %606 = llvm.getelementptr %605[%603] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %607 = llvm.load %606 : !llvm.ptr<i1>
    %608 = llvm.extractvalue %493[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %609 = llvm.getelementptr %608[%603] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %610 = llvm.load %609 : !llvm.ptr<i64>
    %611 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %612 = llvm.getelementptr %611[%603] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %613 = llvm.load %612 : !llvm.ptr<i64>
    %614 = llvm.select %607, %610, %613 : i1, i64
    %615 = llvm.extractvalue %599[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %616 = llvm.getelementptr %615[%603] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %614, %616 : !llvm.ptr<i64>
    %617 = llvm.add %603, %602  : i64
    llvm.br ^bb58(%617 : i64)
  ^bb60:  // pred: ^bb58
    %618 = llvm.mlir.constant(2 : index) : i64
    %619 = llvm.mlir.constant(2 : index) : i64
    %620 = llvm.mlir.constant(1 : index) : i64
    %621 = llvm.mlir.constant(1 : index) : i64
    %622 = llvm.mlir.constant(1 : index) : i64
    %623 = llvm.mlir.constant(4 : index) : i64
    %624 = llvm.mlir.null : !llvm.ptr<i32>
    %625 = llvm.getelementptr %624[%623] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %626 = llvm.ptrtoint %625 : !llvm.ptr<i32> to i64
    %627 = llvm.mlir.constant(16 : index) : i64
    %628 = llvm.add %626, %627  : i64
    %629 = llvm.call @malloc(%628) : (i64) -> !llvm.ptr<i8>
    %630 = llvm.bitcast %629 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %631 = llvm.ptrtoint %630 : !llvm.ptr<i32> to i64
    %632 = llvm.mlir.constant(1 : index) : i64
    %633 = llvm.sub %627, %632  : i64
    %634 = llvm.add %631, %633  : i64
    %635 = llvm.urem %634, %627  : i64
    %636 = llvm.sub %634, %635  : i64
    %637 = llvm.inttoptr %636 : i64 to !llvm.ptr<i32>
    %638 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %639 = llvm.insertvalue %630, %638[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %640 = llvm.insertvalue %637, %639[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %641 = llvm.mlir.constant(0 : index) : i64
    %642 = llvm.insertvalue %641, %640[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %643 = llvm.insertvalue %618, %642[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %644 = llvm.insertvalue %619, %643[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %645 = llvm.insertvalue %620, %644[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %646 = llvm.insertvalue %621, %645[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %647 = llvm.insertvalue %619, %646[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %648 = llvm.insertvalue %620, %647[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %649 = llvm.insertvalue %621, %648[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %650 = llvm.insertvalue %622, %649[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %651 = llvm.mlir.constant(0 : index) : i64
    %652 = llvm.mlir.constant(2 : index) : i64
    %653 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%651 : i64)
  ^bb61(%654: i64):  // 2 preds: ^bb60, ^bb71
    %655 = llvm.icmp "slt" %654, %652 : i64
    llvm.cond_br %655, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %656 = llvm.mlir.constant(0 : index) : i64
    %657 = llvm.mlir.constant(2 : index) : i64
    %658 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%656 : i64)
  ^bb63(%659: i64):  // 2 preds: ^bb62, ^bb70
    %660 = llvm.icmp "slt" %659, %657 : i64
    llvm.cond_br %660, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %661 = llvm.mlir.constant(0 : index) : i64
    %662 = llvm.mlir.constant(1 : index) : i64
    %663 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%661 : i64)
  ^bb65(%664: i64):  // 2 preds: ^bb64, ^bb69
    %665 = llvm.icmp "slt" %664, %662 : i64
    llvm.cond_br %665, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %666 = llvm.mlir.constant(0 : index) : i64
    %667 = llvm.mlir.constant(1 : index) : i64
    %668 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%666 : i64)
  ^bb67(%669: i64):  // 2 preds: ^bb66, ^bb68
    %670 = llvm.icmp "slt" %669, %667 : i64
    llvm.cond_br %670, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %671 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %672 = llvm.mlir.constant(2 : index) : i64
    %673 = llvm.mul %654, %672  : i64
    %674 = llvm.add %673, %659  : i64
    %675 = llvm.add %674, %12  : i64
    %676 = llvm.add %675, %12  : i64
    %677 = llvm.getelementptr %671[%676] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %678 = llvm.load %677 : !llvm.ptr<i32>
    %679 = llvm.extractvalue %650[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %680 = llvm.mlir.constant(2 : index) : i64
    %681 = llvm.mul %654, %680  : i64
    %682 = llvm.add %681, %659  : i64
    %683 = llvm.add %682, %664  : i64
    %684 = llvm.add %683, %669  : i64
    %685 = llvm.getelementptr %679[%684] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %678, %685 : !llvm.ptr<i32>
    %686 = llvm.add %669, %668  : i64
    llvm.br ^bb67(%686 : i64)
  ^bb69:  // pred: ^bb67
    %687 = llvm.add %664, %663  : i64
    llvm.br ^bb65(%687 : i64)
  ^bb70:  // pred: ^bb65
    %688 = llvm.add %659, %658  : i64
    llvm.br ^bb63(%688 : i64)
  ^bb71:  // pred: ^bb63
    %689 = llvm.add %654, %653  : i64
    llvm.br ^bb61(%689 : i64)
  ^bb72:  // pred: ^bb61
    %690 = llvm.mlir.constant(2 : index) : i64
    %691 = llvm.mlir.constant(2 : index) : i64
    %692 = llvm.mlir.constant(1 : index) : i64
    %693 = llvm.mlir.constant(1 : index) : i64
    %694 = llvm.mlir.constant(1 : index) : i64
    %695 = llvm.mlir.constant(4 : index) : i64
    %696 = llvm.mlir.null : !llvm.ptr<i1>
    %697 = llvm.getelementptr %696[%695] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %698 = llvm.ptrtoint %697 : !llvm.ptr<i1> to i64
    %699 = llvm.mlir.constant(16 : index) : i64
    %700 = llvm.add %698, %699  : i64
    %701 = llvm.call @malloc(%700) : (i64) -> !llvm.ptr<i8>
    %702 = llvm.bitcast %701 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %703 = llvm.ptrtoint %702 : !llvm.ptr<i1> to i64
    %704 = llvm.mlir.constant(1 : index) : i64
    %705 = llvm.sub %699, %704  : i64
    %706 = llvm.add %703, %705  : i64
    %707 = llvm.urem %706, %699  : i64
    %708 = llvm.sub %706, %707  : i64
    %709 = llvm.inttoptr %708 : i64 to !llvm.ptr<i1>
    %710 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %711 = llvm.insertvalue %702, %710[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %712 = llvm.insertvalue %709, %711[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %713 = llvm.mlir.constant(0 : index) : i64
    %714 = llvm.insertvalue %713, %712[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %715 = llvm.insertvalue %690, %714[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %716 = llvm.insertvalue %691, %715[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %717 = llvm.insertvalue %692, %716[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %718 = llvm.insertvalue %693, %717[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %719 = llvm.insertvalue %691, %718[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %720 = llvm.insertvalue %692, %719[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %721 = llvm.insertvalue %693, %720[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %722 = llvm.insertvalue %694, %721[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %723 = llvm.mlir.constant(0 : index) : i64
    %724 = llvm.mlir.constant(2 : index) : i64
    %725 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%723 : i64)
  ^bb73(%726: i64):  // 2 preds: ^bb72, ^bb83
    %727 = llvm.icmp "slt" %726, %724 : i64
    llvm.cond_br %727, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %728 = llvm.mlir.constant(0 : index) : i64
    %729 = llvm.mlir.constant(2 : index) : i64
    %730 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%728 : i64)
  ^bb75(%731: i64):  // 2 preds: ^bb74, ^bb82
    %732 = llvm.icmp "slt" %731, %729 : i64
    llvm.cond_br %732, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %733 = llvm.mlir.constant(0 : index) : i64
    %734 = llvm.mlir.constant(1 : index) : i64
    %735 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%733 : i64)
  ^bb77(%736: i64):  // 2 preds: ^bb76, ^bb81
    %737 = llvm.icmp "slt" %736, %734 : i64
    llvm.cond_br %737, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %738 = llvm.mlir.constant(0 : index) : i64
    %739 = llvm.mlir.constant(1 : index) : i64
    %740 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%738 : i64)
  ^bb79(%741: i64):  // 2 preds: ^bb78, ^bb80
    %742 = llvm.icmp "slt" %741, %739 : i64
    llvm.cond_br %742, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %743 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %744 = llvm.mlir.constant(2 : index) : i64
    %745 = llvm.mul %726, %744  : i64
    %746 = llvm.add %745, %731  : i64
    %747 = llvm.add %746, %736  : i64
    %748 = llvm.add %747, %741  : i64
    %749 = llvm.getelementptr %743[%748] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %750 = llvm.load %749 : !llvm.ptr<i32>
    %751 = llvm.icmp "ne" %750, %10 : i32
    %752 = llvm.extractvalue %722[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %753 = llvm.mlir.constant(2 : index) : i64
    %754 = llvm.mul %726, %753  : i64
    %755 = llvm.add %754, %731  : i64
    %756 = llvm.add %755, %736  : i64
    %757 = llvm.add %756, %741  : i64
    %758 = llvm.getelementptr %752[%757] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %751, %758 : !llvm.ptr<i1>
    %759 = llvm.add %741, %740  : i64
    llvm.br ^bb79(%759 : i64)
  ^bb81:  // pred: ^bb79
    %760 = llvm.add %736, %735  : i64
    llvm.br ^bb77(%760 : i64)
  ^bb82:  // pred: ^bb77
    %761 = llvm.add %731, %730  : i64
    llvm.br ^bb75(%761 : i64)
  ^bb83:  // pred: ^bb75
    %762 = llvm.add %726, %725  : i64
    llvm.br ^bb73(%762 : i64)
  ^bb84:  // pred: ^bb73
    %763 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %764 = llvm.insertvalue %431, %763[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %765 = llvm.insertvalue %650, %764[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %766 = llvm.insertvalue %722, %765[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %766 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v2_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %10, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %36, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %37 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %38 = llvm.extractvalue %37[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %39 = llvm.extractvalue %37[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %40 = llvm.extractvalue %37[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %41 = llvm.mlir.constant(3 : i64) : i64
    %42 = llvm.mlir.constant(24 : i64) : i64
    %43 = llvm.call @malloc(%42) : (i64) -> !llvm.ptr<i8>
    %44 = llvm.bitcast %43 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %45 = llvm.mlir.constant(4 : i64) : i64
    %46 = llvm.call @omTensorCreateUntyped(%45) : (i64) -> !llvm.ptr<i8>
    %47 = llvm.mlir.constant(1 : i64) : i64
    %48 = llvm.extractvalue %38[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.bitcast %48 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %50 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.bitcast %50 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%46, %47, %49, %51) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %52 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%46, %52) : (!llvm.ptr<i8>, i64) -> ()
    %53 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %54 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %55 = llvm.mlir.constant(0 : i64) : i64
    %56 = llvm.extractvalue %38[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.getelementptr %53[%55] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %56, %57 : !llvm.ptr<i64>
    %58 = llvm.extractvalue %38[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.getelementptr %54[%55] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %58, %59 : !llvm.ptr<i64>
    %60 = llvm.mlir.constant(1 : i64) : i64
    %61 = llvm.extractvalue %38[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.getelementptr %53[%60] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %61, %62 : !llvm.ptr<i64>
    %63 = llvm.extractvalue %38[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %54[%60] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.mlir.constant(2 : i64) : i64
    %66 = llvm.extractvalue %38[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.getelementptr %53[%65] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %66, %67 : !llvm.ptr<i64>
    %68 = llvm.extractvalue %38[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %54[%65] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.mlir.constant(3 : i64) : i64
    %71 = llvm.extractvalue %38[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.getelementptr %53[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.extractvalue %38[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %54[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.mlir.constant(0 : i64) : i64
    %76 = llvm.getelementptr %44[%75] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %46, %76 : !llvm.ptr<ptr<i8>>
    %77 = llvm.mlir.constant(4 : i64) : i64
    %78 = llvm.call @omTensorCreateUntyped(%77) : (i64) -> !llvm.ptr<i8>
    %79 = llvm.mlir.constant(1 : i64) : i64
    %80 = llvm.extractvalue %39[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.bitcast %80 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %82 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.bitcast %82 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%78, %79, %81, %83) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %84 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%78, %84) : (!llvm.ptr<i8>, i64) -> ()
    %85 = llvm.call @omTensorGetShape(%78) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %86 = llvm.call @omTensorGetStrides(%78) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.mlir.constant(0 : i64) : i64
    %88 = llvm.extractvalue %39[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %85[%87] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %88, %89 : !llvm.ptr<i64>
    %90 = llvm.extractvalue %39[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.getelementptr %86[%87] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.mlir.constant(1 : i64) : i64
    %93 = llvm.extractvalue %39[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.getelementptr %85[%92] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %93, %94 : !llvm.ptr<i64>
    %95 = llvm.extractvalue %39[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %86[%92] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.mlir.constant(2 : i64) : i64
    %98 = llvm.extractvalue %39[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.getelementptr %85[%97] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %98, %99 : !llvm.ptr<i64>
    %100 = llvm.extractvalue %39[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %86[%97] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.mlir.constant(3 : i64) : i64
    %103 = llvm.extractvalue %39[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %85[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.extractvalue %39[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %86[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.getelementptr %44[%107] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %78, %108 : !llvm.ptr<ptr<i8>>
    %109 = llvm.mlir.constant(4 : i64) : i64
    %110 = llvm.call @omTensorCreateUntyped(%109) : (i64) -> !llvm.ptr<i8>
    %111 = llvm.mlir.constant(1 : i64) : i64
    %112 = llvm.extractvalue %40[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.bitcast %112 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %114 = llvm.extractvalue %40[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.bitcast %114 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%110, %111, %113, %115) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %116 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%110, %116) : (!llvm.ptr<i8>, i64) -> ()
    %117 = llvm.call @omTensorGetShape(%110) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %118 = llvm.call @omTensorGetStrides(%110) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %119 = llvm.mlir.constant(0 : i64) : i64
    %120 = llvm.extractvalue %40[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %117[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.extractvalue %40[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %118[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.mlir.constant(1 : i64) : i64
    %125 = llvm.extractvalue %40[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.getelementptr %117[%124] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %125, %126 : !llvm.ptr<i64>
    %127 = llvm.extractvalue %40[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %118[%124] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.mlir.constant(2 : i64) : i64
    %130 = llvm.extractvalue %40[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.getelementptr %117[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.extractvalue %40[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %118[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.mlir.constant(3 : i64) : i64
    %135 = llvm.extractvalue %40[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %117[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %40[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %118[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.mlir.constant(2 : i64) : i64
    %140 = llvm.getelementptr %44[%139] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %110, %140 : !llvm.ptr<ptr<i8>>
    %141 = llvm.call @omTensorListCreate(%44, %41, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %141 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<68 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<68 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<210 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<210 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

