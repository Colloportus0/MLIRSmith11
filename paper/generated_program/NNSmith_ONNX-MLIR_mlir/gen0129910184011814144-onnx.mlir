module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [3 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_8(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_7(dense<4> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_6(dense<6> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_5(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<[3, 1, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[3, 1, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v2_0", "v3_0"]} {
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
    %35 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
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
    %46 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %47 = llvm.bitcast %46 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.insertvalue %47, %48[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.insertvalue %47, %49[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.insertvalue %51, %50[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(4 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i64>>
    %58 = llvm.bitcast %57 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %60 = llvm.insertvalue %58, %59[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %64 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %65 = llvm.bitcast %64 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %66 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %67 = llvm.insertvalue %65, %66[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %65, %67[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.insertvalue %69, %68[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.insertvalue %71, %70[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.insertvalue %73, %72[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.insertvalue %77, %76[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.insertvalue %79, %78[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.insertvalue %81, %80[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.insertvalue %83, %82[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.insertvalue %85, %84[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %88 = llvm.bitcast %87 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %89 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %90 = llvm.insertvalue %88, %89[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.insertvalue %88, %90[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.mlir.constant(0 : index) : i64
    %93 = llvm.insertvalue %92, %91[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.insertvalue %94, %93[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.insertvalue %96, %95[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.insertvalue %98, %97[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.insertvalue %100, %99[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.insertvalue %102, %101[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.insertvalue %104, %103[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.insertvalue %106, %105[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.insertvalue %108, %107[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<4 x i64>>
    %111 = llvm.bitcast %110 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %112 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %113 = llvm.insertvalue %111, %112[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.insertvalue %111, %113[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.insertvalue %115, %114[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.mlir.constant(4 : index) : i64
    %118 = llvm.insertvalue %117, %116[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.insertvalue %119, %118[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %121 = llvm.mlir.constant(4 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.null : !llvm.ptr<i64>
    %124 = llvm.getelementptr %123[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %125 = llvm.ptrtoint %124 : !llvm.ptr<i64> to i64
    %126 = llvm.mlir.constant(16 : index) : i64
    %127 = llvm.add %125, %126  : i64
    %128 = llvm.call @malloc(%127) : (i64) -> !llvm.ptr<i8>
    %129 = llvm.bitcast %128 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %130 = llvm.ptrtoint %129 : !llvm.ptr<i64> to i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.sub %126, %131  : i64
    %133 = llvm.add %130, %132  : i64
    %134 = llvm.urem %133, %126  : i64
    %135 = llvm.sub %133, %134  : i64
    %136 = llvm.inttoptr %135 : i64 to !llvm.ptr<i64>
    %137 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %138 = llvm.insertvalue %129, %137[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %139 = llvm.insertvalue %136, %138[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %140 = llvm.mlir.constant(0 : index) : i64
    %141 = llvm.insertvalue %140, %139[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %142 = llvm.insertvalue %121, %141[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %143 = llvm.insertvalue %122, %142[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %144 = llvm.mlir.constant(0 : index) : i64
    %145 = llvm.mlir.constant(4 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%144 : i64)
  ^bb1(%147: i64):  // 2 preds: ^bb0, ^bb2
    %148 = llvm.icmp "slt" %147, %145 : i64
    llvm.cond_br %148, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %149 = llvm.extractvalue %143[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.getelementptr %149[%147] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %16, %150 : !llvm.ptr<i64>
    %151 = llvm.add %147, %146  : i64
    llvm.br ^bb1(%151 : i64)
  ^bb3:  // pred: ^bb1
    %152 = llvm.mlir.constant(4 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.null : !llvm.ptr<i64>
    %155 = llvm.getelementptr %154[%152] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %156 = llvm.ptrtoint %155 : !llvm.ptr<i64> to i64
    %157 = llvm.mlir.constant(16 : index) : i64
    %158 = llvm.add %156, %157  : i64
    %159 = llvm.call @malloc(%158) : (i64) -> !llvm.ptr<i8>
    %160 = llvm.bitcast %159 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %161 = llvm.ptrtoint %160 : !llvm.ptr<i64> to i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.sub %157, %162  : i64
    %164 = llvm.add %161, %163  : i64
    %165 = llvm.urem %164, %157  : i64
    %166 = llvm.sub %164, %165  : i64
    %167 = llvm.inttoptr %166 : i64 to !llvm.ptr<i64>
    %168 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %169 = llvm.insertvalue %160, %168[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %170 = llvm.insertvalue %167, %169[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.insertvalue %171, %170[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.insertvalue %152, %172[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %174 = llvm.insertvalue %153, %173[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(4 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%175 : i64)
  ^bb4(%178: i64):  // 2 preds: ^bb3, ^bb5
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %180 = llvm.extractvalue %143[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.getelementptr %180[%178] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %182 = llvm.load %181 : !llvm.ptr<i64>
    %183 = llvm.extractvalue %63[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %184 = llvm.load %183 : !llvm.ptr<i64>
    %185 = llvm.mul %182, %184  : i64
    %186 = llvm.extractvalue %174[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %187 = llvm.getelementptr %186[%178] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %185, %187 : !llvm.ptr<i64>
    %188 = llvm.add %178, %177  : i64
    llvm.br ^bb4(%188 : i64)
  ^bb6:  // pred: ^bb4
    %189 = llvm.mlir.constant(4 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.mlir.null : !llvm.ptr<i1>
    %192 = llvm.getelementptr %191[%189] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %193 = llvm.ptrtoint %192 : !llvm.ptr<i1> to i64
    %194 = llvm.mlir.constant(16 : index) : i64
    %195 = llvm.add %193, %194  : i64
    %196 = llvm.call @malloc(%195) : (i64) -> !llvm.ptr<i8>
    %197 = llvm.bitcast %196 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %198 = llvm.ptrtoint %197 : !llvm.ptr<i1> to i64
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.sub %194, %199  : i64
    %201 = llvm.add %198, %200  : i64
    %202 = llvm.urem %201, %194  : i64
    %203 = llvm.sub %201, %202  : i64
    %204 = llvm.inttoptr %203 : i64 to !llvm.ptr<i1>
    %205 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %206 = llvm.insertvalue %197, %205[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %207 = llvm.insertvalue %204, %206[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.insertvalue %208, %207[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %210 = llvm.insertvalue %189, %209[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %211 = llvm.insertvalue %190, %210[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.mlir.constant(4 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%212 : i64)
  ^bb7(%215: i64):  // 2 preds: ^bb6, ^bb8
    %216 = llvm.icmp "slt" %215, %213 : i64
    llvm.cond_br %216, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %217 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.getelementptr %217[%215] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %219 = llvm.load %218 : !llvm.ptr<i64>
    %220 = llvm.extractvalue %174[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.getelementptr %220[%215] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %222 = llvm.load %221 : !llvm.ptr<i64>
    %223 = llvm.icmp "eq" %219, %222 : i64
    %224 = llvm.extractvalue %211[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.getelementptr %224[%215] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %223, %225 : !llvm.ptr<i1>
    %226 = llvm.add %215, %214  : i64
    llvm.br ^bb7(%226 : i64)
  ^bb9:  // pred: ^bb7
    %227 = llvm.mlir.constant(4 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.null : !llvm.ptr<i64>
    %230 = llvm.getelementptr %229[%227] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %231 = llvm.ptrtoint %230 : !llvm.ptr<i64> to i64
    %232 = llvm.mlir.constant(16 : index) : i64
    %233 = llvm.add %231, %232  : i64
    %234 = llvm.call @malloc(%233) : (i64) -> !llvm.ptr<i8>
    %235 = llvm.bitcast %234 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %236 = llvm.ptrtoint %235 : !llvm.ptr<i64> to i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.sub %232, %237  : i64
    %239 = llvm.add %236, %238  : i64
    %240 = llvm.urem %239, %232  : i64
    %241 = llvm.sub %239, %240  : i64
    %242 = llvm.inttoptr %241 : i64 to !llvm.ptr<i64>
    %243 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %244 = llvm.insertvalue %235, %243[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.insertvalue %242, %244[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.insertvalue %246, %245[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.insertvalue %227, %247[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %249 = llvm.insertvalue %228, %248[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %250 = llvm.mlir.constant(0 : index) : i64
    %251 = llvm.mlir.constant(4 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%250 : i64)
  ^bb10(%253: i64):  // 2 preds: ^bb9, ^bb11
    %254 = llvm.icmp "slt" %253, %251 : i64
    llvm.cond_br %254, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %255 = llvm.extractvalue %211[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.getelementptr %255[%253] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %257 = llvm.load %256 : !llvm.ptr<i1>
    %258 = llvm.extractvalue %143[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %259 = llvm.getelementptr %258[%253] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %260 = llvm.load %259 : !llvm.ptr<i64>
    %261 = llvm.extractvalue %120[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.getelementptr %261[%253] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %263 = llvm.load %262 : !llvm.ptr<i64>
    %264 = llvm.select %257, %260, %263 : i1, i64
    %265 = llvm.extractvalue %249[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.getelementptr %265[%253] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %264, %266 : !llvm.ptr<i64>
    %267 = llvm.add %253, %252  : i64
    llvm.br ^bb10(%267 : i64)
  ^bb12:  // pred: ^bb10
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.mlir.null : !llvm.ptr<i32>
    %274 = llvm.getelementptr %273[%268] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %275 = llvm.ptrtoint %274 : !llvm.ptr<i32> to i64
    %276 = llvm.mlir.constant(16 : index) : i64
    %277 = llvm.add %275, %276  : i64
    %278 = llvm.call @malloc(%277) : (i64) -> !llvm.ptr<i8>
    %279 = llvm.bitcast %278 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %280 = llvm.ptrtoint %279 : !llvm.ptr<i32> to i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.sub %276, %281  : i64
    %283 = llvm.add %280, %282  : i64
    %284 = llvm.urem %283, %276  : i64
    %285 = llvm.sub %283, %284  : i64
    %286 = llvm.inttoptr %285 : i64 to !llvm.ptr<i32>
    %287 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %288 = llvm.insertvalue %279, %287[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.insertvalue %286, %288[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.insertvalue %290, %289[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.insertvalue %268, %291[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %293 = llvm.insertvalue %269, %292[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.insertvalue %270, %293[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.insertvalue %271, %294[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.insertvalue %269, %295[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.insertvalue %270, %296[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.insertvalue %271, %297[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %272, %298[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.mlir.constant(0 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%300 : i64)
  ^bb13(%303: i64):  // 2 preds: ^bb12, ^bb23
    %304 = llvm.icmp "slt" %303, %301 : i64
    llvm.cond_br %304, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%305 : i64)
  ^bb15(%308: i64):  // 2 preds: ^bb14, ^bb22
    %309 = llvm.icmp "slt" %308, %306 : i64
    llvm.cond_br %309, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%310 : i64)
  ^bb17(%313: i64):  // 2 preds: ^bb16, ^bb21
    %314 = llvm.icmp "slt" %313, %311 : i64
    llvm.cond_br %314, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%315 : i64)
  ^bb19(%318: i64):  // 2 preds: ^bb18, ^bb20
    %319 = llvm.icmp "slt" %318, %316 : i64
    llvm.cond_br %319, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %320 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.add %15, %15  : i64
    %322 = llvm.add %321, %15  : i64
    %323 = llvm.add %322, %15  : i64
    %324 = llvm.getelementptr %320[%323] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %325 = llvm.load %324 : !llvm.ptr<i32>
    %326 = llvm.extractvalue %299[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.add %303, %308  : i64
    %328 = llvm.add %327, %313  : i64
    %329 = llvm.add %328, %318  : i64
    %330 = llvm.getelementptr %326[%329] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %325, %330 : !llvm.ptr<i32>
    %331 = llvm.add %318, %317  : i64
    llvm.br ^bb19(%331 : i64)
  ^bb21:  // pred: ^bb19
    %332 = llvm.add %313, %312  : i64
    llvm.br ^bb17(%332 : i64)
  ^bb22:  // pred: ^bb17
    %333 = llvm.add %308, %307  : i64
    llvm.br ^bb15(%333 : i64)
  ^bb23:  // pred: ^bb15
    %334 = llvm.add %303, %302  : i64
    llvm.br ^bb13(%334 : i64)
  ^bb24:  // pred: ^bb13
    %335 = llvm.mlir.constant(3 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.mlir.null : !llvm.ptr<i32>
    %341 = llvm.getelementptr %340[%335] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %342 = llvm.ptrtoint %341 : !llvm.ptr<i32> to i64
    %343 = llvm.mlir.constant(16 : index) : i64
    %344 = llvm.add %342, %343  : i64
    %345 = llvm.call @malloc(%344) : (i64) -> !llvm.ptr<i8>
    %346 = llvm.bitcast %345 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %347 = llvm.ptrtoint %346 : !llvm.ptr<i32> to i64
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.sub %343, %348  : i64
    %350 = llvm.add %347, %349  : i64
    %351 = llvm.urem %350, %343  : i64
    %352 = llvm.sub %350, %351  : i64
    %353 = llvm.inttoptr %352 : i64 to !llvm.ptr<i32>
    %354 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %355 = llvm.insertvalue %346, %354[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.insertvalue %353, %355[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.mlir.constant(0 : index) : i64
    %358 = llvm.insertvalue %357, %356[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.insertvalue %335, %358[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.insertvalue %336, %359[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.insertvalue %337, %360[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.insertvalue %338, %361[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.insertvalue %336, %362[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.insertvalue %337, %363[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.insertvalue %338, %364[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %366 = llvm.insertvalue %339, %365[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.mlir.constant(0 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%367 : i64)
  ^bb25(%370: i64):  // 2 preds: ^bb24, ^bb35
    %371 = llvm.icmp "slt" %370, %368 : i64
    llvm.cond_br %371, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %372 = llvm.mlir.constant(0 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%372 : i64)
  ^bb27(%375: i64):  // 2 preds: ^bb26, ^bb34
    %376 = llvm.icmp "slt" %375, %373 : i64
    llvm.cond_br %376, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%377 : i64)
  ^bb29(%380: i64):  // 2 preds: ^bb28, ^bb33
    %381 = llvm.icmp "slt" %380, %378 : i64
    llvm.cond_br %381, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %382 = llvm.mlir.constant(0 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%382 : i64)
  ^bb31(%385: i64):  // 2 preds: ^bb30, ^bb32
    %386 = llvm.icmp "slt" %385, %383 : i64
    llvm.cond_br %386, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %387 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.add %370, %375  : i64
    %389 = llvm.add %388, %380  : i64
    %390 = llvm.add %389, %385  : i64
    %391 = llvm.getelementptr %387[%390] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %392 = llvm.load %391 : !llvm.ptr<i32>
    %393 = llvm.extractvalue %366[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.add %370, %375  : i64
    %395 = llvm.add %394, %380  : i64
    %396 = llvm.add %395, %385  : i64
    %397 = llvm.getelementptr %393[%396] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %392, %397 : !llvm.ptr<i32>
    %398 = llvm.add %385, %384  : i64
    llvm.br ^bb31(%398 : i64)
  ^bb33:  // pred: ^bb31
    %399 = llvm.add %380, %379  : i64
    llvm.br ^bb29(%399 : i64)
  ^bb34:  // pred: ^bb29
    %400 = llvm.add %375, %374  : i64
    llvm.br ^bb27(%400 : i64)
  ^bb35:  // pred: ^bb27
    %401 = llvm.add %370, %369  : i64
    llvm.br ^bb25(%401 : i64)
  ^bb36:  // pred: ^bb25
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%402 : i64)
  ^bb37(%405: i64):  // 2 preds: ^bb36, ^bb47
    %406 = llvm.icmp "slt" %405, %403 : i64
    llvm.cond_br %406, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %407 = llvm.mlir.constant(0 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%407 : i64)
  ^bb39(%410: i64):  // 2 preds: ^bb38, ^bb46
    %411 = llvm.icmp "slt" %410, %408 : i64
    llvm.cond_br %411, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %412 = llvm.mlir.constant(0 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%412 : i64)
  ^bb41(%415: i64):  // 2 preds: ^bb40, ^bb45
    %416 = llvm.icmp "slt" %415, %413 : i64
    llvm.cond_br %416, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%417 : i64)
  ^bb43(%420: i64):  // 2 preds: ^bb42, ^bb44
    %421 = llvm.icmp "slt" %420, %418 : i64
    llvm.cond_br %421, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %422 = llvm.mlir.constant(1 : index) : i64
    %423 = llvm.add %405, %422  : i64
    %424 = llvm.extractvalue %109[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.add %405, %410  : i64
    %426 = llvm.add %425, %415  : i64
    %427 = llvm.add %426, %420  : i64
    %428 = llvm.getelementptr %424[%427] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %429 = llvm.load %428 : !llvm.ptr<i32>
    %430 = llvm.extractvalue %366[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.add %423, %410  : i64
    %432 = llvm.add %431, %415  : i64
    %433 = llvm.add %432, %420  : i64
    %434 = llvm.getelementptr %430[%433] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %429, %434 : !llvm.ptr<i32>
    %435 = llvm.add %420, %419  : i64
    llvm.br ^bb43(%435 : i64)
  ^bb45:  // pred: ^bb43
    %436 = llvm.add %415, %414  : i64
    llvm.br ^bb41(%436 : i64)
  ^bb46:  // pred: ^bb41
    %437 = llvm.add %410, %409  : i64
    llvm.br ^bb39(%437 : i64)
  ^bb47:  // pred: ^bb39
    %438 = llvm.add %405, %404  : i64
    llvm.br ^bb37(%438 : i64)
  ^bb48:  // pred: ^bb37
    %439 = llvm.mlir.constant(0 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%439 : i64)
  ^bb49(%442: i64):  // 2 preds: ^bb48, ^bb59
    %443 = llvm.icmp "slt" %442, %440 : i64
    llvm.cond_br %443, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %444 = llvm.mlir.constant(0 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%444 : i64)
  ^bb51(%447: i64):  // 2 preds: ^bb50, ^bb58
    %448 = llvm.icmp "slt" %447, %445 : i64
    llvm.cond_br %448, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %449 = llvm.mlir.constant(0 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%449 : i64)
  ^bb53(%452: i64):  // 2 preds: ^bb52, ^bb57
    %453 = llvm.icmp "slt" %452, %450 : i64
    llvm.cond_br %453, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %454 = llvm.mlir.constant(0 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%454 : i64)
  ^bb55(%457: i64):  // 2 preds: ^bb54, ^bb56
    %458 = llvm.icmp "slt" %457, %455 : i64
    llvm.cond_br %458, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %459 = llvm.mlir.constant(2 : index) : i64
    %460 = llvm.add %442, %459  : i64
    %461 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.add %442, %447  : i64
    %463 = llvm.add %462, %452  : i64
    %464 = llvm.add %463, %457  : i64
    %465 = llvm.getelementptr %461[%464] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %466 = llvm.load %465 : !llvm.ptr<i32>
    %467 = llvm.extractvalue %366[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.add %460, %447  : i64
    %469 = llvm.add %468, %452  : i64
    %470 = llvm.add %469, %457  : i64
    %471 = llvm.getelementptr %467[%470] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %466, %471 : !llvm.ptr<i32>
    %472 = llvm.add %457, %456  : i64
    llvm.br ^bb55(%472 : i64)
  ^bb57:  // pred: ^bb55
    %473 = llvm.add %452, %451  : i64
    llvm.br ^bb53(%473 : i64)
  ^bb58:  // pred: ^bb53
    %474 = llvm.add %447, %446  : i64
    llvm.br ^bb51(%474 : i64)
  ^bb59:  // pred: ^bb51
    %475 = llvm.add %442, %441  : i64
    llvm.br ^bb49(%475 : i64)
  ^bb60:  // pred: ^bb49
    %476 = llvm.mlir.constant(4 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    %478 = llvm.mlir.null : !llvm.ptr<i64>
    %479 = llvm.getelementptr %478[%476] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %480 = llvm.ptrtoint %479 : !llvm.ptr<i64> to i64
    %481 = llvm.mlir.constant(16 : index) : i64
    %482 = llvm.add %480, %481  : i64
    %483 = llvm.call @malloc(%482) : (i64) -> !llvm.ptr<i8>
    %484 = llvm.bitcast %483 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %485 = llvm.ptrtoint %484 : !llvm.ptr<i64> to i64
    %486 = llvm.mlir.constant(1 : index) : i64
    %487 = llvm.sub %481, %486  : i64
    %488 = llvm.add %485, %487  : i64
    %489 = llvm.urem %488, %481  : i64
    %490 = llvm.sub %488, %489  : i64
    %491 = llvm.inttoptr %490 : i64 to !llvm.ptr<i64>
    %492 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %493 = llvm.insertvalue %484, %492[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %494 = llvm.insertvalue %491, %493[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %495 = llvm.mlir.constant(0 : index) : i64
    %496 = llvm.insertvalue %495, %494[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %497 = llvm.insertvalue %476, %496[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %498 = llvm.insertvalue %477, %497[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %499 = llvm.mlir.constant(0 : index) : i64
    %500 = llvm.mlir.constant(4 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%499 : i64)
  ^bb61(%502: i64):  // 2 preds: ^bb60, ^bb62
    %503 = llvm.icmp "slt" %502, %500 : i64
    llvm.cond_br %503, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %504 = llvm.extractvalue %498[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %505 = llvm.getelementptr %504[%502] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %16, %505 : !llvm.ptr<i64>
    %506 = llvm.add %502, %501  : i64
    llvm.br ^bb61(%506 : i64)
  ^bb63:  // pred: ^bb61
    %507 = llvm.mlir.constant(4 : index) : i64
    %508 = llvm.mlir.constant(1 : index) : i64
    %509 = llvm.mlir.null : !llvm.ptr<i64>
    %510 = llvm.getelementptr %509[%507] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %511 = llvm.ptrtoint %510 : !llvm.ptr<i64> to i64
    %512 = llvm.mlir.constant(16 : index) : i64
    %513 = llvm.add %511, %512  : i64
    %514 = llvm.call @malloc(%513) : (i64) -> !llvm.ptr<i8>
    %515 = llvm.bitcast %514 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %516 = llvm.ptrtoint %515 : !llvm.ptr<i64> to i64
    %517 = llvm.mlir.constant(1 : index) : i64
    %518 = llvm.sub %512, %517  : i64
    %519 = llvm.add %516, %518  : i64
    %520 = llvm.urem %519, %512  : i64
    %521 = llvm.sub %519, %520  : i64
    %522 = llvm.inttoptr %521 : i64 to !llvm.ptr<i64>
    %523 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %524 = llvm.insertvalue %515, %523[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %525 = llvm.insertvalue %522, %524[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %526 = llvm.mlir.constant(0 : index) : i64
    %527 = llvm.insertvalue %526, %525[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %528 = llvm.insertvalue %507, %527[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %529 = llvm.insertvalue %508, %528[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %530 = llvm.mlir.constant(0 : index) : i64
    %531 = llvm.mlir.constant(4 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%530 : i64)
  ^bb64(%533: i64):  // 2 preds: ^bb63, ^bb65
    %534 = llvm.icmp "slt" %533, %531 : i64
    llvm.cond_br %534, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %535 = llvm.extractvalue %498[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %536 = llvm.getelementptr %535[%533] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %537 = llvm.load %536 : !llvm.ptr<i64>
    %538 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %539 = llvm.load %538 : !llvm.ptr<i64>
    %540 = llvm.mul %537, %539  : i64
    %541 = llvm.extractvalue %529[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %542 = llvm.getelementptr %541[%533] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %540, %542 : !llvm.ptr<i64>
    %543 = llvm.add %533, %532  : i64
    llvm.br ^bb64(%543 : i64)
  ^bb66:  // pred: ^bb64
    %544 = llvm.mlir.constant(4 : index) : i64
    %545 = llvm.mlir.constant(1 : index) : i64
    %546 = llvm.mlir.null : !llvm.ptr<i1>
    %547 = llvm.getelementptr %546[%544] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %548 = llvm.ptrtoint %547 : !llvm.ptr<i1> to i64
    %549 = llvm.mlir.constant(16 : index) : i64
    %550 = llvm.add %548, %549  : i64
    %551 = llvm.call @malloc(%550) : (i64) -> !llvm.ptr<i8>
    %552 = llvm.bitcast %551 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %553 = llvm.ptrtoint %552 : !llvm.ptr<i1> to i64
    %554 = llvm.mlir.constant(1 : index) : i64
    %555 = llvm.sub %549, %554  : i64
    %556 = llvm.add %553, %555  : i64
    %557 = llvm.urem %556, %549  : i64
    %558 = llvm.sub %556, %557  : i64
    %559 = llvm.inttoptr %558 : i64 to !llvm.ptr<i1>
    %560 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %561 = llvm.insertvalue %552, %560[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %562 = llvm.insertvalue %559, %561[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %563 = llvm.mlir.constant(0 : index) : i64
    %564 = llvm.insertvalue %563, %562[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %565 = llvm.insertvalue %544, %564[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %566 = llvm.insertvalue %545, %565[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %567 = llvm.mlir.constant(0 : index) : i64
    %568 = llvm.mlir.constant(4 : index) : i64
    %569 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%567 : i64)
  ^bb67(%570: i64):  // 2 preds: ^bb66, ^bb68
    %571 = llvm.icmp "slt" %570, %568 : i64
    llvm.cond_br %571, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %572 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %573 = llvm.getelementptr %572[%570] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %574 = llvm.load %573 : !llvm.ptr<i64>
    %575 = llvm.extractvalue %529[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %576 = llvm.getelementptr %575[%570] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %577 = llvm.load %576 : !llvm.ptr<i64>
    %578 = llvm.icmp "eq" %574, %577 : i64
    %579 = llvm.extractvalue %566[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %580 = llvm.getelementptr %579[%570] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %578, %580 : !llvm.ptr<i1>
    %581 = llvm.add %570, %569  : i64
    llvm.br ^bb67(%581 : i64)
  ^bb69:  // pred: ^bb67
    %582 = llvm.mlir.constant(4 : index) : i64
    %583 = llvm.mlir.constant(1 : index) : i64
    %584 = llvm.mlir.null : !llvm.ptr<i64>
    %585 = llvm.getelementptr %584[%582] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %586 = llvm.ptrtoint %585 : !llvm.ptr<i64> to i64
    %587 = llvm.mlir.constant(16 : index) : i64
    %588 = llvm.add %586, %587  : i64
    %589 = llvm.call @malloc(%588) : (i64) -> !llvm.ptr<i8>
    %590 = llvm.bitcast %589 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %591 = llvm.ptrtoint %590 : !llvm.ptr<i64> to i64
    %592 = llvm.mlir.constant(1 : index) : i64
    %593 = llvm.sub %587, %592  : i64
    %594 = llvm.add %591, %593  : i64
    %595 = llvm.urem %594, %587  : i64
    %596 = llvm.sub %594, %595  : i64
    %597 = llvm.inttoptr %596 : i64 to !llvm.ptr<i64>
    %598 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %599 = llvm.insertvalue %590, %598[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %600 = llvm.insertvalue %597, %599[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %601 = llvm.mlir.constant(0 : index) : i64
    %602 = llvm.insertvalue %601, %600[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %603 = llvm.insertvalue %582, %602[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %604 = llvm.insertvalue %583, %603[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %605 = llvm.mlir.constant(0 : index) : i64
    %606 = llvm.mlir.constant(4 : index) : i64
    %607 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%605 : i64)
  ^bb70(%608: i64):  // 2 preds: ^bb69, ^bb71
    %609 = llvm.icmp "slt" %608, %606 : i64
    llvm.cond_br %609, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %610 = llvm.extractvalue %566[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %611 = llvm.getelementptr %610[%608] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %612 = llvm.load %611 : !llvm.ptr<i1>
    %613 = llvm.extractvalue %498[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %614 = llvm.getelementptr %613[%608] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %615 = llvm.load %614 : !llvm.ptr<i64>
    %616 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %617 = llvm.getelementptr %616[%608] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %618 = llvm.load %617 : !llvm.ptr<i64>
    %619 = llvm.select %612, %615, %618 : i1, i64
    %620 = llvm.extractvalue %604[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %621 = llvm.getelementptr %620[%608] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %619, %621 : !llvm.ptr<i64>
    %622 = llvm.add %608, %607  : i64
    llvm.br ^bb70(%622 : i64)
  ^bb72:  // pred: ^bb70
    %623 = llvm.mlir.constant(3 : index) : i64
    %624 = llvm.mlir.constant(1 : index) : i64
    %625 = llvm.mlir.constant(1 : index) : i64
    %626 = llvm.mlir.constant(1 : index) : i64
    %627 = llvm.mlir.constant(1 : index) : i64
    %628 = llvm.mlir.null : !llvm.ptr<i32>
    %629 = llvm.getelementptr %628[%623] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %630 = llvm.ptrtoint %629 : !llvm.ptr<i32> to i64
    %631 = llvm.mlir.constant(16 : index) : i64
    %632 = llvm.add %630, %631  : i64
    %633 = llvm.call @malloc(%632) : (i64) -> !llvm.ptr<i8>
    %634 = llvm.bitcast %633 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %635 = llvm.ptrtoint %634 : !llvm.ptr<i32> to i64
    %636 = llvm.mlir.constant(1 : index) : i64
    %637 = llvm.sub %631, %636  : i64
    %638 = llvm.add %635, %637  : i64
    %639 = llvm.urem %638, %631  : i64
    %640 = llvm.sub %638, %639  : i64
    %641 = llvm.inttoptr %640 : i64 to !llvm.ptr<i32>
    %642 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %643 = llvm.insertvalue %634, %642[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %644 = llvm.insertvalue %641, %643[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %645 = llvm.mlir.constant(0 : index) : i64
    %646 = llvm.insertvalue %645, %644[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %647 = llvm.insertvalue %623, %646[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %648 = llvm.insertvalue %624, %647[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %649 = llvm.insertvalue %625, %648[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %650 = llvm.insertvalue %626, %649[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %651 = llvm.insertvalue %624, %650[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %652 = llvm.insertvalue %625, %651[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %653 = llvm.insertvalue %626, %652[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %654 = llvm.insertvalue %627, %653[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %655 = llvm.mlir.constant(0 : index) : i64
    %656 = llvm.mlir.constant(3 : index) : i64
    %657 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%655 : i64)
  ^bb73(%658: i64):  // 2 preds: ^bb72, ^bb83
    %659 = llvm.icmp "slt" %658, %656 : i64
    llvm.cond_br %659, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %660 = llvm.mlir.constant(0 : index) : i64
    %661 = llvm.mlir.constant(1 : index) : i64
    %662 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%660 : i64)
  ^bb75(%663: i64):  // 2 preds: ^bb74, ^bb82
    %664 = llvm.icmp "slt" %663, %661 : i64
    llvm.cond_br %664, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %665 = llvm.mlir.constant(0 : index) : i64
    %666 = llvm.mlir.constant(1 : index) : i64
    %667 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%665 : i64)
  ^bb77(%668: i64):  // 2 preds: ^bb76, ^bb81
    %669 = llvm.icmp "slt" %668, %666 : i64
    llvm.cond_br %669, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %670 = llvm.mlir.constant(0 : index) : i64
    %671 = llvm.mlir.constant(1 : index) : i64
    %672 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%670 : i64)
  ^bb79(%673: i64):  // 2 preds: ^bb78, ^bb80
    %674 = llvm.icmp "slt" %673, %671 : i64
    llvm.cond_br %674, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %675 = llvm.extractvalue %366[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %676 = llvm.add %658, %15  : i64
    %677 = llvm.add %676, %15  : i64
    %678 = llvm.add %677, %15  : i64
    %679 = llvm.getelementptr %675[%678] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %680 = llvm.load %679 : !llvm.ptr<i32>
    %681 = llvm.extractvalue %654[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %682 = llvm.add %658, %663  : i64
    %683 = llvm.add %682, %668  : i64
    %684 = llvm.add %683, %673  : i64
    %685 = llvm.getelementptr %681[%684] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %680, %685 : !llvm.ptr<i32>
    %686 = llvm.add %673, %672  : i64
    llvm.br ^bb79(%686 : i64)
  ^bb81:  // pred: ^bb79
    %687 = llvm.add %668, %667  : i64
    llvm.br ^bb77(%687 : i64)
  ^bb82:  // pred: ^bb77
    %688 = llvm.add %663, %662  : i64
    llvm.br ^bb75(%688 : i64)
  ^bb83:  // pred: ^bb75
    %689 = llvm.add %658, %657  : i64
    llvm.br ^bb73(%689 : i64)
  ^bb84:  // pred: ^bb73
    %690 = llvm.mlir.constant(3 : index) : i64
    %691 = llvm.mlir.constant(1 : index) : i64
    %692 = llvm.mlir.constant(1 : index) : i64
    %693 = llvm.mlir.constant(1 : index) : i64
    %694 = llvm.mlir.constant(1 : index) : i64
    %695 = llvm.mlir.null : !llvm.ptr<i32>
    %696 = llvm.getelementptr %695[%690] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %697 = llvm.ptrtoint %696 : !llvm.ptr<i32> to i64
    %698 = llvm.mlir.constant(16 : index) : i64
    %699 = llvm.add %697, %698  : i64
    %700 = llvm.call @malloc(%699) : (i64) -> !llvm.ptr<i8>
    %701 = llvm.bitcast %700 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %702 = llvm.ptrtoint %701 : !llvm.ptr<i32> to i64
    %703 = llvm.mlir.constant(1 : index) : i64
    %704 = llvm.sub %698, %703  : i64
    %705 = llvm.add %702, %704  : i64
    %706 = llvm.urem %705, %698  : i64
    %707 = llvm.sub %705, %706  : i64
    %708 = llvm.inttoptr %707 : i64 to !llvm.ptr<i32>
    %709 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %710 = llvm.insertvalue %701, %709[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %711 = llvm.insertvalue %708, %710[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %712 = llvm.mlir.constant(0 : index) : i64
    %713 = llvm.insertvalue %712, %711[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %714 = llvm.insertvalue %690, %713[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %715 = llvm.insertvalue %691, %714[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %716 = llvm.insertvalue %692, %715[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %717 = llvm.insertvalue %693, %716[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %718 = llvm.insertvalue %691, %717[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %719 = llvm.insertvalue %692, %718[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %720 = llvm.insertvalue %693, %719[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %721 = llvm.insertvalue %694, %720[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %722 = llvm.mlir.constant(0 : index) : i64
    %723 = llvm.mlir.constant(3 : index) : i64
    %724 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%722 : i64)
  ^bb85(%725: i64):  // 2 preds: ^bb84, ^bb95
    %726 = llvm.icmp "slt" %725, %723 : i64
    llvm.cond_br %726, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %727 = llvm.mlir.constant(0 : index) : i64
    %728 = llvm.mlir.constant(1 : index) : i64
    %729 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%727 : i64)
  ^bb87(%730: i64):  // 2 preds: ^bb86, ^bb94
    %731 = llvm.icmp "slt" %730, %728 : i64
    llvm.cond_br %731, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %732 = llvm.mlir.constant(0 : index) : i64
    %733 = llvm.mlir.constant(1 : index) : i64
    %734 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%732 : i64)
  ^bb89(%735: i64):  // 2 preds: ^bb88, ^bb93
    %736 = llvm.icmp "slt" %735, %733 : i64
    llvm.cond_br %736, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %737 = llvm.mlir.constant(0 : index) : i64
    %738 = llvm.mlir.constant(1 : index) : i64
    %739 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%737 : i64)
  ^bb91(%740: i64):  // 2 preds: ^bb90, ^bb92
    %741 = llvm.icmp "slt" %740, %738 : i64
    llvm.cond_br %741, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %742 = llvm.extractvalue %366[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %743 = llvm.add %725, %730  : i64
    %744 = llvm.add %743, %735  : i64
    %745 = llvm.add %744, %740  : i64
    %746 = llvm.getelementptr %742[%745] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %747 = llvm.load %746 : !llvm.ptr<i32>
    %748 = llvm.sub %14, %747  : i32
    %749 = llvm.extractvalue %721[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %750 = llvm.add %725, %730  : i64
    %751 = llvm.add %750, %735  : i64
    %752 = llvm.add %751, %740  : i64
    %753 = llvm.getelementptr %749[%752] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %748, %753 : !llvm.ptr<i32>
    %754 = llvm.add %740, %739  : i64
    llvm.br ^bb91(%754 : i64)
  ^bb93:  // pred: ^bb91
    %755 = llvm.add %735, %734  : i64
    llvm.br ^bb89(%755 : i64)
  ^bb94:  // pred: ^bb89
    %756 = llvm.add %730, %729  : i64
    llvm.br ^bb87(%756 : i64)
  ^bb95:  // pred: ^bb87
    %757 = llvm.add %725, %724  : i64
    llvm.br ^bb85(%757 : i64)
  ^bb96:  // pred: ^bb85
    %758 = llvm.mlir.constant(1 : index) : i64
    %759 = llvm.mlir.constant(1 : index) : i64
    %760 = llvm.mlir.constant(1 : index) : i64
    %761 = llvm.mlir.constant(1 : index) : i64
    %762 = llvm.mlir.null : !llvm.ptr<i64>
    %763 = llvm.getelementptr %762[%758] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %764 = llvm.ptrtoint %763 : !llvm.ptr<i64> to i64
    %765 = llvm.mlir.constant(16 : index) : i64
    %766 = llvm.add %764, %765  : i64
    %767 = llvm.call @malloc(%766) : (i64) -> !llvm.ptr<i8>
    %768 = llvm.bitcast %767 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %769 = llvm.ptrtoint %768 : !llvm.ptr<i64> to i64
    %770 = llvm.mlir.constant(1 : index) : i64
    %771 = llvm.sub %765, %770  : i64
    %772 = llvm.add %769, %771  : i64
    %773 = llvm.urem %772, %765  : i64
    %774 = llvm.sub %772, %773  : i64
    %775 = llvm.inttoptr %774 : i64 to !llvm.ptr<i64>
    %776 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %777 = llvm.insertvalue %768, %776[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %778 = llvm.insertvalue %775, %777[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %779 = llvm.mlir.constant(0 : index) : i64
    %780 = llvm.insertvalue %779, %778[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %781 = llvm.insertvalue %758, %780[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %782 = llvm.insertvalue %759, %781[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %783 = llvm.insertvalue %760, %782[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %784 = llvm.insertvalue %759, %783[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %785 = llvm.insertvalue %760, %784[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %786 = llvm.insertvalue %761, %785[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %787 = llvm.mlir.constant(0 : index) : i64
    %788 = llvm.mlir.constant(1 : index) : i64
    %789 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%787 : i64)
  ^bb97(%790: i64):  // 2 preds: ^bb96, ^bb104
    %791 = llvm.icmp "slt" %790, %788 : i64
    llvm.cond_br %791, ^bb98, ^bb105
  ^bb98:  // pred: ^bb97
    %792 = llvm.mlir.constant(0 : index) : i64
    %793 = llvm.mlir.constant(1 : index) : i64
    %794 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%792 : i64)
  ^bb99(%795: i64):  // 2 preds: ^bb98, ^bb103
    %796 = llvm.icmp "slt" %795, %793 : i64
    llvm.cond_br %796, ^bb100, ^bb104
  ^bb100:  // pred: ^bb99
    %797 = llvm.mlir.constant(0 : index) : i64
    %798 = llvm.mlir.constant(1 : index) : i64
    %799 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%797 : i64)
  ^bb101(%800: i64):  // 2 preds: ^bb100, ^bb102
    %801 = llvm.icmp "slt" %800, %798 : i64
    llvm.cond_br %801, ^bb102, ^bb103
  ^bb102:  // pred: ^bb101
    %802 = llvm.extractvalue %786[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %803 = llvm.add %790, %795  : i64
    %804 = llvm.add %803, %800  : i64
    %805 = llvm.getelementptr %802[%804] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %805 : !llvm.ptr<i64>
    %806 = llvm.add %800, %799  : i64
    llvm.br ^bb101(%806 : i64)
  ^bb103:  // pred: ^bb101
    %807 = llvm.add %795, %794  : i64
    llvm.br ^bb99(%807 : i64)
  ^bb104:  // pred: ^bb99
    %808 = llvm.add %790, %789  : i64
    llvm.br ^bb97(%808 : i64)
  ^bb105:  // pred: ^bb97
    %809 = llvm.mlir.constant(0 : index) : i64
    %810 = llvm.mlir.constant(3 : index) : i64
    %811 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb106(%809 : i64)
  ^bb106(%812: i64):  // 2 preds: ^bb105, ^bb116
    %813 = llvm.icmp "slt" %812, %810 : i64
    llvm.cond_br %813, ^bb107, ^bb117
  ^bb107:  // pred: ^bb106
    %814 = llvm.mlir.constant(0 : index) : i64
    %815 = llvm.mlir.constant(1 : index) : i64
    %816 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb108(%814 : i64)
  ^bb108(%817: i64):  // 2 preds: ^bb107, ^bb115
    %818 = llvm.icmp "slt" %817, %815 : i64
    llvm.cond_br %818, ^bb109, ^bb116
  ^bb109:  // pred: ^bb108
    %819 = llvm.mlir.constant(0 : index) : i64
    %820 = llvm.mlir.constant(1 : index) : i64
    %821 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb110(%819 : i64)
  ^bb110(%822: i64):  // 2 preds: ^bb109, ^bb114
    %823 = llvm.icmp "slt" %822, %820 : i64
    llvm.cond_br %823, ^bb111, ^bb115
  ^bb111:  // pred: ^bb110
    %824 = llvm.mlir.constant(0 : index) : i64
    %825 = llvm.mlir.constant(1 : index) : i64
    %826 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb112(%824 : i64)
  ^bb112(%827: i64):  // 2 preds: ^bb111, ^bb113
    %828 = llvm.icmp "slt" %827, %825 : i64
    llvm.cond_br %828, ^bb113, ^bb114
  ^bb113:  // pred: ^bb112
    %829 = llvm.extractvalue %721[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %830 = llvm.add %812, %817  : i64
    %831 = llvm.add %830, %822  : i64
    %832 = llvm.add %831, %827  : i64
    %833 = llvm.getelementptr %829[%832] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %834 = llvm.load %833 : !llvm.ptr<i32>
    %835 = llvm.extractvalue %786[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %836 = llvm.add %817, %822  : i64
    %837 = llvm.add %836, %827  : i64
    %838 = llvm.getelementptr %835[%837] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %839 = llvm.load %838 : !llvm.ptr<i64>
    %840 = llvm.icmp "slt" %839, %12 : i64
    %841 = llvm.select %840, %12, %839 : i1, i64
    %842 = llvm.extractvalue %721[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %843 = llvm.add %841, %817  : i64
    %844 = llvm.add %843, %822  : i64
    %845 = llvm.add %844, %827  : i64
    %846 = llvm.getelementptr %842[%845] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %847 = llvm.load %846 : !llvm.ptr<i32>
    %848 = llvm.icmp "sgt" %834, %847 : i32
    %849 = llvm.select %848, %812, %841 : i1, i64
    %850 = llvm.extractvalue %786[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %851 = llvm.add %817, %822  : i64
    %852 = llvm.add %851, %827  : i64
    %853 = llvm.getelementptr %850[%852] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %849, %853 : !llvm.ptr<i64>
    %854 = llvm.add %827, %826  : i64
    llvm.br ^bb112(%854 : i64)
  ^bb114:  // pred: ^bb112
    %855 = llvm.add %822, %821  : i64
    llvm.br ^bb110(%855 : i64)
  ^bb115:  // pred: ^bb110
    %856 = llvm.add %817, %816  : i64
    llvm.br ^bb108(%856 : i64)
  ^bb116:  // pred: ^bb108
    %857 = llvm.add %812, %811  : i64
    llvm.br ^bb106(%857 : i64)
  ^bb117:  // pred: ^bb106
    %858 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    %859 = llvm.insertvalue %299, %858[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %860 = llvm.insertvalue %654, %859[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %861 = llvm.insertvalue %786, %860[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %861 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v2_0", "v3_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %61[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %51[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(4 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(3 : i64) : i64
    %110 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %92[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %93[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.getelementptr %51[%114] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %115 : !llvm.ptr<ptr<i8>>
    %116 = llvm.mlir.constant(3 : i64) : i64
    %117 = llvm.call @omTensorCreateUntyped(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %120 = llvm.bitcast %119 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %121 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.bitcast %121 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%117, %118, %120, %122) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %123 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%117, %123) : (!llvm.ptr<i8>, i64) -> ()
    %124 = llvm.call @omTensorGetShape(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %125 = llvm.call @omTensorGetStrides(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.mlir.constant(0 : i64) : i64
    %127 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %128 = llvm.getelementptr %124[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %130 = llvm.getelementptr %125[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %133 = llvm.getelementptr %124[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %135 = llvm.getelementptr %125[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %138 = llvm.getelementptr %124[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %140 = llvm.getelementptr %125[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(2 : i64) : i64
    %142 = llvm.getelementptr %51[%141] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %117, %142 : !llvm.ptr<ptr<i8>>
    %143 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %143 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<207 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<207 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

