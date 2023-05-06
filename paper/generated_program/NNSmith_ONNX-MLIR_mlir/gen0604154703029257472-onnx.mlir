module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f32\22 , \22dims\22 : [8 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<6> : tensor<1x1x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_3(dense<[[[[4, 6]]]]> : tensor<1x1x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_1(dense<4.83438063> : tensor<1x1x1xf32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x f32>>>
  llvm.mlir.global internal constant @constant_0(dense<4.00551891> : tensor<1x1xf32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x f32>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> attributes {input_names = ["v5_0", "v0_0"], llvm.emit_c_interface, output_names = ["v3_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg18, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg19, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg20, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg17, %21[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg21, %22[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x f32>>>
    %27 = llvm.bitcast %26 : !llvm.ptr<array<1 x array<1 x f32>>> to !llvm.ptr<f32>
    %28 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %29 = llvm.insertvalue %27, %28[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.insertvalue %33, %32[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.insertvalue %35, %34[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.insertvalue %37, %36[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.insertvalue %39, %38[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<1 x f32>>>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<1 x array<1 x array<1 x f32>>>> to !llvm.ptr<f32>
    %43 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
    %44 = llvm.insertvalue %42, %43[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %45 = llvm.insertvalue %42, %44[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %46 = llvm.mlir.constant(0 : index) : i64
    %47 = llvm.insertvalue %46, %45[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.insertvalue %48, %47[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.insertvalue %50, %49[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %60 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>>
    %61 = llvm.bitcast %60 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %62 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %63 = llvm.insertvalue %61, %62[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %61, %63[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(2 : index) : i64
    %70 = llvm.insertvalue %69, %68[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.insertvalue %71, %70[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(2 : index) : i64
    %74 = llvm.insertvalue %73, %72[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(2 : index) : i64
    %78 = llvm.insertvalue %77, %76[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.insertvalue %79, %78[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.insertvalue %81, %80[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>>
    %84 = llvm.bitcast %83 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %85 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %86 = llvm.insertvalue %84, %85[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.insertvalue %84, %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.insertvalue %88, %87[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.insertvalue %90, %89[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.mlir.constant(2 : index) : i64
    %93 = llvm.insertvalue %92, %91[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.insertvalue %94, %93[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.insertvalue %96, %95[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.insertvalue %98, %97[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.insertvalue %100, %99[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.mlir.constant(2 : index) : i64
    %103 = llvm.insertvalue %102, %101[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.insertvalue %104, %103[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.constant(4 : index) : i64
    %109 = llvm.mlir.constant(2 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(8 : index) : i64
    %112 = llvm.mlir.constant(8 : index) : i64
    %113 = llvm.mlir.constant(8 : index) : i64
    %114 = llvm.mlir.null : !llvm.ptr<i32>
    %115 = llvm.getelementptr %114[%113] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %116 = llvm.ptrtoint %115 : !llvm.ptr<i32> to i64
    %117 = llvm.mlir.constant(16 : index) : i64
    %118 = llvm.add %116, %117  : i64
    %119 = llvm.call @malloc(%118) : (i64) -> !llvm.ptr<i8>
    %120 = llvm.bitcast %119 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %121 = llvm.ptrtoint %120 : !llvm.ptr<i32> to i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.sub %117, %122  : i64
    %124 = llvm.add %121, %123  : i64
    %125 = llvm.urem %124, %117  : i64
    %126 = llvm.sub %124, %125  : i64
    %127 = llvm.inttoptr %126 : i64 to !llvm.ptr<i32>
    %128 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %129 = llvm.insertvalue %120, %128[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %127, %129[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.insertvalue %131, %130[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.insertvalue %106, %132[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %107, %133[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %108, %134[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.insertvalue %109, %135[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.insertvalue %112, %136[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.insertvalue %111, %137[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.insertvalue %109, %138[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.insertvalue %110, %139[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%141 : i64)
  ^bb1(%144: i64):  // 2 preds: ^bb0, ^bb11
    %145 = llvm.icmp "slt" %144, %142 : i64
    llvm.cond_br %145, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%146 : i64)
  ^bb3(%149: i64):  // 2 preds: ^bb2, ^bb10
    %150 = llvm.icmp "slt" %149, %147 : i64
    llvm.cond_br %150, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %151 = llvm.mlir.constant(0 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%151 : i64)
  ^bb5(%154: i64):  // 2 preds: ^bb4, ^bb9
    %155 = llvm.icmp "slt" %154, %152 : i64
    llvm.cond_br %155, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.mlir.constant(2 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%156 : i64)
  ^bb7(%159: i64):  // 2 preds: ^bb6, ^bb8
    %160 = llvm.icmp "slt" %159, %157 : i64
    llvm.cond_br %160, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %161 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.mlir.constant(2 : index) : i64
    %163 = llvm.mul %144, %162  : i64
    %164 = llvm.mlir.constant(2 : index) : i64
    %165 = llvm.mul %149, %164  : i64
    %166 = llvm.add %163, %165  : i64
    %167 = llvm.mlir.constant(2 : index) : i64
    %168 = llvm.mul %154, %167  : i64
    %169 = llvm.add %166, %168  : i64
    %170 = llvm.add %169, %159  : i64
    %171 = llvm.getelementptr %161[%170] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %172 = llvm.load %171 : !llvm.ptr<i32>
    %173 = llvm.extractvalue %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.mlir.constant(8 : index) : i64
    %175 = llvm.mul %144, %174  : i64
    %176 = llvm.mlir.constant(8 : index) : i64
    %177 = llvm.mul %149, %176  : i64
    %178 = llvm.add %175, %177  : i64
    %179 = llvm.mlir.constant(2 : index) : i64
    %180 = llvm.mul %154, %179  : i64
    %181 = llvm.add %178, %180  : i64
    %182 = llvm.add %181, %159  : i64
    %183 = llvm.getelementptr %173[%182] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %172, %183 : !llvm.ptr<i32>
    %184 = llvm.add %159, %158  : i64
    llvm.br ^bb7(%184 : i64)
  ^bb9:  // pred: ^bb7
    %185 = llvm.add %154, %153  : i64
    llvm.br ^bb5(%185 : i64)
  ^bb10:  // pred: ^bb5
    %186 = llvm.add %149, %148  : i64
    llvm.br ^bb3(%186 : i64)
  ^bb11:  // pred: ^bb3
    %187 = llvm.add %144, %143  : i64
    llvm.br ^bb1(%187 : i64)
  ^bb12:  // pred: ^bb1
    %188 = llvm.mlir.constant(0 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%188 : i64)
  ^bb13(%191: i64):  // 2 preds: ^bb12, ^bb23
    %192 = llvm.icmp "slt" %191, %189 : i64
    llvm.cond_br %192, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %193 = llvm.mlir.constant(0 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%193 : i64)
  ^bb15(%196: i64):  // 2 preds: ^bb14, ^bb22
    %197 = llvm.icmp "slt" %196, %194 : i64
    llvm.cond_br %197, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%198 : i64)
  ^bb17(%201: i64):  // 2 preds: ^bb16, ^bb21
    %202 = llvm.icmp "slt" %201, %199 : i64
    llvm.cond_br %202, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.mlir.constant(2 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%203 : i64)
  ^bb19(%206: i64):  // 2 preds: ^bb18, ^bb20
    %207 = llvm.icmp "slt" %206, %204 : i64
    llvm.cond_br %207, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.add %201, %208  : i64
    %210 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.mlir.constant(2 : index) : i64
    %212 = llvm.mul %191, %211  : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mul %196, %213  : i64
    %215 = llvm.add %212, %214  : i64
    %216 = llvm.mlir.constant(2 : index) : i64
    %217 = llvm.mul %201, %216  : i64
    %218 = llvm.add %215, %217  : i64
    %219 = llvm.add %218, %206  : i64
    %220 = llvm.getelementptr %210[%219] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %221 = llvm.load %220 : !llvm.ptr<i32>
    %222 = llvm.extractvalue %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.mlir.constant(8 : index) : i64
    %224 = llvm.mul %191, %223  : i64
    %225 = llvm.mlir.constant(8 : index) : i64
    %226 = llvm.mul %196, %225  : i64
    %227 = llvm.add %224, %226  : i64
    %228 = llvm.mlir.constant(2 : index) : i64
    %229 = llvm.mul %209, %228  : i64
    %230 = llvm.add %227, %229  : i64
    %231 = llvm.add %230, %206  : i64
    %232 = llvm.getelementptr %222[%231] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %221, %232 : !llvm.ptr<i32>
    %233 = llvm.add %206, %205  : i64
    llvm.br ^bb19(%233 : i64)
  ^bb21:  // pred: ^bb19
    %234 = llvm.add %201, %200  : i64
    llvm.br ^bb17(%234 : i64)
  ^bb22:  // pred: ^bb17
    %235 = llvm.add %196, %195  : i64
    llvm.br ^bb15(%235 : i64)
  ^bb23:  // pred: ^bb15
    %236 = llvm.add %191, %190  : i64
    llvm.br ^bb13(%236 : i64)
  ^bb24:  // pred: ^bb13
    %237 = llvm.mlir.constant(0 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%237 : i64)
  ^bb25(%240: i64):  // 2 preds: ^bb24, ^bb35
    %241 = llvm.icmp "slt" %240, %238 : i64
    llvm.cond_br %241, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%242 : i64)
  ^bb27(%245: i64):  // 2 preds: ^bb26, ^bb34
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%247 : i64)
  ^bb29(%250: i64):  // 2 preds: ^bb28, ^bb33
    %251 = llvm.icmp "slt" %250, %248 : i64
    llvm.cond_br %251, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.mlir.constant(2 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%252 : i64)
  ^bb31(%255: i64):  // 2 preds: ^bb30, ^bb32
    %256 = llvm.icmp "slt" %255, %253 : i64
    llvm.cond_br %256, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %257 = llvm.mlir.constant(2 : index) : i64
    %258 = llvm.add %250, %257  : i64
    %259 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.mlir.constant(2 : index) : i64
    %261 = llvm.mul %240, %260  : i64
    %262 = llvm.mlir.constant(2 : index) : i64
    %263 = llvm.mul %245, %262  : i64
    %264 = llvm.add %261, %263  : i64
    %265 = llvm.mlir.constant(2 : index) : i64
    %266 = llvm.mul %250, %265  : i64
    %267 = llvm.add %264, %266  : i64
    %268 = llvm.add %267, %255  : i64
    %269 = llvm.getelementptr %259[%268] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %270 = llvm.load %269 : !llvm.ptr<i32>
    %271 = llvm.extractvalue %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.mlir.constant(8 : index) : i64
    %273 = llvm.mul %240, %272  : i64
    %274 = llvm.mlir.constant(8 : index) : i64
    %275 = llvm.mul %245, %274  : i64
    %276 = llvm.add %273, %275  : i64
    %277 = llvm.mlir.constant(2 : index) : i64
    %278 = llvm.mul %258, %277  : i64
    %279 = llvm.add %276, %278  : i64
    %280 = llvm.add %279, %255  : i64
    %281 = llvm.getelementptr %271[%280] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %270, %281 : !llvm.ptr<i32>
    %282 = llvm.add %255, %254  : i64
    llvm.br ^bb31(%282 : i64)
  ^bb33:  // pred: ^bb31
    %283 = llvm.add %250, %249  : i64
    llvm.br ^bb29(%283 : i64)
  ^bb34:  // pred: ^bb29
    %284 = llvm.add %245, %244  : i64
    llvm.br ^bb27(%284 : i64)
  ^bb35:  // pred: ^bb27
    %285 = llvm.add %240, %239  : i64
    llvm.br ^bb25(%285 : i64)
  ^bb36:  // pred: ^bb25
    %286 = llvm.mlir.constant(0 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%286 : i64)
  ^bb37(%289: i64):  // 2 preds: ^bb36, ^bb47
    %290 = llvm.icmp "slt" %289, %287 : i64
    llvm.cond_br %290, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %291 = llvm.mlir.constant(0 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%291 : i64)
  ^bb39(%294: i64):  // 2 preds: ^bb38, ^bb46
    %295 = llvm.icmp "slt" %294, %292 : i64
    llvm.cond_br %295, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %296 = llvm.mlir.constant(0 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%296 : i64)
  ^bb41(%299: i64):  // 2 preds: ^bb40, ^bb45
    %300 = llvm.icmp "slt" %299, %297 : i64
    llvm.cond_br %300, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %301 = llvm.mlir.constant(0 : index) : i64
    %302 = llvm.mlir.constant(2 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%301 : i64)
  ^bb43(%304: i64):  // 2 preds: ^bb42, ^bb44
    %305 = llvm.icmp "slt" %304, %302 : i64
    llvm.cond_br %305, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %306 = llvm.mlir.constant(3 : index) : i64
    %307 = llvm.add %299, %306  : i64
    %308 = llvm.extractvalue %82[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.mlir.constant(2 : index) : i64
    %310 = llvm.mul %289, %309  : i64
    %311 = llvm.mlir.constant(2 : index) : i64
    %312 = llvm.mul %294, %311  : i64
    %313 = llvm.add %310, %312  : i64
    %314 = llvm.mlir.constant(2 : index) : i64
    %315 = llvm.mul %299, %314  : i64
    %316 = llvm.add %313, %315  : i64
    %317 = llvm.add %316, %304  : i64
    %318 = llvm.getelementptr %308[%317] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %319 = llvm.load %318 : !llvm.ptr<i32>
    %320 = llvm.extractvalue %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.mlir.constant(8 : index) : i64
    %322 = llvm.mul %289, %321  : i64
    %323 = llvm.mlir.constant(8 : index) : i64
    %324 = llvm.mul %294, %323  : i64
    %325 = llvm.add %322, %324  : i64
    %326 = llvm.mlir.constant(2 : index) : i64
    %327 = llvm.mul %307, %326  : i64
    %328 = llvm.add %325, %327  : i64
    %329 = llvm.add %328, %304  : i64
    %330 = llvm.getelementptr %320[%329] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %319, %330 : !llvm.ptr<i32>
    %331 = llvm.add %304, %303  : i64
    llvm.br ^bb43(%331 : i64)
  ^bb45:  // pred: ^bb43
    %332 = llvm.add %299, %298  : i64
    llvm.br ^bb41(%332 : i64)
  ^bb46:  // pred: ^bb41
    %333 = llvm.add %294, %293  : i64
    llvm.br ^bb39(%333 : i64)
  ^bb47:  // pred: ^bb39
    %334 = llvm.add %289, %288  : i64
    llvm.br ^bb37(%334 : i64)
  ^bb48:  // pred: ^bb37
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.mlir.constant(4 : index) : i64
    %338 = llvm.mlir.constant(2 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.mlir.constant(8 : index) : i64
    %341 = llvm.mlir.constant(8 : index) : i64
    %342 = llvm.mlir.constant(8 : index) : i64
    %343 = llvm.mlir.null : !llvm.ptr<i32>
    %344 = llvm.getelementptr %343[%342] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %345 = llvm.ptrtoint %344 : !llvm.ptr<i32> to i64
    %346 = llvm.mlir.constant(16 : index) : i64
    %347 = llvm.add %345, %346  : i64
    %348 = llvm.call @malloc(%347) : (i64) -> !llvm.ptr<i8>
    %349 = llvm.bitcast %348 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %350 = llvm.ptrtoint %349 : !llvm.ptr<i32> to i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.sub %346, %351  : i64
    %353 = llvm.add %350, %352  : i64
    %354 = llvm.urem %353, %346  : i64
    %355 = llvm.sub %353, %354  : i64
    %356 = llvm.inttoptr %355 : i64 to !llvm.ptr<i32>
    %357 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %358 = llvm.insertvalue %349, %357[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.insertvalue %356, %358[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.insertvalue %360, %359[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.insertvalue %335, %361[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.insertvalue %336, %362[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.insertvalue %337, %363[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.insertvalue %338, %364[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %366 = llvm.insertvalue %341, %365[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.insertvalue %340, %366[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.insertvalue %338, %367[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.insertvalue %339, %368[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %370 = llvm.mlir.constant(0 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%370 : i64)
  ^bb49(%373: i64):  // 2 preds: ^bb48, ^bb59
    %374 = llvm.icmp "slt" %373, %371 : i64
    llvm.cond_br %374, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %375 = llvm.mlir.constant(0 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%375 : i64)
  ^bb51(%378: i64):  // 2 preds: ^bb50, ^bb58
    %379 = llvm.icmp "slt" %378, %376 : i64
    llvm.cond_br %379, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %380 = llvm.mlir.constant(0 : index) : i64
    %381 = llvm.mlir.constant(4 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%380 : i64)
  ^bb53(%383: i64):  // 2 preds: ^bb52, ^bb57
    %384 = llvm.icmp "slt" %383, %381 : i64
    llvm.cond_br %384, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %385 = llvm.mlir.constant(0 : index) : i64
    %386 = llvm.mlir.constant(2 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%385 : i64)
  ^bb55(%388: i64):  // 2 preds: ^bb54, ^bb56
    %389 = llvm.icmp "slt" %388, %386 : i64
    llvm.cond_br %389, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %390 = llvm.extractvalue %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.mlir.constant(8 : index) : i64
    %392 = llvm.mul %373, %391  : i64
    %393 = llvm.mlir.constant(8 : index) : i64
    %394 = llvm.mul %378, %393  : i64
    %395 = llvm.add %392, %394  : i64
    %396 = llvm.mlir.constant(2 : index) : i64
    %397 = llvm.mul %383, %396  : i64
    %398 = llvm.add %395, %397  : i64
    %399 = llvm.add %398, %388  : i64
    %400 = llvm.getelementptr %390[%399] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %401 = llvm.load %400 : !llvm.ptr<i32>
    %402 = llvm.mlir.constant(false) : i1
    %403 = "llvm.intr.abs"(%401, %402) : (i32, i1) -> i32
    %404 = llvm.extractvalue %369[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.mlir.constant(8 : index) : i64
    %406 = llvm.mul %373, %405  : i64
    %407 = llvm.mlir.constant(8 : index) : i64
    %408 = llvm.mul %378, %407  : i64
    %409 = llvm.add %406, %408  : i64
    %410 = llvm.mlir.constant(2 : index) : i64
    %411 = llvm.mul %383, %410  : i64
    %412 = llvm.add %409, %411  : i64
    %413 = llvm.add %412, %388  : i64
    %414 = llvm.getelementptr %404[%413] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %403, %414 : !llvm.ptr<i32>
    %415 = llvm.add %388, %387  : i64
    llvm.br ^bb55(%415 : i64)
  ^bb57:  // pred: ^bb55
    %416 = llvm.add %383, %382  : i64
    llvm.br ^bb53(%416 : i64)
  ^bb58:  // pred: ^bb53
    %417 = llvm.add %378, %377  : i64
    llvm.br ^bb51(%417 : i64)
  ^bb59:  // pred: ^bb51
    %418 = llvm.add %373, %372  : i64
    llvm.br ^bb49(%418 : i64)
  ^bb60:  // pred: ^bb49
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.mlir.constant(4 : index) : i64
    %422 = llvm.mlir.constant(2 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.mlir.constant(8 : index) : i64
    %425 = llvm.mlir.constant(8 : index) : i64
    %426 = llvm.mlir.constant(8 : index) : i64
    %427 = llvm.mlir.null : !llvm.ptr<f32>
    %428 = llvm.getelementptr %427[%426] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %429 = llvm.ptrtoint %428 : !llvm.ptr<f32> to i64
    %430 = llvm.mlir.constant(16 : index) : i64
    %431 = llvm.add %429, %430  : i64
    %432 = llvm.call @malloc(%431) : (i64) -> !llvm.ptr<i8>
    %433 = llvm.bitcast %432 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %434 = llvm.ptrtoint %433 : !llvm.ptr<f32> to i64
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.sub %430, %435  : i64
    %437 = llvm.add %434, %436  : i64
    %438 = llvm.urem %437, %430  : i64
    %439 = llvm.sub %437, %438  : i64
    %440 = llvm.inttoptr %439 : i64 to !llvm.ptr<f32>
    %441 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %442 = llvm.insertvalue %433, %441[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %440, %442[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.mlir.constant(0 : index) : i64
    %445 = llvm.insertvalue %444, %443[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.insertvalue %419, %445[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.insertvalue %420, %446[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.insertvalue %421, %447[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.insertvalue %422, %448[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.insertvalue %425, %449[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.insertvalue %424, %450[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %452 = llvm.insertvalue %422, %451[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.insertvalue %423, %452[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.mlir.constant(0 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%454 : i64)
  ^bb61(%457: i64):  // 2 preds: ^bb60, ^bb71
    %458 = llvm.icmp "slt" %457, %455 : i64
    llvm.cond_br %458, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %459 = llvm.mlir.constant(0 : index) : i64
    %460 = llvm.mlir.constant(1 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%459 : i64)
  ^bb63(%462: i64):  // 2 preds: ^bb62, ^bb70
    %463 = llvm.icmp "slt" %462, %460 : i64
    llvm.cond_br %463, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %464 = llvm.mlir.constant(0 : index) : i64
    %465 = llvm.mlir.constant(4 : index) : i64
    %466 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%464 : i64)
  ^bb65(%467: i64):  // 2 preds: ^bb64, ^bb69
    %468 = llvm.icmp "slt" %467, %465 : i64
    llvm.cond_br %468, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %469 = llvm.mlir.constant(0 : index) : i64
    %470 = llvm.mlir.constant(2 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%469 : i64)
  ^bb67(%472: i64):  // 2 preds: ^bb66, ^bb68
    %473 = llvm.icmp "slt" %472, %470 : i64
    llvm.cond_br %473, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %474 = llvm.extractvalue %369[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.mlir.constant(8 : index) : i64
    %476 = llvm.mul %457, %475  : i64
    %477 = llvm.mlir.constant(8 : index) : i64
    %478 = llvm.mul %462, %477  : i64
    %479 = llvm.add %476, %478  : i64
    %480 = llvm.mlir.constant(2 : index) : i64
    %481 = llvm.mul %467, %480  : i64
    %482 = llvm.add %479, %481  : i64
    %483 = llvm.add %482, %472  : i64
    %484 = llvm.getelementptr %474[%483] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %485 = llvm.load %484 : !llvm.ptr<i32>
    %486 = llvm.sitofp %485 : i32 to f32
    %487 = llvm.extractvalue %453[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %488 = llvm.mlir.constant(8 : index) : i64
    %489 = llvm.mul %457, %488  : i64
    %490 = llvm.mlir.constant(8 : index) : i64
    %491 = llvm.mul %462, %490  : i64
    %492 = llvm.add %489, %491  : i64
    %493 = llvm.mlir.constant(2 : index) : i64
    %494 = llvm.mul %467, %493  : i64
    %495 = llvm.add %492, %494  : i64
    %496 = llvm.add %495, %472  : i64
    %497 = llvm.getelementptr %487[%496] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %486, %497 : !llvm.ptr<f32>
    %498 = llvm.add %472, %471  : i64
    llvm.br ^bb67(%498 : i64)
  ^bb69:  // pred: ^bb67
    %499 = llvm.add %467, %466  : i64
    llvm.br ^bb65(%499 : i64)
  ^bb70:  // pred: ^bb65
    %500 = llvm.add %462, %461  : i64
    llvm.br ^bb63(%500 : i64)
  ^bb71:  // pred: ^bb63
    %501 = llvm.add %457, %456  : i64
    llvm.br ^bb61(%501 : i64)
  ^bb72:  // pred: ^bb61
    %502 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
    %503 = llvm.extractvalue %453[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.extractvalue %453[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.insertvalue %503, %502[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %506 = llvm.insertvalue %504, %505[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %507 = llvm.mlir.constant(0 : index) : i64
    %508 = llvm.insertvalue %507, %506[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %509 = llvm.mlir.constant(8 : index) : i64
    %510 = llvm.insertvalue %509, %508[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %511 = llvm.mlir.constant(1 : index) : i64
    %512 = llvm.insertvalue %511, %510[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %513 = llvm.mlir.constant(1 : index) : i64
    %514 = llvm.insertvalue %513, %512[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %515 = llvm.mlir.constant(1 : index) : i64
    %516 = llvm.insertvalue %515, %514[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %517 = llvm.mlir.constant(1 : index) : i64
    %518 = llvm.insertvalue %517, %516[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %519 = llvm.mlir.constant(1 : index) : i64
    %520 = llvm.insertvalue %519, %518[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %521 = llvm.mlir.constant(8 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    %524 = llvm.mlir.constant(1 : index) : i64
    %525 = llvm.mlir.null : !llvm.ptr<f32>
    %526 = llvm.getelementptr %525[%521] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %527 = llvm.ptrtoint %526 : !llvm.ptr<f32> to i64
    %528 = llvm.mlir.constant(16 : index) : i64
    %529 = llvm.add %527, %528  : i64
    %530 = llvm.call @malloc(%529) : (i64) -> !llvm.ptr<i8>
    %531 = llvm.bitcast %530 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %532 = llvm.ptrtoint %531 : !llvm.ptr<f32> to i64
    %533 = llvm.mlir.constant(1 : index) : i64
    %534 = llvm.sub %528, %533  : i64
    %535 = llvm.add %532, %534  : i64
    %536 = llvm.urem %535, %528  : i64
    %537 = llvm.sub %535, %536  : i64
    %538 = llvm.inttoptr %537 : i64 to !llvm.ptr<f32>
    %539 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
    %540 = llvm.insertvalue %531, %539[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %541 = llvm.insertvalue %538, %540[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %542 = llvm.mlir.constant(0 : index) : i64
    %543 = llvm.insertvalue %542, %541[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %544 = llvm.insertvalue %521, %543[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %545 = llvm.insertvalue %522, %544[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %546 = llvm.insertvalue %523, %545[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %547 = llvm.insertvalue %522, %546[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %548 = llvm.insertvalue %523, %547[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %549 = llvm.insertvalue %524, %548[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %550 = llvm.mlir.constant(1 : index) : i64
    %551 = llvm.mlir.null : !llvm.ptr<f32>
    %552 = llvm.getelementptr %551[%550] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %553 = llvm.ptrtoint %552 : !llvm.ptr<f32> to i64
    %554 = llvm.alloca %553 x f32 : (i64) -> !llvm.ptr<f32>
    %555 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64)>
    %556 = llvm.insertvalue %554, %555[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %557 = llvm.insertvalue %554, %556[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %558 = llvm.mlir.constant(0 : index) : i64
    %559 = llvm.insertvalue %558, %557[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %560 = llvm.mlir.constant(0 : index) : i64
    %561 = llvm.mlir.constant(8 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%560 : i64)
  ^bb73(%563: i64):  // 2 preds: ^bb72, ^bb83
    %564 = llvm.icmp "slt" %563, %561 : i64
    llvm.cond_br %564, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %565 = llvm.mlir.constant(0 : index) : i64
    %566 = llvm.mlir.constant(1 : index) : i64
    %567 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%565 : i64)
  ^bb75(%568: i64):  // 2 preds: ^bb74, ^bb82
    %569 = llvm.icmp "slt" %568, %566 : i64
    llvm.cond_br %569, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %570 = llvm.mlir.constant(0 : index) : i64
    %571 = llvm.mlir.constant(1 : index) : i64
    %572 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%570 : i64)
  ^bb77(%573: i64):  // 2 preds: ^bb76, ^bb81
    %574 = llvm.icmp "slt" %573, %571 : i64
    llvm.cond_br %574, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %575 = llvm.extractvalue %559[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    llvm.store %24, %575 : !llvm.ptr<f32>
    %576 = llvm.mlir.constant(0 : index) : i64
    %577 = llvm.mlir.constant(1 : index) : i64
    %578 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%576 : i64)
  ^bb79(%579: i64):  // 2 preds: ^bb78, ^bb80
    %580 = llvm.icmp "slt" %579, %577 : i64
    llvm.cond_br %580, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %581 = llvm.extractvalue %40[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %582 = llvm.add %568, %579  : i64
    %583 = llvm.getelementptr %581[%582] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %584 = llvm.load %583 : !llvm.ptr<f32>
    %585 = llvm.extractvalue %520[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %586 = llvm.add %563, %579  : i64
    %587 = llvm.add %586, %573  : i64
    %588 = llvm.getelementptr %585[%587] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %589 = llvm.load %588 : !llvm.ptr<f32>
    %590 = llvm.extractvalue %559[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %591 = llvm.load %590 : !llvm.ptr<f32>
    %592 = llvm.fmul %584, %589  : f32
    %593 = llvm.fadd %591, %592  : f32
    %594 = llvm.extractvalue %559[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    llvm.store %593, %594 : !llvm.ptr<f32>
    %595 = llvm.add %579, %578  : i64
    llvm.br ^bb79(%595 : i64)
  ^bb81:  // pred: ^bb79
    %596 = llvm.extractvalue %559[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %597 = llvm.load %596 : !llvm.ptr<f32>
    %598 = llvm.extractvalue %549[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %599 = llvm.add %563, %568  : i64
    %600 = llvm.add %599, %573  : i64
    %601 = llvm.getelementptr %598[%600] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %597, %601 : !llvm.ptr<f32>
    %602 = llvm.add %573, %572  : i64
    llvm.br ^bb77(%602 : i64)
  ^bb82:  // pred: ^bb77
    %603 = llvm.add %568, %567  : i64
    llvm.br ^bb75(%603 : i64)
  ^bb83:  // pred: ^bb75
    %604 = llvm.add %563, %562  : i64
    llvm.br ^bb73(%604 : i64)
  ^bb84:  // pred: ^bb73
    %605 = llvm.mlir.constant(8 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    %607 = llvm.mlir.constant(1 : index) : i64
    %608 = llvm.mlir.constant(1 : index) : i64
    %609 = llvm.mlir.null : !llvm.ptr<f32>
    %610 = llvm.getelementptr %609[%605] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %611 = llvm.ptrtoint %610 : !llvm.ptr<f32> to i64
    %612 = llvm.mlir.constant(16 : index) : i64
    %613 = llvm.add %611, %612  : i64
    %614 = llvm.call @malloc(%613) : (i64) -> !llvm.ptr<i8>
    %615 = llvm.bitcast %614 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %616 = llvm.ptrtoint %615 : !llvm.ptr<f32> to i64
    %617 = llvm.mlir.constant(1 : index) : i64
    %618 = llvm.sub %612, %617  : i64
    %619 = llvm.add %616, %618  : i64
    %620 = llvm.urem %619, %612  : i64
    %621 = llvm.sub %619, %620  : i64
    %622 = llvm.inttoptr %621 : i64 to !llvm.ptr<f32>
    %623 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
    %624 = llvm.insertvalue %615, %623[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %625 = llvm.insertvalue %622, %624[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %626 = llvm.mlir.constant(0 : index) : i64
    %627 = llvm.insertvalue %626, %625[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %628 = llvm.insertvalue %605, %627[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %629 = llvm.insertvalue %606, %628[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %630 = llvm.insertvalue %607, %629[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %631 = llvm.insertvalue %606, %630[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %632 = llvm.insertvalue %607, %631[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %633 = llvm.insertvalue %608, %632[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %634 = llvm.mlir.constant(0 : index) : i64
    %635 = llvm.mlir.constant(8 : index) : i64
    %636 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%634 : i64)
  ^bb85(%637: i64):  // 2 preds: ^bb84, ^bb92
    %638 = llvm.icmp "slt" %637, %635 : i64
    llvm.cond_br %638, ^bb86, ^bb93
  ^bb86:  // pred: ^bb85
    %639 = llvm.mlir.constant(0 : index) : i64
    %640 = llvm.mlir.constant(1 : index) : i64
    %641 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%639 : i64)
  ^bb87(%642: i64):  // 2 preds: ^bb86, ^bb91
    %643 = llvm.icmp "slt" %642, %640 : i64
    llvm.cond_br %643, ^bb88, ^bb92
  ^bb88:  // pred: ^bb87
    %644 = llvm.mlir.constant(0 : index) : i64
    %645 = llvm.mlir.constant(1 : index) : i64
    %646 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%644 : i64)
  ^bb89(%647: i64):  // 2 preds: ^bb88, ^bb90
    %648 = llvm.icmp "slt" %647, %645 : i64
    llvm.cond_br %648, ^bb90, ^bb91
  ^bb90:  // pred: ^bb89
    %649 = llvm.extractvalue %549[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %650 = llvm.add %637, %642  : i64
    %651 = llvm.add %650, %647  : i64
    %652 = llvm.getelementptr %649[%651] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %653 = llvm.load %652 : !llvm.ptr<f32>
    %654 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %655 = llvm.add %25, %642  : i64
    %656 = llvm.add %655, %647  : i64
    %657 = llvm.getelementptr %654[%656] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %658 = llvm.load %657 : !llvm.ptr<f32>
    %659 = llvm.fadd %653, %658  : f32
    %660 = llvm.extractvalue %633[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %661 = llvm.add %637, %642  : i64
    %662 = llvm.add %661, %647  : i64
    %663 = llvm.getelementptr %660[%662] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %659, %663 : !llvm.ptr<f32>
    %664 = llvm.add %647, %646  : i64
    llvm.br ^bb89(%664 : i64)
  ^bb91:  // pred: ^bb89
    %665 = llvm.add %642, %641  : i64
    llvm.br ^bb87(%665 : i64)
  ^bb92:  // pred: ^bb87
    %666 = llvm.add %637, %636  : i64
    llvm.br ^bb85(%666 : i64)
  ^bb93:  // pred: ^bb85
    llvm.return %633 : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0", "v0_0"], llvm.emit_c_interface, output_names = ["v3_0"]} {
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
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %12[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %12[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>>
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
    %44 = llvm.mlir.constant(1 : i64) : i64
    %45 = llvm.getelementptr %0[%44] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i8>>
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %55[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %56[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.getelementptr %55[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %56[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %84, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.mlir.constant(8 : i64) : i64
    %88 = llvm.call @malloc(%87) : (i64) -> !llvm.ptr<i8>
    %89 = llvm.bitcast %88 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %90 = llvm.mlir.constant(3 : i64) : i64
    %91 = llvm.call @omTensorCreateUntyped(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.mlir.constant(1 : i64) : i64
    %93 = llvm.extractvalue %85[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %94 = llvm.bitcast %93 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %95 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%91, %92, %94, %96) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %97 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%91, %97) : (!llvm.ptr<i8>, i64) -> ()
    %98 = llvm.call @omTensorGetShape(%91) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %99 = llvm.call @omTensorGetStrides(%91) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %100 = llvm.mlir.constant(0 : i64) : i64
    %101 = llvm.extractvalue %85[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %98[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %85[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %104 = llvm.getelementptr %99[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.extractvalue %85[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.getelementptr %98[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %85[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.getelementptr %99[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(2 : i64) : i64
    %111 = llvm.extractvalue %85[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %112 = llvm.getelementptr %98[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %85[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %114 = llvm.getelementptr %99[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(0 : i64) : i64
    %116 = llvm.getelementptr %89[%115] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %91, %116 : !llvm.ptr<ptr<i8>>
    %117 = llvm.call @omTensorListCreate(%89, %86, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %117 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<142 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<142 x i8>> to !llvm.ptr<i8>
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

