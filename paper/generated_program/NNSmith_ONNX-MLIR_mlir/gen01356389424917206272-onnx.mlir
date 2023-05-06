module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22f64\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<[1, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<[[[[3, 3], [3, 6]]]]> : tensor<1x1x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<2 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: !llvm.ptr<i1>, %arg4: !llvm.ptr<i1>, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0", "v1_0"], llvm.emit_c_interface, output_names = ["v0_0", "v7_0", "v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    %5 = llvm.insertvalue %arg3, %4[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.insertvalue %arg5, %6[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.insertvalue %arg7, %9[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.insertvalue %arg8, %11[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %13 = llvm.insertvalue %arg11, %12[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.mlir.constant(0 : i32) : i32
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(1 : i64) : i64
    %17 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
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
    %28 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %35 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x array<1 x array<2 x array<2 x i32>>>>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<1 x array<1 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.insertvalue %42, %41[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(4 : index) : i64
    %45 = llvm.insertvalue %44, %43[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(4 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(2 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(2 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.constant(2 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %59 = llvm.bitcast %58 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %60 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %61 = llvm.insertvalue %59, %60[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.insertvalue %59, %61[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.insertvalue %63, %62[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.constant(4 : index) : i64
    %66 = llvm.insertvalue %65, %64[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.mlir.constant(4 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.mlir.null : !llvm.ptr<i64>
    %72 = llvm.getelementptr %71[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.ptrtoint %72 : !llvm.ptr<i64> to i64
    %74 = llvm.mlir.constant(16 : index) : i64
    %75 = llvm.add %73, %74  : i64
    %76 = llvm.call @malloc(%75) : (i64) -> !llvm.ptr<i8>
    %77 = llvm.bitcast %76 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %78 = llvm.ptrtoint %77 : !llvm.ptr<i64> to i64
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.sub %74, %79  : i64
    %81 = llvm.add %78, %80  : i64
    %82 = llvm.urem %81, %74  : i64
    %83 = llvm.sub %81, %82  : i64
    %84 = llvm.inttoptr %83 : i64 to !llvm.ptr<i64>
    %85 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %86 = llvm.insertvalue %77, %85[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.insertvalue %84, %86[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.insertvalue %88, %87[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.insertvalue %69, %89[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.insertvalue %70, %90[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.mlir.constant(0 : index) : i64
    %93 = llvm.mlir.constant(4 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%92 : i64)
  ^bb1(%95: i64):  // 2 preds: ^bb0, ^bb2
    %96 = llvm.icmp "slt" %95, %93 : i64
    llvm.cond_br %96, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %97 = llvm.extractvalue %91[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.getelementptr %97[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %16, %98 : !llvm.ptr<i64>
    %99 = llvm.add %95, %94  : i64
    llvm.br ^bb1(%99 : i64)
  ^bb3:  // pred: ^bb1
    %100 = llvm.mlir.constant(4 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.null : !llvm.ptr<i64>
    %103 = llvm.getelementptr %102[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %104 = llvm.ptrtoint %103 : !llvm.ptr<i64> to i64
    %105 = llvm.mlir.constant(16 : index) : i64
    %106 = llvm.add %104, %105  : i64
    %107 = llvm.call @malloc(%106) : (i64) -> !llvm.ptr<i8>
    %108 = llvm.bitcast %107 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %109 = llvm.ptrtoint %108 : !llvm.ptr<i64> to i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.sub %105, %110  : i64
    %112 = llvm.add %109, %111  : i64
    %113 = llvm.urem %112, %105  : i64
    %114 = llvm.sub %112, %113  : i64
    %115 = llvm.inttoptr %114 : i64 to !llvm.ptr<i64>
    %116 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %117 = llvm.insertvalue %108, %116[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.insertvalue %115, %117[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.insertvalue %119, %118[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %121 = llvm.insertvalue %100, %120[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %122 = llvm.insertvalue %101, %121[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.mlir.constant(4 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%123 : i64)
  ^bb4(%126: i64):  // 2 preds: ^bb3, ^bb5
    %127 = llvm.icmp "slt" %126, %124 : i64
    llvm.cond_br %127, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %128 = llvm.extractvalue %91[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.getelementptr %128[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %130 = llvm.load %129 : !llvm.ptr<i64>
    %131 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %132 = llvm.load %131 : !llvm.ptr<i64>
    %133 = llvm.mul %130, %132  : i64
    %134 = llvm.extractvalue %122[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.getelementptr %134[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %135 : !llvm.ptr<i64>
    %136 = llvm.add %126, %125  : i64
    llvm.br ^bb4(%136 : i64)
  ^bb6:  // pred: ^bb4
    %137 = llvm.mlir.constant(4 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.null : !llvm.ptr<i1>
    %140 = llvm.getelementptr %139[%137] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %141 = llvm.ptrtoint %140 : !llvm.ptr<i1> to i64
    %142 = llvm.mlir.constant(16 : index) : i64
    %143 = llvm.add %141, %142  : i64
    %144 = llvm.call @malloc(%143) : (i64) -> !llvm.ptr<i8>
    %145 = llvm.bitcast %144 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %146 = llvm.ptrtoint %145 : !llvm.ptr<i1> to i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.sub %142, %147  : i64
    %149 = llvm.add %146, %148  : i64
    %150 = llvm.urem %149, %142  : i64
    %151 = llvm.sub %149, %150  : i64
    %152 = llvm.inttoptr %151 : i64 to !llvm.ptr<i1>
    %153 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %154 = llvm.insertvalue %145, %153[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.insertvalue %152, %154[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.insertvalue %156, %155[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.insertvalue %137, %157[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.insertvalue %138, %158[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.mlir.constant(4 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%160 : i64)
  ^bb7(%163: i64):  // 2 preds: ^bb6, ^bb8
    %164 = llvm.icmp "slt" %163, %161 : i64
    llvm.cond_br %164, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %165 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.getelementptr %165[%163] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %167 = llvm.load %166 : !llvm.ptr<i64>
    %168 = llvm.extractvalue %122[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.getelementptr %168[%163] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %170 = llvm.load %169 : !llvm.ptr<i64>
    %171 = llvm.icmp "eq" %167, %170 : i64
    %172 = llvm.extractvalue %159[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.getelementptr %172[%163] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %171, %173 : !llvm.ptr<i1>
    %174 = llvm.add %163, %162  : i64
    llvm.br ^bb7(%174 : i64)
  ^bb9:  // pred: ^bb7
    %175 = llvm.mlir.constant(4 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.null : !llvm.ptr<i64>
    %178 = llvm.getelementptr %177[%175] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %179 = llvm.ptrtoint %178 : !llvm.ptr<i64> to i64
    %180 = llvm.mlir.constant(16 : index) : i64
    %181 = llvm.add %179, %180  : i64
    %182 = llvm.call @malloc(%181) : (i64) -> !llvm.ptr<i8>
    %183 = llvm.bitcast %182 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %184 = llvm.ptrtoint %183 : !llvm.ptr<i64> to i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.sub %180, %185  : i64
    %187 = llvm.add %184, %186  : i64
    %188 = llvm.urem %187, %180  : i64
    %189 = llvm.sub %187, %188  : i64
    %190 = llvm.inttoptr %189 : i64 to !llvm.ptr<i64>
    %191 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %192 = llvm.insertvalue %183, %191[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %193 = llvm.insertvalue %190, %192[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %194 = llvm.mlir.constant(0 : index) : i64
    %195 = llvm.insertvalue %194, %193[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.insertvalue %175, %195[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %197 = llvm.insertvalue %176, %196[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.mlir.constant(4 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%198 : i64)
  ^bb10(%201: i64):  // 2 preds: ^bb9, ^bb11
    %202 = llvm.icmp "slt" %201, %199 : i64
    llvm.cond_br %202, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %203 = llvm.extractvalue %159[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.getelementptr %203[%201] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %205 = llvm.load %204 : !llvm.ptr<i1>
    %206 = llvm.extractvalue %91[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %207 = llvm.getelementptr %206[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %208 = llvm.load %207 : !llvm.ptr<i64>
    %209 = llvm.extractvalue %68[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %210 = llvm.getelementptr %209[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %211 = llvm.load %210 : !llvm.ptr<i64>
    %212 = llvm.select %205, %208, %211 : i1, i64
    %213 = llvm.extractvalue %197[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.getelementptr %213[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %212, %214 : !llvm.ptr<i64>
    %215 = llvm.add %201, %200  : i64
    llvm.br ^bb10(%215 : i64)
  ^bb12:  // pred: ^bb10
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(2 : index) : i64
    %219 = llvm.mlir.constant(2 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(4 : index) : i64
    %222 = llvm.mlir.constant(4 : index) : i64
    %223 = llvm.mlir.constant(4 : index) : i64
    %224 = llvm.mlir.null : !llvm.ptr<i32>
    %225 = llvm.getelementptr %224[%223] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %226 = llvm.ptrtoint %225 : !llvm.ptr<i32> to i64
    %227 = llvm.mlir.constant(16 : index) : i64
    %228 = llvm.add %226, %227  : i64
    %229 = llvm.call @malloc(%228) : (i64) -> !llvm.ptr<i8>
    %230 = llvm.bitcast %229 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %231 = llvm.ptrtoint %230 : !llvm.ptr<i32> to i64
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.sub %227, %232  : i64
    %234 = llvm.add %231, %233  : i64
    %235 = llvm.urem %234, %227  : i64
    %236 = llvm.sub %234, %235  : i64
    %237 = llvm.inttoptr %236 : i64 to !llvm.ptr<i32>
    %238 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %239 = llvm.insertvalue %230, %238[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.insertvalue %237, %239[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.insertvalue %241, %240[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.insertvalue %216, %242[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.insertvalue %217, %243[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.insertvalue %218, %244[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.insertvalue %219, %245[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.insertvalue %222, %246[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.insertvalue %221, %247[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.insertvalue %219, %248[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.insertvalue %220, %249[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%251 : i64)
  ^bb13(%254: i64):  // 2 preds: ^bb12, ^bb23
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%256 : i64)
  ^bb15(%259: i64):  // 2 preds: ^bb14, ^bb22
    %260 = llvm.icmp "slt" %259, %257 : i64
    llvm.cond_br %260, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %261 = llvm.mlir.constant(0 : index) : i64
    %262 = llvm.mlir.constant(2 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%261 : i64)
  ^bb17(%264: i64):  // 2 preds: ^bb16, ^bb21
    %265 = llvm.icmp "slt" %264, %262 : i64
    llvm.cond_br %265, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %266 = llvm.mlir.constant(0 : index) : i64
    %267 = llvm.mlir.constant(2 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%266 : i64)
  ^bb19(%269: i64):  // 2 preds: ^bb18, ^bb20
    %270 = llvm.icmp "slt" %269, %267 : i64
    llvm.cond_br %270, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %271 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.mlir.constant(4 : index) : i64
    %273 = llvm.mul %15, %272  : i64
    %274 = llvm.mlir.constant(4 : index) : i64
    %275 = llvm.mul %15, %274  : i64
    %276 = llvm.add %273, %275  : i64
    %277 = llvm.mlir.constant(2 : index) : i64
    %278 = llvm.mul %264, %277  : i64
    %279 = llvm.add %276, %278  : i64
    %280 = llvm.add %279, %269  : i64
    %281 = llvm.getelementptr %271[%280] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %282 = llvm.load %281 : !llvm.ptr<i32>
    %283 = llvm.extractvalue %250[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.mlir.constant(4 : index) : i64
    %285 = llvm.mul %254, %284  : i64
    %286 = llvm.mlir.constant(4 : index) : i64
    %287 = llvm.mul %259, %286  : i64
    %288 = llvm.add %285, %287  : i64
    %289 = llvm.mlir.constant(2 : index) : i64
    %290 = llvm.mul %264, %289  : i64
    %291 = llvm.add %288, %290  : i64
    %292 = llvm.add %291, %269  : i64
    %293 = llvm.getelementptr %283[%292] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %282, %293 : !llvm.ptr<i32>
    %294 = llvm.add %269, %268  : i64
    llvm.br ^bb19(%294 : i64)
  ^bb21:  // pred: ^bb19
    %295 = llvm.add %264, %263  : i64
    llvm.br ^bb17(%295 : i64)
  ^bb22:  // pred: ^bb17
    %296 = llvm.add %259, %258  : i64
    llvm.br ^bb15(%296 : i64)
  ^bb23:  // pred: ^bb15
    %297 = llvm.add %254, %253  : i64
    llvm.br ^bb13(%297 : i64)
  ^bb24:  // pred: ^bb13
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.mlir.constant(2 : index) : i64
    %301 = llvm.mlir.constant(2 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    %303 = llvm.mlir.constant(4 : index) : i64
    %304 = llvm.mlir.constant(4 : index) : i64
    %305 = llvm.mlir.constant(4 : index) : i64
    %306 = llvm.mlir.null : !llvm.ptr<i32>
    %307 = llvm.getelementptr %306[%305] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %308 = llvm.ptrtoint %307 : !llvm.ptr<i32> to i64
    %309 = llvm.mlir.constant(16 : index) : i64
    %310 = llvm.add %308, %309  : i64
    %311 = llvm.call @malloc(%310) : (i64) -> !llvm.ptr<i8>
    %312 = llvm.bitcast %311 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %313 = llvm.ptrtoint %312 : !llvm.ptr<i32> to i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.sub %309, %314  : i64
    %316 = llvm.add %313, %315  : i64
    %317 = llvm.urem %316, %309  : i64
    %318 = llvm.sub %316, %317  : i64
    %319 = llvm.inttoptr %318 : i64 to !llvm.ptr<i32>
    %320 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %321 = llvm.insertvalue %312, %320[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.insertvalue %319, %321[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.insertvalue %323, %322[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.insertvalue %298, %324[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %299, %325[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.insertvalue %300, %326[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.insertvalue %301, %327[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.insertvalue %304, %328[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.insertvalue %303, %329[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.insertvalue %301, %330[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.insertvalue %302, %331[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.mlir.constant(0 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%333 : i64)
  ^bb25(%336: i64):  // 2 preds: ^bb24, ^bb35
    %337 = llvm.icmp "slt" %336, %334 : i64
    llvm.cond_br %337, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %338 = llvm.mlir.constant(0 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%338 : i64)
  ^bb27(%341: i64):  // 2 preds: ^bb26, ^bb34
    %342 = llvm.icmp "slt" %341, %339 : i64
    llvm.cond_br %342, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %343 = llvm.mlir.constant(0 : index) : i64
    %344 = llvm.mlir.constant(2 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%343 : i64)
  ^bb29(%346: i64):  // 2 preds: ^bb28, ^bb33
    %347 = llvm.icmp "slt" %346, %344 : i64
    llvm.cond_br %347, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %348 = llvm.mlir.constant(0 : index) : i64
    %349 = llvm.mlir.constant(2 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%348 : i64)
  ^bb31(%351: i64):  // 2 preds: ^bb30, ^bb32
    %352 = llvm.icmp "slt" %351, %349 : i64
    llvm.cond_br %352, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %353 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %354 = llvm.add %341, %15  : i64
    %355 = llvm.add %354, %15  : i64
    %356 = llvm.getelementptr %353[%355] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %357 = llvm.load %356 : !llvm.ptr<i1>
    %358 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %359 = llvm.load %358 : !llvm.ptr<i32>
    %360 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.mlir.constant(4 : index) : i64
    %362 = llvm.mul %336, %361  : i64
    %363 = llvm.mlir.constant(4 : index) : i64
    %364 = llvm.mul %341, %363  : i64
    %365 = llvm.add %362, %364  : i64
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mul %346, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.add %368, %351  : i64
    %370 = llvm.getelementptr %360[%369] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %371 = llvm.load %370 : !llvm.ptr<i32>
    %372 = llvm.select %357, %359, %371 : i1, i32
    %373 = llvm.extractvalue %332[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.mlir.constant(4 : index) : i64
    %375 = llvm.mul %336, %374  : i64
    %376 = llvm.mlir.constant(4 : index) : i64
    %377 = llvm.mul %341, %376  : i64
    %378 = llvm.add %375, %377  : i64
    %379 = llvm.mlir.constant(2 : index) : i64
    %380 = llvm.mul %346, %379  : i64
    %381 = llvm.add %378, %380  : i64
    %382 = llvm.add %381, %351  : i64
    %383 = llvm.getelementptr %373[%382] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %372, %383 : !llvm.ptr<i32>
    %384 = llvm.add %351, %350  : i64
    llvm.br ^bb31(%384 : i64)
  ^bb33:  // pred: ^bb31
    %385 = llvm.add %346, %345  : i64
    llvm.br ^bb29(%385 : i64)
  ^bb34:  // pred: ^bb29
    %386 = llvm.add %341, %340  : i64
    llvm.br ^bb27(%386 : i64)
  ^bb35:  // pred: ^bb27
    %387 = llvm.add %336, %335  : i64
    llvm.br ^bb25(%387 : i64)
  ^bb36:  // pred: ^bb25
    %388 = llvm.mlir.constant(1 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mlir.constant(2 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    %393 = llvm.mlir.constant(4 : index) : i64
    %394 = llvm.mlir.constant(4 : index) : i64
    %395 = llvm.mlir.constant(4 : index) : i64
    %396 = llvm.mlir.null : !llvm.ptr<i32>
    %397 = llvm.getelementptr %396[%395] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %398 = llvm.ptrtoint %397 : !llvm.ptr<i32> to i64
    %399 = llvm.mlir.constant(16 : index) : i64
    %400 = llvm.add %398, %399  : i64
    %401 = llvm.call @malloc(%400) : (i64) -> !llvm.ptr<i8>
    %402 = llvm.bitcast %401 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %403 = llvm.ptrtoint %402 : !llvm.ptr<i32> to i64
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.sub %399, %404  : i64
    %406 = llvm.add %403, %405  : i64
    %407 = llvm.urem %406, %399  : i64
    %408 = llvm.sub %406, %407  : i64
    %409 = llvm.inttoptr %408 : i64 to !llvm.ptr<i32>
    %410 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %411 = llvm.insertvalue %402, %410[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.insertvalue %409, %411[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.mlir.constant(0 : index) : i64
    %414 = llvm.insertvalue %413, %412[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.insertvalue %388, %414[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.insertvalue %389, %415[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.insertvalue %390, %416[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.insertvalue %391, %417[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.insertvalue %394, %418[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.insertvalue %393, %419[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.insertvalue %391, %420[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.insertvalue %392, %421[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.mlir.constant(0 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%423 : i64)
  ^bb37(%426: i64):  // 2 preds: ^bb36, ^bb47
    %427 = llvm.icmp "slt" %426, %424 : i64
    llvm.cond_br %427, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %428 = llvm.mlir.constant(0 : index) : i64
    %429 = llvm.mlir.constant(1 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%428 : i64)
  ^bb39(%431: i64):  // 2 preds: ^bb38, ^bb46
    %432 = llvm.icmp "slt" %431, %429 : i64
    llvm.cond_br %432, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %433 = llvm.mlir.constant(0 : index) : i64
    %434 = llvm.mlir.constant(2 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%433 : i64)
  ^bb41(%436: i64):  // 2 preds: ^bb40, ^bb45
    %437 = llvm.icmp "slt" %436, %434 : i64
    llvm.cond_br %437, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %438 = llvm.mlir.constant(0 : index) : i64
    %439 = llvm.mlir.constant(2 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%438 : i64)
  ^bb43(%441: i64):  // 2 preds: ^bb42, ^bb44
    %442 = llvm.icmp "slt" %441, %439 : i64
    llvm.cond_br %442, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %443 = llvm.extractvalue %332[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.mlir.constant(4 : index) : i64
    %445 = llvm.mul %426, %444  : i64
    %446 = llvm.mlir.constant(4 : index) : i64
    %447 = llvm.mul %431, %446  : i64
    %448 = llvm.add %445, %447  : i64
    %449 = llvm.mlir.constant(2 : index) : i64
    %450 = llvm.mul %436, %449  : i64
    %451 = llvm.add %448, %450  : i64
    %452 = llvm.add %451, %441  : i64
    %453 = llvm.getelementptr %443[%452] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %454 = llvm.load %453 : !llvm.ptr<i32>
    %455 = llvm.extractvalue %422[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %456 = llvm.mlir.constant(4 : index) : i64
    %457 = llvm.mul %426, %456  : i64
    %458 = llvm.mlir.constant(4 : index) : i64
    %459 = llvm.mul %431, %458  : i64
    %460 = llvm.add %457, %459  : i64
    %461 = llvm.mlir.constant(2 : index) : i64
    %462 = llvm.mul %436, %461  : i64
    %463 = llvm.add %460, %462  : i64
    %464 = llvm.add %463, %441  : i64
    %465 = llvm.getelementptr %455[%464] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %454, %465 : !llvm.ptr<i32>
    %466 = llvm.add %441, %440  : i64
    llvm.br ^bb43(%466 : i64)
  ^bb45:  // pred: ^bb43
    %467 = llvm.add %436, %435  : i64
    llvm.br ^bb41(%467 : i64)
  ^bb46:  // pred: ^bb41
    %468 = llvm.add %431, %430  : i64
    llvm.br ^bb39(%468 : i64)
  ^bb47:  // pred: ^bb39
    %469 = llvm.add %426, %425  : i64
    llvm.br ^bb37(%469 : i64)
  ^bb48:  // pred: ^bb37
    %470 = llvm.mlir.constant(1 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    %472 = llvm.mlir.constant(2 : index) : i64
    %473 = llvm.mlir.constant(2 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    %475 = llvm.mlir.constant(4 : index) : i64
    %476 = llvm.mlir.constant(4 : index) : i64
    %477 = llvm.mlir.constant(4 : index) : i64
    %478 = llvm.mlir.null : !llvm.ptr<f64>
    %479 = llvm.getelementptr %478[%477] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %480 = llvm.ptrtoint %479 : !llvm.ptr<f64> to i64
    %481 = llvm.mlir.constant(16 : index) : i64
    %482 = llvm.add %480, %481  : i64
    %483 = llvm.call @malloc(%482) : (i64) -> !llvm.ptr<i8>
    %484 = llvm.bitcast %483 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %485 = llvm.ptrtoint %484 : !llvm.ptr<f64> to i64
    %486 = llvm.mlir.constant(1 : index) : i64
    %487 = llvm.sub %481, %486  : i64
    %488 = llvm.add %485, %487  : i64
    %489 = llvm.urem %488, %481  : i64
    %490 = llvm.sub %488, %489  : i64
    %491 = llvm.inttoptr %490 : i64 to !llvm.ptr<f64>
    %492 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %493 = llvm.insertvalue %484, %492[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.insertvalue %491, %493[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %495 = llvm.mlir.constant(0 : index) : i64
    %496 = llvm.insertvalue %495, %494[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.insertvalue %470, %496[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.insertvalue %471, %497[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.insertvalue %472, %498[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %500 = llvm.insertvalue %473, %499[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %501 = llvm.insertvalue %476, %500[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.insertvalue %475, %501[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.insertvalue %473, %502[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.insertvalue %474, %503[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.mlir.constant(0 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%505 : i64)
  ^bb49(%508: i64):  // 2 preds: ^bb48, ^bb59
    %509 = llvm.icmp "slt" %508, %506 : i64
    llvm.cond_br %509, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %510 = llvm.mlir.constant(0 : index) : i64
    %511 = llvm.mlir.constant(1 : index) : i64
    %512 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%510 : i64)
  ^bb51(%513: i64):  // 2 preds: ^bb50, ^bb58
    %514 = llvm.icmp "slt" %513, %511 : i64
    llvm.cond_br %514, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %515 = llvm.mlir.constant(0 : index) : i64
    %516 = llvm.mlir.constant(2 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%515 : i64)
  ^bb53(%518: i64):  // 2 preds: ^bb52, ^bb57
    %519 = llvm.icmp "slt" %518, %516 : i64
    llvm.cond_br %519, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %520 = llvm.mlir.constant(0 : index) : i64
    %521 = llvm.mlir.constant(2 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%520 : i64)
  ^bb55(%523: i64):  // 2 preds: ^bb54, ^bb56
    %524 = llvm.icmp "slt" %523, %521 : i64
    llvm.cond_br %524, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %525 = llvm.extractvalue %422[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %526 = llvm.mlir.constant(4 : index) : i64
    %527 = llvm.mul %508, %526  : i64
    %528 = llvm.mlir.constant(4 : index) : i64
    %529 = llvm.mul %513, %528  : i64
    %530 = llvm.add %527, %529  : i64
    %531 = llvm.mlir.constant(2 : index) : i64
    %532 = llvm.mul %518, %531  : i64
    %533 = llvm.add %530, %532  : i64
    %534 = llvm.add %533, %523  : i64
    %535 = llvm.getelementptr %525[%534] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %536 = llvm.load %535 : !llvm.ptr<i32>
    %537 = llvm.sitofp %536 : i32 to f64
    %538 = llvm.extractvalue %504[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %539 = llvm.mlir.constant(4 : index) : i64
    %540 = llvm.mul %508, %539  : i64
    %541 = llvm.mlir.constant(4 : index) : i64
    %542 = llvm.mul %513, %541  : i64
    %543 = llvm.add %540, %542  : i64
    %544 = llvm.mlir.constant(2 : index) : i64
    %545 = llvm.mul %518, %544  : i64
    %546 = llvm.add %543, %545  : i64
    %547 = llvm.add %546, %523  : i64
    %548 = llvm.getelementptr %538[%547] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %537, %548 : !llvm.ptr<f64>
    %549 = llvm.add %523, %522  : i64
    llvm.br ^bb55(%549 : i64)
  ^bb57:  // pred: ^bb55
    %550 = llvm.add %518, %517  : i64
    llvm.br ^bb53(%550 : i64)
  ^bb58:  // pred: ^bb53
    %551 = llvm.add %513, %512  : i64
    llvm.br ^bb51(%551 : i64)
  ^bb59:  // pred: ^bb51
    %552 = llvm.add %508, %507  : i64
    llvm.br ^bb49(%552 : i64)
  ^bb60:  // pred: ^bb49
    %553 = llvm.mlir.constant(1 : index) : i64
    %554 = llvm.mlir.constant(1 : index) : i64
    %555 = llvm.mlir.constant(2 : index) : i64
    %556 = llvm.mlir.constant(2 : index) : i64
    %557 = llvm.mlir.constant(1 : index) : i64
    %558 = llvm.mlir.constant(4 : index) : i64
    %559 = llvm.mlir.constant(4 : index) : i64
    %560 = llvm.mlir.constant(4 : index) : i64
    %561 = llvm.mlir.null : !llvm.ptr<i32>
    %562 = llvm.getelementptr %561[%560] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %563 = llvm.ptrtoint %562 : !llvm.ptr<i32> to i64
    %564 = llvm.mlir.constant(16 : index) : i64
    %565 = llvm.add %563, %564  : i64
    %566 = llvm.call @malloc(%565) : (i64) -> !llvm.ptr<i8>
    %567 = llvm.bitcast %566 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %568 = llvm.ptrtoint %567 : !llvm.ptr<i32> to i64
    %569 = llvm.mlir.constant(1 : index) : i64
    %570 = llvm.sub %564, %569  : i64
    %571 = llvm.add %568, %570  : i64
    %572 = llvm.urem %571, %564  : i64
    %573 = llvm.sub %571, %572  : i64
    %574 = llvm.inttoptr %573 : i64 to !llvm.ptr<i32>
    %575 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %576 = llvm.insertvalue %567, %575[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %577 = llvm.insertvalue %574, %576[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %578 = llvm.mlir.constant(0 : index) : i64
    %579 = llvm.insertvalue %578, %577[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %580 = llvm.insertvalue %553, %579[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %581 = llvm.insertvalue %554, %580[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %582 = llvm.insertvalue %555, %581[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %583 = llvm.insertvalue %556, %582[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %584 = llvm.insertvalue %559, %583[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %585 = llvm.insertvalue %558, %584[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %586 = llvm.insertvalue %556, %585[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %587 = llvm.insertvalue %557, %586[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %588 = llvm.mlir.constant(0 : index) : i64
    %589 = llvm.mlir.constant(1 : index) : i64
    %590 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%588 : i64)
  ^bb61(%591: i64):  // 2 preds: ^bb60, ^bb71
    %592 = llvm.icmp "slt" %591, %589 : i64
    llvm.cond_br %592, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %593 = llvm.mlir.constant(0 : index) : i64
    %594 = llvm.mlir.constant(1 : index) : i64
    %595 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%593 : i64)
  ^bb63(%596: i64):  // 2 preds: ^bb62, ^bb70
    %597 = llvm.icmp "slt" %596, %594 : i64
    llvm.cond_br %597, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %598 = llvm.mlir.constant(0 : index) : i64
    %599 = llvm.mlir.constant(2 : index) : i64
    %600 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%598 : i64)
  ^bb65(%601: i64):  // 2 preds: ^bb64, ^bb69
    %602 = llvm.icmp "slt" %601, %599 : i64
    llvm.cond_br %602, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %603 = llvm.mlir.constant(0 : index) : i64
    %604 = llvm.mlir.constant(2 : index) : i64
    %605 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%603 : i64)
  ^bb67(%606: i64):  // 2 preds: ^bb66, ^bb68
    %607 = llvm.icmp "slt" %606, %604 : i64
    llvm.cond_br %607, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %608 = llvm.extractvalue %422[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %609 = llvm.mlir.constant(4 : index) : i64
    %610 = llvm.mul %591, %609  : i64
    %611 = llvm.mlir.constant(4 : index) : i64
    %612 = llvm.mul %596, %611  : i64
    %613 = llvm.add %610, %612  : i64
    %614 = llvm.mlir.constant(2 : index) : i64
    %615 = llvm.mul %601, %614  : i64
    %616 = llvm.add %613, %615  : i64
    %617 = llvm.add %616, %606  : i64
    %618 = llvm.getelementptr %608[%617] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %619 = llvm.load %618 : !llvm.ptr<i32>
    %620 = llvm.sub %14, %619  : i32
    %621 = llvm.extractvalue %587[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %622 = llvm.mlir.constant(4 : index) : i64
    %623 = llvm.mul %591, %622  : i64
    %624 = llvm.mlir.constant(4 : index) : i64
    %625 = llvm.mul %596, %624  : i64
    %626 = llvm.add %623, %625  : i64
    %627 = llvm.mlir.constant(2 : index) : i64
    %628 = llvm.mul %601, %627  : i64
    %629 = llvm.add %626, %628  : i64
    %630 = llvm.add %629, %606  : i64
    %631 = llvm.getelementptr %621[%630] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %620, %631 : !llvm.ptr<i32>
    %632 = llvm.add %606, %605  : i64
    llvm.br ^bb67(%632 : i64)
  ^bb69:  // pred: ^bb67
    %633 = llvm.add %601, %600  : i64
    llvm.br ^bb65(%633 : i64)
  ^bb70:  // pred: ^bb65
    %634 = llvm.add %596, %595  : i64
    llvm.br ^bb63(%634 : i64)
  ^bb71:  // pred: ^bb63
    %635 = llvm.add %591, %590  : i64
    llvm.br ^bb61(%635 : i64)
  ^bb72:  // pred: ^bb61
    %636 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %637 = llvm.insertvalue %250, %636[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %638 = llvm.insertvalue %504, %637[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %639 = llvm.insertvalue %587, %638[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %639 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>, %arg2: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v4_0", "v1_0"], llvm.emit_c_interface, output_names = ["v0_0", "v7_0", "v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>
    %5 = llvm.extractvalue %4[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.extractvalue %4[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.extractvalue %4[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.extractvalue %4[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.extractvalue %4[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.extractvalue %4[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.extractvalue %4[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.extractvalue %4[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %13 = llvm.extractvalue %4[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.call @main_graph(%1, %2, %3, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, !llvm.ptr<i1>, !llvm.ptr<i1>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %13, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %16 = llvm.mlir.constant(1 : i64) : i64
    %17 = llvm.getelementptr %0[%16] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<i8>>
    %19 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    %21 = llvm.call @omTensorGetDataPtr(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %22 = llvm.bitcast %21 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %23 = llvm.insertvalue %22, %20[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.insertvalue %22, %23[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %25 = llvm.mlir.constant(0 : i64) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.call @omTensorGetShape(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %28 = llvm.call @omTensorGetStrides(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %29 = llvm.mlir.constant(0 : i64) : i64
    %30 = llvm.getelementptr %27[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %31 = llvm.load %30 : !llvm.ptr<i64>
    %32 = llvm.insertvalue %31, %26[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %33 = llvm.getelementptr %28[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %34 = llvm.load %33 : !llvm.ptr<i64>
    %35 = llvm.insertvalue %34, %32[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %36 = llvm.mlir.constant(1 : i64) : i64
    %37 = llvm.getelementptr %27[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %38 = llvm.load %37 : !llvm.ptr<i64>
    %39 = llvm.insertvalue %38, %35[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %40 = llvm.getelementptr %28[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %41 = llvm.load %40 : !llvm.ptr<i64>
    %42 = llvm.insertvalue %41, %39[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %43 = llvm.mlir.constant(2 : i64) : i64
    %44 = llvm.getelementptr %27[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %42[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %47 = llvm.getelementptr %28[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %49, %19 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %19) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %50 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %51 = llvm.extractvalue %50[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %52 = llvm.extractvalue %50[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %53 = llvm.extractvalue %50[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %54 = llvm.mlir.constant(3 : i64) : i64
    %55 = llvm.mlir.constant(24 : i64) : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %58 = llvm.mlir.constant(4 : i64) : i64
    %59 = llvm.call @omTensorCreateUntyped(%58) : (i64) -> !llvm.ptr<i8>
    %60 = llvm.mlir.constant(1 : i64) : i64
    %61 = llvm.extractvalue %51[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %63 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.bitcast %63 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%59, %60, %62, %64) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %65 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%59, %65) : (!llvm.ptr<i8>, i64) -> ()
    %66 = llvm.call @omTensorGetShape(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %67 = llvm.call @omTensorGetStrides(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.mlir.constant(0 : i64) : i64
    %69 = llvm.extractvalue %51[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %66[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.extractvalue %51[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.getelementptr %67[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %51[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %66[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.extractvalue %51[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.getelementptr %67[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.extractvalue %51[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %66[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.extractvalue %51[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %67[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.mlir.constant(3 : i64) : i64
    %84 = llvm.extractvalue %51[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %66[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.extractvalue %51[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.getelementptr %67[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.getelementptr %57[%88] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %59, %89 : !llvm.ptr<ptr<i8>>
    %90 = llvm.mlir.constant(4 : i64) : i64
    %91 = llvm.call @omTensorCreateUntyped(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.mlir.constant(1 : i64) : i64
    %93 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.bitcast %93 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %95 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%91, %92, %94, %96) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %97 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%91, %97) : (!llvm.ptr<i8>, i64) -> ()
    %98 = llvm.call @omTensorGetShape(%91) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %99 = llvm.call @omTensorGetStrides(%91) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %100 = llvm.mlir.constant(0 : i64) : i64
    %101 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %98[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %99[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %98[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %99[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(2 : i64) : i64
    %111 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %98[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %99[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(3 : i64) : i64
    %116 = llvm.extractvalue %52[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %98[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.extractvalue %52[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %99[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.mlir.constant(1 : i64) : i64
    %121 = llvm.getelementptr %57[%120] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %91, %121 : !llvm.ptr<ptr<i8>>
    %122 = llvm.mlir.constant(4 : i64) : i64
    %123 = llvm.call @omTensorCreateUntyped(%122) : (i64) -> !llvm.ptr<i8>
    %124 = llvm.mlir.constant(1 : i64) : i64
    %125 = llvm.extractvalue %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.bitcast %125 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %127 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.bitcast %127 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%123, %124, %126, %128) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %129 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%123, %129) : (!llvm.ptr<i8>, i64) -> ()
    %130 = llvm.call @omTensorGetShape(%123) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %131 = llvm.call @omTensorGetStrides(%123) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %132 = llvm.mlir.constant(0 : i64) : i64
    %133 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.getelementptr %130[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %131[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.mlir.constant(1 : i64) : i64
    %138 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.getelementptr %130[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %131[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.mlir.constant(2 : i64) : i64
    %143 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.getelementptr %130[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %143, %144 : !llvm.ptr<i64>
    %145 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %131[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.mlir.constant(3 : i64) : i64
    %148 = llvm.extractvalue %53[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.getelementptr %130[%147] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %148, %149 : !llvm.ptr<i64>
    %150 = llvm.extractvalue %53[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.getelementptr %131[%147] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.mlir.constant(2 : i64) : i64
    %153 = llvm.getelementptr %57[%152] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %123, %153 : !llvm.ptr<ptr<i8>>
    %154 = llvm.call @omTensorListCreate(%57, %54, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %154 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<124 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<124 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<211 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<211 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

