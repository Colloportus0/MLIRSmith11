module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 2 , 2 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<true> : tensor<1x1x1x1xi1>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i1>>>>
  llvm.mlir.global internal constant @constant_5(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: !llvm.ptr<i32>, %arg4: !llvm.ptr<i32>, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr<i32>, %arg11: !llvm.ptr<i32>, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v8_0", "v7_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v5_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %5 = llvm.insertvalue %arg3, %4[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg5, %6[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %9 = llvm.insertvalue %arg8, %8[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg7, %9[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %13 = llvm.insertvalue %arg10, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %15 = llvm.insertvalue %arg12, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %16 = llvm.insertvalue %arg13, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %17 = llvm.insertvalue %arg16, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.insertvalue %arg14, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.insertvalue %arg17, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.insertvalue %arg15, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %21 = llvm.insertvalue %arg18, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.mlir.constant(0 : i32) : i32
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %26 = llvm.bitcast %25 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %32 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %33 = llvm.bitcast %32 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %39 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %42 = llvm.insertvalue %40, %41[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.insertvalue %44, %43[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.constant(4 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %51 = llvm.bitcast %50 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %52 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %53 = llvm.insertvalue %51, %52[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %54 = llvm.insertvalue %51, %53[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.insertvalue %55, %54[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %57 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %58 = llvm.bitcast %57 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %60 = llvm.insertvalue %58, %59[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.mlir.constant(4 : index) : i64
    %65 = llvm.insertvalue %64, %63[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i1>>>>>
    %69 = llvm.bitcast %68 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i1>>>>> to !llvm.ptr<i1>
    %70 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %71 = llvm.insertvalue %69, %70[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %69, %71[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.insertvalue %77, %76[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.insertvalue %79, %78[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.insertvalue %81, %80[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.insertvalue %83, %82[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.insertvalue %85, %84[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.insertvalue %87, %86[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.insertvalue %89, %88[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.null : !llvm.ptr<i32>
    %97 = llvm.getelementptr %96[%91] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %98 = llvm.ptrtoint %97 : !llvm.ptr<i32> to i64
    %99 = llvm.mlir.constant(16 : index) : i64
    %100 = llvm.add %98, %99  : i64
    %101 = llvm.call @malloc(%100) : (i64) -> !llvm.ptr<i8>
    %102 = llvm.bitcast %101 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %103 = llvm.ptrtoint %102 : !llvm.ptr<i32> to i64
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.sub %99, %104  : i64
    %106 = llvm.add %103, %105  : i64
    %107 = llvm.urem %106, %99  : i64
    %108 = llvm.sub %106, %107  : i64
    %109 = llvm.inttoptr %108 : i64 to !llvm.ptr<i32>
    %110 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %111 = llvm.insertvalue %102, %110[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %109, %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.insertvalue %113, %112[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %91, %114[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.insertvalue %92, %115[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.insertvalue %93, %116[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.insertvalue %94, %117[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.insertvalue %92, %118[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.insertvalue %93, %119[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.insertvalue %94, %120[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.insertvalue %95, %121[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%123 : i64)
  ^bb1(%126: i64):  // 2 preds: ^bb0, ^bb11
    %127 = llvm.icmp "slt" %126, %124 : i64
    llvm.cond_br %127, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %128 = llvm.mlir.constant(0 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%128 : i64)
  ^bb3(%131: i64):  // 2 preds: ^bb2, ^bb10
    %132 = llvm.icmp "slt" %131, %129 : i64
    llvm.cond_br %132, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%133 : i64)
  ^bb5(%136: i64):  // 2 preds: ^bb4, ^bb9
    %137 = llvm.icmp "slt" %136, %134 : i64
    llvm.cond_br %137, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%138 : i64)
  ^bb7(%141: i64):  // 2 preds: ^bb6, ^bb8
    %142 = llvm.icmp "slt" %141, %139 : i64
    llvm.cond_br %142, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %143 = llvm.extractvalue %90[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.add %126, %131  : i64
    %145 = llvm.add %144, %136  : i64
    %146 = llvm.add %145, %141  : i64
    %147 = llvm.getelementptr %143[%146] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %148 = llvm.load %147 : !llvm.ptr<i1>
    %149 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %150 = llvm.add %136, %141  : i64
    %151 = llvm.getelementptr %149[%150] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %152 = llvm.load %151 : !llvm.ptr<i32>
    %153 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %154 = llvm.load %153 : !llvm.ptr<i32>
    %155 = llvm.select %148, %152, %154 : i1, i32
    %156 = llvm.extractvalue %122[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.add %126, %131  : i64
    %158 = llvm.add %157, %136  : i64
    %159 = llvm.add %158, %141  : i64
    %160 = llvm.getelementptr %156[%159] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %155, %160 : !llvm.ptr<i32>
    %161 = llvm.add %141, %140  : i64
    llvm.br ^bb7(%161 : i64)
  ^bb9:  // pred: ^bb7
    %162 = llvm.add %136, %135  : i64
    llvm.br ^bb5(%162 : i64)
  ^bb10:  // pred: ^bb5
    %163 = llvm.add %131, %130  : i64
    llvm.br ^bb3(%163 : i64)
  ^bb11:  // pred: ^bb3
    %164 = llvm.add %126, %125  : i64
    llvm.br ^bb1(%164 : i64)
  ^bb12:  // pred: ^bb1
    %165 = llvm.mlir.constant(4 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.null : !llvm.ptr<i64>
    %168 = llvm.getelementptr %167[%165] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %169 = llvm.ptrtoint %168 : !llvm.ptr<i64> to i64
    %170 = llvm.mlir.constant(16 : index) : i64
    %171 = llvm.add %169, %170  : i64
    %172 = llvm.call @malloc(%171) : (i64) -> !llvm.ptr<i8>
    %173 = llvm.bitcast %172 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %174 = llvm.ptrtoint %173 : !llvm.ptr<i64> to i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.sub %170, %175  : i64
    %177 = llvm.add %174, %176  : i64
    %178 = llvm.urem %177, %170  : i64
    %179 = llvm.sub %177, %178  : i64
    %180 = llvm.inttoptr %179 : i64 to !llvm.ptr<i64>
    %181 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %182 = llvm.insertvalue %173, %181[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.insertvalue %180, %182[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.insertvalue %184, %183[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %186 = llvm.insertvalue %165, %185[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %187 = llvm.insertvalue %166, %186[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %188 = llvm.mlir.constant(0 : index) : i64
    %189 = llvm.mlir.constant(4 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%188 : i64)
  ^bb13(%191: i64):  // 2 preds: ^bb12, ^bb14
    %192 = llvm.icmp "slt" %191, %189 : i64
    llvm.cond_br %192, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %193 = llvm.extractvalue %187[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %194 = llvm.getelementptr %193[%191] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %23, %194 : !llvm.ptr<i64>
    %195 = llvm.add %191, %190  : i64
    llvm.br ^bb13(%195 : i64)
  ^bb15:  // pred: ^bb13
    %196 = llvm.mlir.constant(4 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.mlir.null : !llvm.ptr<i64>
    %199 = llvm.getelementptr %198[%196] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %200 = llvm.ptrtoint %199 : !llvm.ptr<i64> to i64
    %201 = llvm.mlir.constant(16 : index) : i64
    %202 = llvm.add %200, %201  : i64
    %203 = llvm.call @malloc(%202) : (i64) -> !llvm.ptr<i8>
    %204 = llvm.bitcast %203 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %205 = llvm.ptrtoint %204 : !llvm.ptr<i64> to i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.sub %201, %206  : i64
    %208 = llvm.add %205, %207  : i64
    %209 = llvm.urem %208, %201  : i64
    %210 = llvm.sub %208, %209  : i64
    %211 = llvm.inttoptr %210 : i64 to !llvm.ptr<i64>
    %212 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %213 = llvm.insertvalue %204, %212[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.insertvalue %211, %213[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.insertvalue %215, %214[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.insertvalue %196, %216[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.insertvalue %197, %217[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(4 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%219 : i64)
  ^bb16(%222: i64):  // 2 preds: ^bb15, ^bb17
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %224 = llvm.extractvalue %187[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.getelementptr %224[%222] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %226 = llvm.load %225 : !llvm.ptr<i64>
    %227 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %228 = llvm.load %227 : !llvm.ptr<i64>
    %229 = llvm.mul %226, %228  : i64
    %230 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %231 = llvm.getelementptr %230[%222] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %229, %231 : !llvm.ptr<i64>
    %232 = llvm.add %222, %221  : i64
    llvm.br ^bb16(%232 : i64)
  ^bb18:  // pred: ^bb16
    %233 = llvm.mlir.constant(4 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.null : !llvm.ptr<i1>
    %236 = llvm.getelementptr %235[%233] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %237 = llvm.ptrtoint %236 : !llvm.ptr<i1> to i64
    %238 = llvm.mlir.constant(16 : index) : i64
    %239 = llvm.add %237, %238  : i64
    %240 = llvm.call @malloc(%239) : (i64) -> !llvm.ptr<i8>
    %241 = llvm.bitcast %240 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %242 = llvm.ptrtoint %241 : !llvm.ptr<i1> to i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.sub %238, %243  : i64
    %245 = llvm.add %242, %244  : i64
    %246 = llvm.urem %245, %238  : i64
    %247 = llvm.sub %245, %246  : i64
    %248 = llvm.inttoptr %247 : i64 to !llvm.ptr<i1>
    %249 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %250 = llvm.insertvalue %241, %249[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.insertvalue %248, %250[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.insertvalue %252, %251[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.insertvalue %233, %253[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.insertvalue %234, %254[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.mlir.constant(4 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%256 : i64)
  ^bb19(%259: i64):  // 2 preds: ^bb18, ^bb20
    %260 = llvm.icmp "slt" %259, %257 : i64
    llvm.cond_br %260, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %261 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.getelementptr %261[%259] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %263 = llvm.load %262 : !llvm.ptr<i64>
    %264 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.getelementptr %264[%259] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %266 = llvm.load %265 : !llvm.ptr<i64>
    %267 = llvm.icmp "eq" %263, %266 : i64
    %268 = llvm.extractvalue %255[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %269 = llvm.getelementptr %268[%259] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %267, %269 : !llvm.ptr<i1>
    %270 = llvm.add %259, %258  : i64
    llvm.br ^bb19(%270 : i64)
  ^bb21:  // pred: ^bb19
    %271 = llvm.mlir.constant(4 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.mlir.null : !llvm.ptr<i64>
    %274 = llvm.getelementptr %273[%271] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %275 = llvm.ptrtoint %274 : !llvm.ptr<i64> to i64
    %276 = llvm.mlir.constant(16 : index) : i64
    %277 = llvm.add %275, %276  : i64
    %278 = llvm.call @malloc(%277) : (i64) -> !llvm.ptr<i8>
    %279 = llvm.bitcast %278 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %280 = llvm.ptrtoint %279 : !llvm.ptr<i64> to i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.sub %276, %281  : i64
    %283 = llvm.add %280, %282  : i64
    %284 = llvm.urem %283, %276  : i64
    %285 = llvm.sub %283, %284  : i64
    %286 = llvm.inttoptr %285 : i64 to !llvm.ptr<i64>
    %287 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %288 = llvm.insertvalue %279, %287[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %289 = llvm.insertvalue %286, %288[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.insertvalue %290, %289[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %292 = llvm.insertvalue %271, %291[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %293 = llvm.insertvalue %272, %292[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.mlir.constant(4 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%294 : i64)
  ^bb22(%297: i64):  // 2 preds: ^bb21, ^bb23
    %298 = llvm.icmp "slt" %297, %295 : i64
    llvm.cond_br %298, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %299 = llvm.extractvalue %255[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %300 = llvm.getelementptr %299[%297] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %301 = llvm.load %300 : !llvm.ptr<i1>
    %302 = llvm.extractvalue %187[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.getelementptr %302[%297] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %304 = llvm.load %303 : !llvm.ptr<i64>
    %305 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.getelementptr %305[%297] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %307 = llvm.load %306 : !llvm.ptr<i64>
    %308 = llvm.select %301, %304, %307 : i1, i64
    %309 = llvm.extractvalue %293[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %310 = llvm.getelementptr %309[%297] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %308, %310 : !llvm.ptr<i64>
    %311 = llvm.add %297, %296  : i64
    llvm.br ^bb22(%311 : i64)
  ^bb24:  // pred: ^bb22
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.null : !llvm.ptr<i32>
    %318 = llvm.getelementptr %317[%312] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %319 = llvm.ptrtoint %318 : !llvm.ptr<i32> to i64
    %320 = llvm.mlir.constant(16 : index) : i64
    %321 = llvm.add %319, %320  : i64
    %322 = llvm.call @malloc(%321) : (i64) -> !llvm.ptr<i8>
    %323 = llvm.bitcast %322 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %324 = llvm.ptrtoint %323 : !llvm.ptr<i32> to i64
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.sub %320, %325  : i64
    %327 = llvm.add %324, %326  : i64
    %328 = llvm.urem %327, %320  : i64
    %329 = llvm.sub %327, %328  : i64
    %330 = llvm.inttoptr %329 : i64 to !llvm.ptr<i32>
    %331 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %332 = llvm.insertvalue %323, %331[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.insertvalue %330, %332[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.mlir.constant(0 : index) : i64
    %335 = llvm.insertvalue %334, %333[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.insertvalue %312, %335[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.insertvalue %313, %336[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.insertvalue %314, %337[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.insertvalue %315, %338[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.insertvalue %313, %339[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.insertvalue %314, %340[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.insertvalue %315, %341[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.insertvalue %316, %342[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.mlir.constant(0 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%344 : i64)
  ^bb25(%347: i64):  // 2 preds: ^bb24, ^bb35
    %348 = llvm.icmp "slt" %347, %345 : i64
    llvm.cond_br %348, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %349 = llvm.mlir.constant(0 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%349 : i64)
  ^bb27(%352: i64):  // 2 preds: ^bb26, ^bb34
    %353 = llvm.icmp "slt" %352, %350 : i64
    llvm.cond_br %353, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %354 = llvm.mlir.constant(0 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%354 : i64)
  ^bb29(%357: i64):  // 2 preds: ^bb28, ^bb33
    %358 = llvm.icmp "slt" %357, %355 : i64
    llvm.cond_br %358, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %359 = llvm.mlir.constant(0 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%359 : i64)
  ^bb31(%362: i64):  // 2 preds: ^bb30, ^bb32
    %363 = llvm.icmp "slt" %362, %360 : i64
    llvm.cond_br %363, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %364 = llvm.extractvalue %122[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.add %24, %24  : i64
    %366 = llvm.add %365, %24  : i64
    %367 = llvm.add %366, %24  : i64
    %368 = llvm.getelementptr %364[%367] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %369 = llvm.load %368 : !llvm.ptr<i32>
    %370 = llvm.extractvalue %343[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.add %347, %352  : i64
    %372 = llvm.add %371, %357  : i64
    %373 = llvm.add %372, %362  : i64
    %374 = llvm.getelementptr %370[%373] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %369, %374 : !llvm.ptr<i32>
    %375 = llvm.add %362, %361  : i64
    llvm.br ^bb31(%375 : i64)
  ^bb33:  // pred: ^bb31
    %376 = llvm.add %357, %356  : i64
    llvm.br ^bb29(%376 : i64)
  ^bb34:  // pred: ^bb29
    %377 = llvm.add %352, %351  : i64
    llvm.br ^bb27(%377 : i64)
  ^bb35:  // pred: ^bb27
    %378 = llvm.add %347, %346  : i64
    llvm.br ^bb25(%378 : i64)
  ^bb36:  // pred: ^bb25
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mlir.constant(2 : index) : i64
    %381 = llvm.mlir.constant(2 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.mlir.constant(4 : index) : i64
    %385 = llvm.mlir.constant(4 : index) : i64
    %386 = llvm.mlir.null : !llvm.ptr<i32>
    %387 = llvm.getelementptr %386[%385] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %388 = llvm.ptrtoint %387 : !llvm.ptr<i32> to i64
    %389 = llvm.mlir.constant(16 : index) : i64
    %390 = llvm.add %388, %389  : i64
    %391 = llvm.call @malloc(%390) : (i64) -> !llvm.ptr<i8>
    %392 = llvm.bitcast %391 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %393 = llvm.ptrtoint %392 : !llvm.ptr<i32> to i64
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.sub %389, %394  : i64
    %396 = llvm.add %393, %395  : i64
    %397 = llvm.urem %396, %389  : i64
    %398 = llvm.sub %396, %397  : i64
    %399 = llvm.inttoptr %398 : i64 to !llvm.ptr<i32>
    %400 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %401 = llvm.insertvalue %392, %400[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.insertvalue %399, %401[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.mlir.constant(0 : index) : i64
    %404 = llvm.insertvalue %403, %402[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.insertvalue %379, %404[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.insertvalue %380, %405[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.insertvalue %381, %406[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.insertvalue %382, %407[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.insertvalue %384, %408[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.insertvalue %381, %409[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.insertvalue %382, %410[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.insertvalue %383, %411[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.mlir.constant(0 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%413 : i64)
  ^bb37(%416: i64):  // 2 preds: ^bb36, ^bb47
    %417 = llvm.icmp "slt" %416, %414 : i64
    llvm.cond_br %417, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %418 = llvm.mlir.constant(0 : index) : i64
    %419 = llvm.mlir.constant(2 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%418 : i64)
  ^bb39(%421: i64):  // 2 preds: ^bb38, ^bb46
    %422 = llvm.icmp "slt" %421, %419 : i64
    llvm.cond_br %422, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %423 = llvm.mlir.constant(0 : index) : i64
    %424 = llvm.mlir.constant(2 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%423 : i64)
  ^bb41(%426: i64):  // 2 preds: ^bb40, ^bb45
    %427 = llvm.icmp "slt" %426, %424 : i64
    llvm.cond_br %427, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %428 = llvm.mlir.constant(0 : index) : i64
    %429 = llvm.mlir.constant(1 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%428 : i64)
  ^bb43(%431: i64):  // 2 preds: ^bb42, ^bb44
    %432 = llvm.icmp "slt" %431, %429 : i64
    llvm.cond_br %432, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %433 = llvm.extractvalue %122[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.add %416, %24  : i64
    %435 = llvm.add %434, %24  : i64
    %436 = llvm.add %435, %431  : i64
    %437 = llvm.getelementptr %433[%436] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %438 = llvm.load %437 : !llvm.ptr<i32>
    %439 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %440 = llvm.mlir.constant(2 : index) : i64
    %441 = llvm.mul %421, %440  : i64
    %442 = llvm.add %441, %426  : i64
    %443 = llvm.add %442, %431  : i64
    %444 = llvm.getelementptr %439[%443] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %445 = llvm.load %444 : !llvm.ptr<i32>
    %446 = llvm.mul %438, %445  : i32
    %447 = llvm.extractvalue %412[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.mlir.constant(4 : index) : i64
    %449 = llvm.mul %416, %448  : i64
    %450 = llvm.mlir.constant(2 : index) : i64
    %451 = llvm.mul %421, %450  : i64
    %452 = llvm.add %449, %451  : i64
    %453 = llvm.add %452, %426  : i64
    %454 = llvm.add %453, %431  : i64
    %455 = llvm.getelementptr %447[%454] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %446, %455 : !llvm.ptr<i32>
    %456 = llvm.add %431, %430  : i64
    llvm.br ^bb43(%456 : i64)
  ^bb45:  // pred: ^bb43
    %457 = llvm.add %426, %425  : i64
    llvm.br ^bb41(%457 : i64)
  ^bb46:  // pred: ^bb41
    %458 = llvm.add %421, %420  : i64
    llvm.br ^bb39(%458 : i64)
  ^bb47:  // pred: ^bb39
    %459 = llvm.add %416, %415  : i64
    llvm.br ^bb37(%459 : i64)
  ^bb48:  // pred: ^bb37
    %460 = llvm.mlir.constant(1 : index) : i64
    %461 = llvm.mlir.constant(2 : index) : i64
    %462 = llvm.mlir.constant(2 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    %465 = llvm.mlir.constant(4 : index) : i64
    %466 = llvm.mlir.constant(4 : index) : i64
    %467 = llvm.mlir.null : !llvm.ptr<i1>
    %468 = llvm.getelementptr %467[%466] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %469 = llvm.ptrtoint %468 : !llvm.ptr<i1> to i64
    %470 = llvm.mlir.constant(16 : index) : i64
    %471 = llvm.add %469, %470  : i64
    %472 = llvm.call @malloc(%471) : (i64) -> !llvm.ptr<i8>
    %473 = llvm.bitcast %472 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %474 = llvm.ptrtoint %473 : !llvm.ptr<i1> to i64
    %475 = llvm.mlir.constant(1 : index) : i64
    %476 = llvm.sub %470, %475  : i64
    %477 = llvm.add %474, %476  : i64
    %478 = llvm.urem %477, %470  : i64
    %479 = llvm.sub %477, %478  : i64
    %480 = llvm.inttoptr %479 : i64 to !llvm.ptr<i1>
    %481 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %482 = llvm.insertvalue %473, %481[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %483 = llvm.insertvalue %480, %482[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %484 = llvm.mlir.constant(0 : index) : i64
    %485 = llvm.insertvalue %484, %483[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %486 = llvm.insertvalue %460, %485[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %487 = llvm.insertvalue %461, %486[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %488 = llvm.insertvalue %462, %487[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %489 = llvm.insertvalue %463, %488[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.insertvalue %465, %489[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %491 = llvm.insertvalue %462, %490[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %492 = llvm.insertvalue %463, %491[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.insertvalue %464, %492[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.mlir.constant(0 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    %496 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%494 : i64)
  ^bb49(%497: i64):  // 2 preds: ^bb48, ^bb59
    %498 = llvm.icmp "slt" %497, %495 : i64
    llvm.cond_br %498, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %499 = llvm.mlir.constant(0 : index) : i64
    %500 = llvm.mlir.constant(2 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%499 : i64)
  ^bb51(%502: i64):  // 2 preds: ^bb50, ^bb58
    %503 = llvm.icmp "slt" %502, %500 : i64
    llvm.cond_br %503, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %504 = llvm.mlir.constant(0 : index) : i64
    %505 = llvm.mlir.constant(2 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%504 : i64)
  ^bb53(%507: i64):  // 2 preds: ^bb52, ^bb57
    %508 = llvm.icmp "slt" %507, %505 : i64
    llvm.cond_br %508, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %509 = llvm.mlir.constant(0 : index) : i64
    %510 = llvm.mlir.constant(1 : index) : i64
    %511 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%509 : i64)
  ^bb55(%512: i64):  // 2 preds: ^bb54, ^bb56
    %513 = llvm.icmp "slt" %512, %510 : i64
    llvm.cond_br %513, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %514 = llvm.extractvalue %412[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %515 = llvm.mlir.constant(4 : index) : i64
    %516 = llvm.mul %497, %515  : i64
    %517 = llvm.mlir.constant(2 : index) : i64
    %518 = llvm.mul %502, %517  : i64
    %519 = llvm.add %516, %518  : i64
    %520 = llvm.add %519, %507  : i64
    %521 = llvm.add %520, %512  : i64
    %522 = llvm.getelementptr %514[%521] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %523 = llvm.load %522 : !llvm.ptr<i32>
    %524 = llvm.icmp "ne" %523, %22 : i32
    %525 = llvm.extractvalue %493[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %526 = llvm.mlir.constant(4 : index) : i64
    %527 = llvm.mul %497, %526  : i64
    %528 = llvm.mlir.constant(2 : index) : i64
    %529 = llvm.mul %502, %528  : i64
    %530 = llvm.add %527, %529  : i64
    %531 = llvm.add %530, %507  : i64
    %532 = llvm.add %531, %512  : i64
    %533 = llvm.getelementptr %525[%532] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %524, %533 : !llvm.ptr<i1>
    %534 = llvm.add %512, %511  : i64
    llvm.br ^bb55(%534 : i64)
  ^bb57:  // pred: ^bb55
    %535 = llvm.add %507, %506  : i64
    llvm.br ^bb53(%535 : i64)
  ^bb58:  // pred: ^bb53
    %536 = llvm.add %502, %501  : i64
    llvm.br ^bb51(%536 : i64)
  ^bb59:  // pred: ^bb51
    %537 = llvm.add %497, %496  : i64
    llvm.br ^bb49(%537 : i64)
  ^bb60:  // pred: ^bb49
    %538 = llvm.mlir.constant(1 : index) : i64
    %539 = llvm.mlir.constant(2 : index) : i64
    %540 = llvm.mlir.constant(2 : index) : i64
    %541 = llvm.mlir.constant(1 : index) : i64
    %542 = llvm.mlir.constant(1 : index) : i64
    %543 = llvm.mlir.constant(4 : index) : i64
    %544 = llvm.mlir.constant(4 : index) : i64
    %545 = llvm.mlir.null : !llvm.ptr<i32>
    %546 = llvm.getelementptr %545[%544] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %547 = llvm.ptrtoint %546 : !llvm.ptr<i32> to i64
    %548 = llvm.mlir.constant(16 : index) : i64
    %549 = llvm.add %547, %548  : i64
    %550 = llvm.call @malloc(%549) : (i64) -> !llvm.ptr<i8>
    %551 = llvm.bitcast %550 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %552 = llvm.ptrtoint %551 : !llvm.ptr<i32> to i64
    %553 = llvm.mlir.constant(1 : index) : i64
    %554 = llvm.sub %548, %553  : i64
    %555 = llvm.add %552, %554  : i64
    %556 = llvm.urem %555, %548  : i64
    %557 = llvm.sub %555, %556  : i64
    %558 = llvm.inttoptr %557 : i64 to !llvm.ptr<i32>
    %559 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %560 = llvm.insertvalue %551, %559[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %561 = llvm.insertvalue %558, %560[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %562 = llvm.mlir.constant(0 : index) : i64
    %563 = llvm.insertvalue %562, %561[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %564 = llvm.insertvalue %538, %563[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %565 = llvm.insertvalue %539, %564[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %566 = llvm.insertvalue %540, %565[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %567 = llvm.insertvalue %541, %566[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %568 = llvm.insertvalue %543, %567[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %569 = llvm.insertvalue %540, %568[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %570 = llvm.insertvalue %541, %569[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %571 = llvm.insertvalue %542, %570[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %572 = llvm.mlir.constant(0 : index) : i64
    %573 = llvm.mlir.constant(1 : index) : i64
    %574 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%572 : i64)
  ^bb61(%575: i64):  // 2 preds: ^bb60, ^bb71
    %576 = llvm.icmp "slt" %575, %573 : i64
    llvm.cond_br %576, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %577 = llvm.mlir.constant(0 : index) : i64
    %578 = llvm.mlir.constant(2 : index) : i64
    %579 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%577 : i64)
  ^bb63(%580: i64):  // 2 preds: ^bb62, ^bb70
    %581 = llvm.icmp "slt" %580, %578 : i64
    llvm.cond_br %581, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %582 = llvm.mlir.constant(0 : index) : i64
    %583 = llvm.mlir.constant(2 : index) : i64
    %584 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%582 : i64)
  ^bb65(%585: i64):  // 2 preds: ^bb64, ^bb69
    %586 = llvm.icmp "slt" %585, %583 : i64
    llvm.cond_br %586, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %587 = llvm.mlir.constant(0 : index) : i64
    %588 = llvm.mlir.constant(1 : index) : i64
    %589 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%587 : i64)
  ^bb67(%590: i64):  // 2 preds: ^bb66, ^bb68
    %591 = llvm.icmp "slt" %590, %588 : i64
    llvm.cond_br %591, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %592 = llvm.extractvalue %412[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %593 = llvm.mlir.constant(4 : index) : i64
    %594 = llvm.mul %575, %593  : i64
    %595 = llvm.mlir.constant(2 : index) : i64
    %596 = llvm.mul %580, %595  : i64
    %597 = llvm.add %594, %596  : i64
    %598 = llvm.add %597, %585  : i64
    %599 = llvm.add %598, %590  : i64
    %600 = llvm.getelementptr %592[%599] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %601 = llvm.load %600 : !llvm.ptr<i32>
    %602 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %603 = llvm.load %602 : !llvm.ptr<i32>
    %604 = llvm.icmp "slt" %601, %603 : i32
    %605 = llvm.select %604, %603, %601 : i1, i32
    %606 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %607 = llvm.load %606 : !llvm.ptr<i32>
    %608 = llvm.icmp "slt" %605, %607 : i32
    %609 = llvm.select %608, %605, %607 : i1, i32
    %610 = llvm.extractvalue %571[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %611 = llvm.mlir.constant(4 : index) : i64
    %612 = llvm.mul %575, %611  : i64
    %613 = llvm.mlir.constant(2 : index) : i64
    %614 = llvm.mul %580, %613  : i64
    %615 = llvm.add %612, %614  : i64
    %616 = llvm.add %615, %585  : i64
    %617 = llvm.add %616, %590  : i64
    %618 = llvm.getelementptr %610[%617] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %609, %618 : !llvm.ptr<i32>
    %619 = llvm.add %590, %589  : i64
    llvm.br ^bb67(%619 : i64)
  ^bb69:  // pred: ^bb67
    %620 = llvm.add %585, %584  : i64
    llvm.br ^bb65(%620 : i64)
  ^bb70:  // pred: ^bb65
    %621 = llvm.add %580, %579  : i64
    llvm.br ^bb63(%621 : i64)
  ^bb71:  // pred: ^bb63
    %622 = llvm.add %575, %574  : i64
    llvm.br ^bb61(%622 : i64)
  ^bb72:  // pred: ^bb61
    %623 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %624 = llvm.insertvalue %343, %623[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %625 = llvm.insertvalue %493, %624[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %626 = llvm.insertvalue %571, %625[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %626 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v8_0", "v7_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v5_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %5 = llvm.extractvalue %4[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %4[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %4[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.extractvalue %4[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %9 = llvm.extractvalue %4[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.extractvalue %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.extractvalue %4[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %21 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.call @main_graph(%1, %2, %3, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %22, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %19 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %21 = llvm.call @omTensorGetDataPtr(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %22 = llvm.bitcast %21 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %23 = llvm.insertvalue %22, %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.insertvalue %22, %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.mlir.constant(0 : i64) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.call @omTensorGetShape(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %28 = llvm.call @omTensorGetStrides(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %29 = llvm.mlir.constant(0 : i64) : i64
    %30 = llvm.getelementptr %27[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %31 = llvm.load %30 : !llvm.ptr<i64>
    %32 = llvm.insertvalue %31, %26[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.getelementptr %28[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %34 = llvm.load %33 : !llvm.ptr<i64>
    %35 = llvm.insertvalue %34, %32[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.mlir.constant(1 : i64) : i64
    %37 = llvm.getelementptr %27[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %38 = llvm.load %37 : !llvm.ptr<i64>
    %39 = llvm.insertvalue %38, %35[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.getelementptr %28[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %41 = llvm.load %40 : !llvm.ptr<i64>
    %42 = llvm.insertvalue %41, %39[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %42, %19 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %43 = llvm.mlir.constant(2 : i64) : i64
    %44 = llvm.getelementptr %0[%43] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %45 = llvm.load %44 : !llvm.ptr<ptr<i8>>
    %46 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %48 = llvm.call @omTensorGetDataPtr(%45) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %49 = llvm.bitcast %48 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %50 = llvm.insertvalue %49, %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %51 = llvm.insertvalue %49, %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %52 = llvm.mlir.constant(0 : i64) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %54 = llvm.call @omTensorGetShape(%45) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %55 = llvm.call @omTensorGetStrides(%45) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.mlir.constant(0 : i64) : i64
    %57 = llvm.getelementptr %54[%56] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %58 = llvm.load %57 : !llvm.ptr<i64>
    %59 = llvm.insertvalue %58, %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %60 = llvm.getelementptr %55[%56] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %61 = llvm.load %60 : !llvm.ptr<i64>
    %62 = llvm.insertvalue %61, %59[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.mlir.constant(1 : i64) : i64
    %64 = llvm.getelementptr %54[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %65 = llvm.load %64 : !llvm.ptr<i64>
    %66 = llvm.insertvalue %65, %62[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %67 = llvm.getelementptr %55[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %68 = llvm.load %67 : !llvm.ptr<i64>
    %69 = llvm.insertvalue %68, %66[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.mlir.constant(2 : i64) : i64
    %71 = llvm.getelementptr %54[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %72 = llvm.load %71 : !llvm.ptr<i64>
    %73 = llvm.insertvalue %72, %69[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %74 = llvm.getelementptr %55[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %75 = llvm.load %74 : !llvm.ptr<i64>
    %76 = llvm.insertvalue %75, %73[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %76, %46 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %19, %46) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %77 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %78 = llvm.extractvalue %77[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %79 = llvm.extractvalue %77[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %80 = llvm.extractvalue %77[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %81 = llvm.mlir.constant(3 : i64) : i64
    %82 = llvm.mlir.constant(24 : i64) : i64
    %83 = llvm.call @malloc(%82) : (i64) -> !llvm.ptr<i8>
    %84 = llvm.bitcast %83 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %85 = llvm.mlir.constant(4 : i64) : i64
    %86 = llvm.call @omTensorCreateUntyped(%85) : (i64) -> !llvm.ptr<i8>
    %87 = llvm.mlir.constant(1 : i64) : i64
    %88 = llvm.extractvalue %78[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %90 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.bitcast %90 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%86, %87, %89, %91) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %92 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%86, %92) : (!llvm.ptr<i8>, i64) -> ()
    %93 = llvm.call @omTensorGetShape(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.call @omTensorGetStrides(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %95 = llvm.mlir.constant(0 : i64) : i64
    %96 = llvm.extractvalue %78[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %93[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.extractvalue %78[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.getelementptr %94[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %98, %99 : !llvm.ptr<i64>
    %100 = llvm.mlir.constant(1 : i64) : i64
    %101 = llvm.extractvalue %78[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %93[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %78[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %94[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(2 : i64) : i64
    %106 = llvm.extractvalue %78[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %93[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %78[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %94[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(3 : i64) : i64
    %111 = llvm.extractvalue %78[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %93[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %78[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %94[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(0 : i64) : i64
    %116 = llvm.getelementptr %84[%115] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %86, %116 : !llvm.ptr<ptr<i8>>
    %117 = llvm.mlir.constant(4 : i64) : i64
    %118 = llvm.call @omTensorCreateUntyped(%117) : (i64) -> !llvm.ptr<i8>
    %119 = llvm.mlir.constant(1 : i64) : i64
    %120 = llvm.extractvalue %79[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.bitcast %120 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %122 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.bitcast %122 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%118, %119, %121, %123) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %124 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%118, %124) : (!llvm.ptr<i8>, i64) -> ()
    %125 = llvm.call @omTensorGetShape(%118) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.call @omTensorGetStrides(%118) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %127 = llvm.mlir.constant(0 : i64) : i64
    %128 = llvm.extractvalue %79[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %125[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.extractvalue %79[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.getelementptr %126[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.mlir.constant(1 : i64) : i64
    %133 = llvm.extractvalue %79[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.getelementptr %125[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.extractvalue %79[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %126[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.mlir.constant(2 : i64) : i64
    %138 = llvm.extractvalue %79[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.getelementptr %125[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.extractvalue %79[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %126[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.mlir.constant(3 : i64) : i64
    %143 = llvm.extractvalue %79[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.getelementptr %125[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %143, %144 : !llvm.ptr<i64>
    %145 = llvm.extractvalue %79[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %126[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.mlir.constant(1 : i64) : i64
    %148 = llvm.getelementptr %84[%147] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %118, %148 : !llvm.ptr<ptr<i8>>
    %149 = llvm.mlir.constant(4 : i64) : i64
    %150 = llvm.call @omTensorCreateUntyped(%149) : (i64) -> !llvm.ptr<i8>
    %151 = llvm.mlir.constant(1 : i64) : i64
    %152 = llvm.extractvalue %80[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.bitcast %152 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %154 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.bitcast %154 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%150, %151, %153, %155) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %156 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%150, %156) : (!llvm.ptr<i8>, i64) -> ()
    %157 = llvm.call @omTensorGetShape(%150) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %158 = llvm.call @omTensorGetStrides(%150) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %159 = llvm.mlir.constant(0 : i64) : i64
    %160 = llvm.extractvalue %80[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.getelementptr %157[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %160, %161 : !llvm.ptr<i64>
    %162 = llvm.extractvalue %80[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.getelementptr %158[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %162, %163 : !llvm.ptr<i64>
    %164 = llvm.mlir.constant(1 : i64) : i64
    %165 = llvm.extractvalue %80[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.getelementptr %157[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %165, %166 : !llvm.ptr<i64>
    %167 = llvm.extractvalue %80[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.getelementptr %158[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %167, %168 : !llvm.ptr<i64>
    %169 = llvm.mlir.constant(2 : i64) : i64
    %170 = llvm.extractvalue %80[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.getelementptr %157[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %170, %171 : !llvm.ptr<i64>
    %172 = llvm.extractvalue %80[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.getelementptr %158[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %172, %173 : !llvm.ptr<i64>
    %174 = llvm.mlir.constant(3 : i64) : i64
    %175 = llvm.extractvalue %80[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.getelementptr %157[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %175, %176 : !llvm.ptr<i64>
    %177 = llvm.extractvalue %80[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.getelementptr %158[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %177, %178 : !llvm.ptr<i64>
    %179 = llvm.mlir.constant(2 : i64) : i64
    %180 = llvm.getelementptr %84[%179] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %150, %180 : !llvm.ptr<ptr<i8>>
    %181 = llvm.call @omTensorListCreate(%84, %81, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %181 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<187 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<187 x i8>> to !llvm.ptr<i8>
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

