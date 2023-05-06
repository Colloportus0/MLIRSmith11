module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 1] , \22name\22 : \22v10_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 1] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 4] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<[[[[5], [4]], [[3], [3]]]]> : tensor<1x2x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_0(dense<[[[[5], [6]], [[7], [4]]]]> : tensor<1x2x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: !llvm.ptr<i32>, %arg30: !llvm.ptr<i32>, %arg31: i64, %arg32: i64, %arg33: i64, %arg34: i64, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v10_0", "v9_0", "v3_0", "v5_0"], llvm.emit_c_interface, output_names = ["v2_0"]} {
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
    %24 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %25 = llvm.insertvalue %arg22, %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %arg23, %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %arg24, %26[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.insertvalue %arg25, %27[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.insertvalue %arg27, %28[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %arg26, %29[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.insertvalue %arg28, %30[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %33 = llvm.insertvalue %arg29, %32[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.insertvalue %arg30, %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %arg31, %34[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.insertvalue %arg32, %35[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.insertvalue %arg36, %36[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %arg33, %37[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %arg37, %38[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %arg34, %39[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %arg38, %40[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %arg35, %41[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %arg39, %42[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x i32>>>>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.insertvalue %46, %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.insertvalue %50, %49[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.constant(4 : index) : i64
    %55 = llvm.insertvalue %54, %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.mlir.constant(2 : index) : i64
    %57 = llvm.insertvalue %56, %55[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(2 : index) : i64
    %59 = llvm.insertvalue %58, %57[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(2 : index) : i64
    %61 = llvm.insertvalue %60, %59[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.insertvalue %62, %61[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x i32>>>>>
    %69 = llvm.bitcast %68 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %70 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %71 = llvm.insertvalue %69, %70[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %69, %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(4 : index) : i64
    %78 = llvm.insertvalue %77, %76[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.insertvalue %79, %78[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(2 : index) : i64
    %82 = llvm.insertvalue %81, %80[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.insertvalue %83, %82[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.insertvalue %85, %84[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.insertvalue %87, %86[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.insertvalue %89, %88[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.constant(2 : index) : i64
    %93 = llvm.mlir.constant(2 : index) : i64
    %94 = llvm.mlir.constant(3 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(6 : index) : i64
    %97 = llvm.mlir.constant(12 : index) : i64
    %98 = llvm.mlir.constant(12 : index) : i64
    %99 = llvm.mlir.null : !llvm.ptr<i32>
    %100 = llvm.getelementptr %99[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %101 = llvm.ptrtoint %100 : !llvm.ptr<i32> to i64
    %102 = llvm.mlir.constant(16 : index) : i64
    %103 = llvm.add %101, %102  : i64
    %104 = llvm.call @malloc(%103) : (i64) -> !llvm.ptr<i8>
    %105 = llvm.bitcast %104 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %106 = llvm.ptrtoint %105 : !llvm.ptr<i32> to i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.sub %102, %107  : i64
    %109 = llvm.add %106, %108  : i64
    %110 = llvm.urem %109, %102  : i64
    %111 = llvm.sub %109, %110  : i64
    %112 = llvm.inttoptr %111 : i64 to !llvm.ptr<i32>
    %113 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %114 = llvm.insertvalue %105, %113[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %112, %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.mlir.constant(0 : index) : i64
    %117 = llvm.insertvalue %116, %115[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.insertvalue %91, %117[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.insertvalue %92, %118[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.insertvalue %93, %119[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.insertvalue %94, %120[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.insertvalue %97, %121[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.insertvalue %96, %122[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.insertvalue %94, %123[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.insertvalue %95, %124[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.mlir.constant(0 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%126 : i64)
  ^bb1(%129: i64):  // 2 preds: ^bb0, ^bb11
    %130 = llvm.icmp "slt" %129, %127 : i64
    llvm.cond_br %130, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.mlir.constant(2 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%131 : i64)
  ^bb3(%134: i64):  // 2 preds: ^bb2, ^bb10
    %135 = llvm.icmp "slt" %134, %132 : i64
    llvm.cond_br %135, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%136 : i64)
  ^bb5(%139: i64):  // 2 preds: ^bb4, ^bb9
    %140 = llvm.icmp "slt" %139, %137 : i64
    llvm.cond_br %140, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%141 : i64)
  ^bb7(%144: i64):  // 2 preds: ^bb6, ^bb8
    %145 = llvm.icmp "slt" %144, %142 : i64
    llvm.cond_br %145, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %146 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.mlir.constant(4 : index) : i64
    %148 = llvm.mul %129, %147  : i64
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mul %134, %149  : i64
    %151 = llvm.add %148, %150  : i64
    %152 = llvm.add %151, %139  : i64
    %153 = llvm.add %152, %144  : i64
    %154 = llvm.getelementptr %146[%153] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %155 = llvm.load %154 : !llvm.ptr<i32>
    %156 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.mlir.constant(12 : index) : i64
    %158 = llvm.mul %129, %157  : i64
    %159 = llvm.mlir.constant(6 : index) : i64
    %160 = llvm.mul %134, %159  : i64
    %161 = llvm.add %158, %160  : i64
    %162 = llvm.mlir.constant(3 : index) : i64
    %163 = llvm.mul %139, %162  : i64
    %164 = llvm.add %161, %163  : i64
    %165 = llvm.add %164, %144  : i64
    %166 = llvm.getelementptr %156[%165] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %155, %166 : !llvm.ptr<i32>
    %167 = llvm.add %144, %143  : i64
    llvm.br ^bb7(%167 : i64)
  ^bb9:  // pred: ^bb7
    %168 = llvm.add %139, %138  : i64
    llvm.br ^bb5(%168 : i64)
  ^bb10:  // pred: ^bb5
    %169 = llvm.add %134, %133  : i64
    llvm.br ^bb3(%169 : i64)
  ^bb11:  // pred: ^bb3
    %170 = llvm.add %129, %128  : i64
    llvm.br ^bb1(%170 : i64)
  ^bb12:  // pred: ^bb1
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
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
    %182 = llvm.mlir.constant(2 : index) : i64
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
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.add %189, %191  : i64
    %193 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.mlir.constant(4 : index) : i64
    %195 = llvm.mul %174, %194  : i64
    %196 = llvm.mlir.constant(2 : index) : i64
    %197 = llvm.mul %179, %196  : i64
    %198 = llvm.add %195, %197  : i64
    %199 = llvm.add %198, %184  : i64
    %200 = llvm.add %199, %189  : i64
    %201 = llvm.getelementptr %193[%200] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %202 = llvm.load %201 : !llvm.ptr<i32>
    %203 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.mlir.constant(12 : index) : i64
    %205 = llvm.mul %174, %204  : i64
    %206 = llvm.mlir.constant(6 : index) : i64
    %207 = llvm.mul %179, %206  : i64
    %208 = llvm.add %205, %207  : i64
    %209 = llvm.mlir.constant(3 : index) : i64
    %210 = llvm.mul %184, %209  : i64
    %211 = llvm.add %208, %210  : i64
    %212 = llvm.add %211, %192  : i64
    %213 = llvm.getelementptr %203[%212] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %202, %213 : !llvm.ptr<i32>
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
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%218 : i64)
  ^bb25(%221: i64):  // 2 preds: ^bb24, ^bb35
    %222 = llvm.icmp "slt" %221, %219 : i64
    llvm.cond_br %222, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.mlir.constant(2 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%223 : i64)
  ^bb27(%226: i64):  // 2 preds: ^bb26, ^bb34
    %227 = llvm.icmp "slt" %226, %224 : i64
    llvm.cond_br %227, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %228 = llvm.mlir.constant(0 : index) : i64
    %229 = llvm.mlir.constant(2 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%228 : i64)
  ^bb29(%231: i64):  // 2 preds: ^bb28, ^bb33
    %232 = llvm.icmp "slt" %231, %229 : i64
    llvm.cond_br %232, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%233 : i64)
  ^bb31(%236: i64):  // 2 preds: ^bb30, ^bb32
    %237 = llvm.icmp "slt" %236, %234 : i64
    llvm.cond_br %237, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.add %236, %238  : i64
    %240 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.mlir.constant(4 : index) : i64
    %242 = llvm.mul %221, %241  : i64
    %243 = llvm.mlir.constant(2 : index) : i64
    %244 = llvm.mul %226, %243  : i64
    %245 = llvm.add %242, %244  : i64
    %246 = llvm.add %245, %231  : i64
    %247 = llvm.add %246, %236  : i64
    %248 = llvm.getelementptr %240[%247] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %249 = llvm.load %248 : !llvm.ptr<i32>
    %250 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.mlir.constant(12 : index) : i64
    %252 = llvm.mul %221, %251  : i64
    %253 = llvm.mlir.constant(6 : index) : i64
    %254 = llvm.mul %226, %253  : i64
    %255 = llvm.add %252, %254  : i64
    %256 = llvm.mlir.constant(3 : index) : i64
    %257 = llvm.mul %231, %256  : i64
    %258 = llvm.add %255, %257  : i64
    %259 = llvm.add %258, %239  : i64
    %260 = llvm.getelementptr %250[%259] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %249, %260 : !llvm.ptr<i32>
    %261 = llvm.add %236, %235  : i64
    llvm.br ^bb31(%261 : i64)
  ^bb33:  // pred: ^bb31
    %262 = llvm.add %231, %230  : i64
    llvm.br ^bb29(%262 : i64)
  ^bb34:  // pred: ^bb29
    %263 = llvm.add %226, %225  : i64
    llvm.br ^bb27(%263 : i64)
  ^bb35:  // pred: ^bb27
    %264 = llvm.add %221, %220  : i64
    llvm.br ^bb25(%264 : i64)
  ^bb36:  // pred: ^bb25
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.constant(2 : index) : i64
    %267 = llvm.mlir.constant(2 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(4 : index) : i64
    %271 = llvm.mlir.constant(4 : index) : i64
    %272 = llvm.mlir.null : !llvm.ptr<i32>
    %273 = llvm.getelementptr %272[%271] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %274 = llvm.ptrtoint %273 : !llvm.ptr<i32> to i64
    %275 = llvm.mlir.constant(16 : index) : i64
    %276 = llvm.add %274, %275  : i64
    %277 = llvm.call @malloc(%276) : (i64) -> !llvm.ptr<i8>
    %278 = llvm.bitcast %277 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %279 = llvm.ptrtoint %278 : !llvm.ptr<i32> to i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.sub %275, %280  : i64
    %282 = llvm.add %279, %281  : i64
    %283 = llvm.urem %282, %275  : i64
    %284 = llvm.sub %282, %283  : i64
    %285 = llvm.inttoptr %284 : i64 to !llvm.ptr<i32>
    %286 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %287 = llvm.insertvalue %278, %286[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %288 = llvm.insertvalue %285, %287[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.insertvalue %289, %288[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.insertvalue %265, %290[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.insertvalue %266, %291[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %293 = llvm.insertvalue %267, %292[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.insertvalue %268, %293[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.insertvalue %270, %294[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.insertvalue %267, %295[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.insertvalue %268, %296[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.insertvalue %269, %297[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.mlir.constant(0 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%299 : i64)
  ^bb37(%302: i64):  // 2 preds: ^bb36, ^bb47
    %303 = llvm.icmp "slt" %302, %300 : i64
    llvm.cond_br %303, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.mlir.constant(2 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%304 : i64)
  ^bb39(%307: i64):  // 2 preds: ^bb38, ^bb46
    %308 = llvm.icmp "slt" %307, %305 : i64
    llvm.cond_br %308, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %309 = llvm.mlir.constant(0 : index) : i64
    %310 = llvm.mlir.constant(2 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%309 : i64)
  ^bb41(%312: i64):  // 2 preds: ^bb40, ^bb45
    %313 = llvm.icmp "slt" %312, %310 : i64
    llvm.cond_br %313, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %314 = llvm.mlir.constant(0 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%314 : i64)
  ^bb43(%317: i64):  // 2 preds: ^bb42, ^bb44
    %318 = llvm.icmp "slt" %317, %315 : i64
    llvm.cond_br %318, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %319 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %320 = llvm.add %44, %317  : i64
    %321 = llvm.getelementptr %319[%320] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %322 = llvm.load %321 : !llvm.ptr<i32>
    %323 = llvm.extractvalue %90[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.mlir.constant(4 : index) : i64
    %325 = llvm.mul %302, %324  : i64
    %326 = llvm.mlir.constant(2 : index) : i64
    %327 = llvm.mul %307, %326  : i64
    %328 = llvm.add %325, %327  : i64
    %329 = llvm.add %328, %312  : i64
    %330 = llvm.add %329, %317  : i64
    %331 = llvm.getelementptr %323[%330] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %332 = llvm.load %331 : !llvm.ptr<i32>
    %333 = llvm.mul %322, %332  : i32
    %334 = llvm.extractvalue %298[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.mlir.constant(4 : index) : i64
    %336 = llvm.mul %302, %335  : i64
    %337 = llvm.mlir.constant(2 : index) : i64
    %338 = llvm.mul %307, %337  : i64
    %339 = llvm.add %336, %338  : i64
    %340 = llvm.add %339, %312  : i64
    %341 = llvm.add %340, %317  : i64
    %342 = llvm.getelementptr %334[%341] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %333, %342 : !llvm.ptr<i32>
    %343 = llvm.add %317, %316  : i64
    llvm.br ^bb43(%343 : i64)
  ^bb45:  // pred: ^bb43
    %344 = llvm.add %312, %311  : i64
    llvm.br ^bb41(%344 : i64)
  ^bb46:  // pred: ^bb41
    %345 = llvm.add %307, %306  : i64
    llvm.br ^bb39(%345 : i64)
  ^bb47:  // pred: ^bb39
    %346 = llvm.add %302, %301  : i64
    llvm.br ^bb37(%346 : i64)
  ^bb48:  // pred: ^bb37
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.mlir.constant(2 : index) : i64
    %349 = llvm.mlir.constant(2 : index) : i64
    %350 = llvm.mlir.constant(3 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.constant(6 : index) : i64
    %353 = llvm.mlir.constant(12 : index) : i64
    %354 = llvm.mlir.constant(12 : index) : i64
    %355 = llvm.mlir.null : !llvm.ptr<i32>
    %356 = llvm.getelementptr %355[%354] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %357 = llvm.ptrtoint %356 : !llvm.ptr<i32> to i64
    %358 = llvm.mlir.constant(16 : index) : i64
    %359 = llvm.add %357, %358  : i64
    %360 = llvm.call @malloc(%359) : (i64) -> !llvm.ptr<i8>
    %361 = llvm.bitcast %360 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %362 = llvm.ptrtoint %361 : !llvm.ptr<i32> to i64
    %363 = llvm.mlir.constant(1 : index) : i64
    %364 = llvm.sub %358, %363  : i64
    %365 = llvm.add %362, %364  : i64
    %366 = llvm.urem %365, %358  : i64
    %367 = llvm.sub %365, %366  : i64
    %368 = llvm.inttoptr %367 : i64 to !llvm.ptr<i32>
    %369 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %370 = llvm.insertvalue %361, %369[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.insertvalue %368, %370[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.mlir.constant(0 : index) : i64
    %373 = llvm.insertvalue %372, %371[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.insertvalue %347, %373[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.insertvalue %348, %374[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.insertvalue %349, %375[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.insertvalue %350, %376[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.insertvalue %353, %377[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.insertvalue %352, %378[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.insertvalue %350, %379[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.insertvalue %351, %380[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.mlir.constant(0 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%382 : i64)
  ^bb49(%385: i64):  // 2 preds: ^bb48, ^bb59
    %386 = llvm.icmp "slt" %385, %383 : i64
    llvm.cond_br %386, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %387 = llvm.mlir.constant(0 : index) : i64
    %388 = llvm.mlir.constant(2 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%387 : i64)
  ^bb51(%390: i64):  // 2 preds: ^bb50, ^bb58
    %391 = llvm.icmp "slt" %390, %388 : i64
    llvm.cond_br %391, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %392 = llvm.mlir.constant(0 : index) : i64
    %393 = llvm.mlir.constant(2 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%392 : i64)
  ^bb53(%395: i64):  // 2 preds: ^bb52, ^bb57
    %396 = llvm.icmp "slt" %395, %393 : i64
    llvm.cond_br %396, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.mlir.constant(3 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%397 : i64)
  ^bb55(%400: i64):  // 2 preds: ^bb54, ^bb56
    %401 = llvm.icmp "slt" %400, %398 : i64
    llvm.cond_br %401, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %402 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.mlir.constant(12 : index) : i64
    %404 = llvm.mul %385, %403  : i64
    %405 = llvm.mlir.constant(6 : index) : i64
    %406 = llvm.mul %390, %405  : i64
    %407 = llvm.add %404, %406  : i64
    %408 = llvm.mlir.constant(3 : index) : i64
    %409 = llvm.mul %395, %408  : i64
    %410 = llvm.add %407, %409  : i64
    %411 = llvm.add %410, %400  : i64
    %412 = llvm.getelementptr %402[%411] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %413 = llvm.load %412 : !llvm.ptr<i32>
    %414 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.mlir.constant(2 : index) : i64
    %416 = llvm.mul %385, %415  : i64
    %417 = llvm.add %416, %390  : i64
    %418 = llvm.add %417, %44  : i64
    %419 = llvm.add %418, %44  : i64
    %420 = llvm.getelementptr %414[%419] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %421 = llvm.load %420 : !llvm.ptr<i32>
    %422 = llvm.mul %413, %421  : i32
    %423 = llvm.extractvalue %381[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.mlir.constant(12 : index) : i64
    %425 = llvm.mul %385, %424  : i64
    %426 = llvm.mlir.constant(6 : index) : i64
    %427 = llvm.mul %390, %426  : i64
    %428 = llvm.add %425, %427  : i64
    %429 = llvm.mlir.constant(3 : index) : i64
    %430 = llvm.mul %395, %429  : i64
    %431 = llvm.add %428, %430  : i64
    %432 = llvm.add %431, %400  : i64
    %433 = llvm.getelementptr %423[%432] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %422, %433 : !llvm.ptr<i32>
    %434 = llvm.add %400, %399  : i64
    llvm.br ^bb55(%434 : i64)
  ^bb57:  // pred: ^bb55
    %435 = llvm.add %395, %394  : i64
    llvm.br ^bb53(%435 : i64)
  ^bb58:  // pred: ^bb53
    %436 = llvm.add %390, %389  : i64
    llvm.br ^bb51(%436 : i64)
  ^bb59:  // pred: ^bb51
    %437 = llvm.add %385, %384  : i64
    llvm.br ^bb49(%437 : i64)
  ^bb60:  // pred: ^bb49
    %438 = llvm.mlir.constant(1 : index) : i64
    %439 = llvm.mlir.constant(2 : index) : i64
    %440 = llvm.mlir.constant(2 : index) : i64
    %441 = llvm.mlir.constant(4 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    %443 = llvm.mlir.constant(8 : index) : i64
    %444 = llvm.mlir.constant(16 : index) : i64
    %445 = llvm.mlir.constant(16 : index) : i64
    %446 = llvm.mlir.null : !llvm.ptr<i32>
    %447 = llvm.getelementptr %446[%445] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %448 = llvm.ptrtoint %447 : !llvm.ptr<i32> to i64
    %449 = llvm.mlir.constant(16 : index) : i64
    %450 = llvm.add %448, %449  : i64
    %451 = llvm.call @malloc(%450) : (i64) -> !llvm.ptr<i8>
    %452 = llvm.bitcast %451 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %453 = llvm.ptrtoint %452 : !llvm.ptr<i32> to i64
    %454 = llvm.mlir.constant(1 : index) : i64
    %455 = llvm.sub %449, %454  : i64
    %456 = llvm.add %453, %455  : i64
    %457 = llvm.urem %456, %449  : i64
    %458 = llvm.sub %456, %457  : i64
    %459 = llvm.inttoptr %458 : i64 to !llvm.ptr<i32>
    %460 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %461 = llvm.insertvalue %452, %460[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.insertvalue %459, %461[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.mlir.constant(0 : index) : i64
    %464 = llvm.insertvalue %463, %462[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.insertvalue %438, %464[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.insertvalue %439, %465[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.insertvalue %440, %466[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.insertvalue %441, %467[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.insertvalue %444, %468[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.insertvalue %443, %469[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.insertvalue %441, %470[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.insertvalue %442, %471[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.mlir.constant(0 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%473 : i64)
  ^bb61(%476: i64):  // 2 preds: ^bb60, ^bb71
    %477 = llvm.icmp "slt" %476, %474 : i64
    llvm.cond_br %477, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %478 = llvm.mlir.constant(0 : index) : i64
    %479 = llvm.mlir.constant(2 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%478 : i64)
  ^bb63(%481: i64):  // 2 preds: ^bb62, ^bb70
    %482 = llvm.icmp "slt" %481, %479 : i64
    llvm.cond_br %482, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %483 = llvm.mlir.constant(0 : index) : i64
    %484 = llvm.mlir.constant(2 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%483 : i64)
  ^bb65(%486: i64):  // 2 preds: ^bb64, ^bb69
    %487 = llvm.icmp "slt" %486, %484 : i64
    llvm.cond_br %487, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %488 = llvm.mlir.constant(0 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%488 : i64)
  ^bb67(%491: i64):  // 2 preds: ^bb66, ^bb68
    %492 = llvm.icmp "slt" %491, %489 : i64
    llvm.cond_br %492, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %493 = llvm.extractvalue %298[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.mlir.constant(4 : index) : i64
    %495 = llvm.mul %476, %494  : i64
    %496 = llvm.mlir.constant(2 : index) : i64
    %497 = llvm.mul %481, %496  : i64
    %498 = llvm.add %495, %497  : i64
    %499 = llvm.add %498, %486  : i64
    %500 = llvm.add %499, %491  : i64
    %501 = llvm.getelementptr %493[%500] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %502 = llvm.load %501 : !llvm.ptr<i32>
    %503 = llvm.extractvalue %472[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.mlir.constant(16 : index) : i64
    %505 = llvm.mul %476, %504  : i64
    %506 = llvm.mlir.constant(8 : index) : i64
    %507 = llvm.mul %481, %506  : i64
    %508 = llvm.add %505, %507  : i64
    %509 = llvm.mlir.constant(4 : index) : i64
    %510 = llvm.mul %486, %509  : i64
    %511 = llvm.add %508, %510  : i64
    %512 = llvm.add %511, %491  : i64
    %513 = llvm.getelementptr %503[%512] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %502, %513 : !llvm.ptr<i32>
    %514 = llvm.add %491, %490  : i64
    llvm.br ^bb67(%514 : i64)
  ^bb69:  // pred: ^bb67
    %515 = llvm.add %486, %485  : i64
    llvm.br ^bb65(%515 : i64)
  ^bb70:  // pred: ^bb65
    %516 = llvm.add %481, %480  : i64
    llvm.br ^bb63(%516 : i64)
  ^bb71:  // pred: ^bb63
    %517 = llvm.add %476, %475  : i64
    llvm.br ^bb61(%517 : i64)
  ^bb72:  // pred: ^bb61
    %518 = llvm.mlir.constant(0 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%518 : i64)
  ^bb73(%521: i64):  // 2 preds: ^bb72, ^bb83
    %522 = llvm.icmp "slt" %521, %519 : i64
    llvm.cond_br %522, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %523 = llvm.mlir.constant(0 : index) : i64
    %524 = llvm.mlir.constant(2 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%523 : i64)
  ^bb75(%526: i64):  // 2 preds: ^bb74, ^bb82
    %527 = llvm.icmp "slt" %526, %524 : i64
    llvm.cond_br %527, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %528 = llvm.mlir.constant(0 : index) : i64
    %529 = llvm.mlir.constant(2 : index) : i64
    %530 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%528 : i64)
  ^bb77(%531: i64):  // 2 preds: ^bb76, ^bb81
    %532 = llvm.icmp "slt" %531, %529 : i64
    llvm.cond_br %532, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %533 = llvm.mlir.constant(0 : index) : i64
    %534 = llvm.mlir.constant(3 : index) : i64
    %535 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%533 : i64)
  ^bb79(%536: i64):  // 2 preds: ^bb78, ^bb80
    %537 = llvm.icmp "slt" %536, %534 : i64
    llvm.cond_br %537, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %538 = llvm.mlir.constant(1 : index) : i64
    %539 = llvm.add %536, %538  : i64
    %540 = llvm.extractvalue %381[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %541 = llvm.mlir.constant(12 : index) : i64
    %542 = llvm.mul %521, %541  : i64
    %543 = llvm.mlir.constant(6 : index) : i64
    %544 = llvm.mul %526, %543  : i64
    %545 = llvm.add %542, %544  : i64
    %546 = llvm.mlir.constant(3 : index) : i64
    %547 = llvm.mul %531, %546  : i64
    %548 = llvm.add %545, %547  : i64
    %549 = llvm.add %548, %536  : i64
    %550 = llvm.getelementptr %540[%549] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %551 = llvm.load %550 : !llvm.ptr<i32>
    %552 = llvm.extractvalue %472[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %553 = llvm.mlir.constant(16 : index) : i64
    %554 = llvm.mul %521, %553  : i64
    %555 = llvm.mlir.constant(8 : index) : i64
    %556 = llvm.mul %526, %555  : i64
    %557 = llvm.add %554, %556  : i64
    %558 = llvm.mlir.constant(4 : index) : i64
    %559 = llvm.mul %531, %558  : i64
    %560 = llvm.add %557, %559  : i64
    %561 = llvm.add %560, %539  : i64
    %562 = llvm.getelementptr %552[%561] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %551, %562 : !llvm.ptr<i32>
    %563 = llvm.add %536, %535  : i64
    llvm.br ^bb79(%563 : i64)
  ^bb81:  // pred: ^bb79
    %564 = llvm.add %531, %530  : i64
    llvm.br ^bb77(%564 : i64)
  ^bb82:  // pred: ^bb77
    %565 = llvm.add %526, %525  : i64
    llvm.br ^bb75(%565 : i64)
  ^bb83:  // pred: ^bb75
    %566 = llvm.add %521, %520  : i64
    llvm.br ^bb73(%566 : i64)
  ^bb84:  // pred: ^bb73
    %567 = llvm.mlir.constant(1 : index) : i64
    %568 = llvm.mlir.constant(2 : index) : i64
    %569 = llvm.mlir.constant(2 : index) : i64
    %570 = llvm.mlir.constant(4 : index) : i64
    %571 = llvm.mlir.constant(1 : index) : i64
    %572 = llvm.mlir.constant(8 : index) : i64
    %573 = llvm.mlir.constant(16 : index) : i64
    %574 = llvm.mlir.constant(16 : index) : i64
    %575 = llvm.mlir.null : !llvm.ptr<i32>
    %576 = llvm.getelementptr %575[%574] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %577 = llvm.ptrtoint %576 : !llvm.ptr<i32> to i64
    %578 = llvm.mlir.constant(16 : index) : i64
    %579 = llvm.add %577, %578  : i64
    %580 = llvm.call @malloc(%579) : (i64) -> !llvm.ptr<i8>
    %581 = llvm.bitcast %580 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %582 = llvm.ptrtoint %581 : !llvm.ptr<i32> to i64
    %583 = llvm.mlir.constant(1 : index) : i64
    %584 = llvm.sub %578, %583  : i64
    %585 = llvm.add %582, %584  : i64
    %586 = llvm.urem %585, %578  : i64
    %587 = llvm.sub %585, %586  : i64
    %588 = llvm.inttoptr %587 : i64 to !llvm.ptr<i32>
    %589 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %590 = llvm.insertvalue %581, %589[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %591 = llvm.insertvalue %588, %590[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %592 = llvm.mlir.constant(0 : index) : i64
    %593 = llvm.insertvalue %592, %591[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %594 = llvm.insertvalue %567, %593[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %595 = llvm.insertvalue %568, %594[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %596 = llvm.insertvalue %569, %595[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %597 = llvm.insertvalue %570, %596[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %598 = llvm.insertvalue %573, %597[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %599 = llvm.insertvalue %572, %598[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %600 = llvm.insertvalue %570, %599[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %601 = llvm.insertvalue %571, %600[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %602 = llvm.mlir.constant(0 : index) : i64
    %603 = llvm.mlir.constant(1 : index) : i64
    %604 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%602 : i64)
  ^bb85(%605: i64):  // 2 preds: ^bb84, ^bb95
    %606 = llvm.icmp "slt" %605, %603 : i64
    llvm.cond_br %606, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %607 = llvm.mlir.constant(0 : index) : i64
    %608 = llvm.mlir.constant(2 : index) : i64
    %609 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%607 : i64)
  ^bb87(%610: i64):  // 2 preds: ^bb86, ^bb94
    %611 = llvm.icmp "slt" %610, %608 : i64
    llvm.cond_br %611, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %612 = llvm.mlir.constant(0 : index) : i64
    %613 = llvm.mlir.constant(2 : index) : i64
    %614 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%612 : i64)
  ^bb89(%615: i64):  // 2 preds: ^bb88, ^bb93
    %616 = llvm.icmp "slt" %615, %613 : i64
    llvm.cond_br %616, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %617 = llvm.mlir.constant(0 : index) : i64
    %618 = llvm.mlir.constant(4 : index) : i64
    %619 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%617 : i64)
  ^bb91(%620: i64):  // 2 preds: ^bb90, ^bb92
    %621 = llvm.icmp "slt" %620, %618 : i64
    llvm.cond_br %621, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %622 = llvm.extractvalue %472[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %623 = llvm.mlir.constant(16 : index) : i64
    %624 = llvm.mul %605, %623  : i64
    %625 = llvm.mlir.constant(8 : index) : i64
    %626 = llvm.mul %610, %625  : i64
    %627 = llvm.add %624, %626  : i64
    %628 = llvm.mlir.constant(4 : index) : i64
    %629 = llvm.mul %615, %628  : i64
    %630 = llvm.add %627, %629  : i64
    %631 = llvm.add %630, %620  : i64
    %632 = llvm.getelementptr %622[%631] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %633 = llvm.load %632 : !llvm.ptr<i32>
    %634 = llvm.mlir.constant(false) : i1
    %635 = "llvm.intr.abs"(%633, %634) : (i32, i1) -> i32
    %636 = llvm.extractvalue %601[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %637 = llvm.mlir.constant(16 : index) : i64
    %638 = llvm.mul %605, %637  : i64
    %639 = llvm.mlir.constant(8 : index) : i64
    %640 = llvm.mul %610, %639  : i64
    %641 = llvm.add %638, %640  : i64
    %642 = llvm.mlir.constant(4 : index) : i64
    %643 = llvm.mul %615, %642  : i64
    %644 = llvm.add %641, %643  : i64
    %645 = llvm.add %644, %620  : i64
    %646 = llvm.getelementptr %636[%645] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %635, %646 : !llvm.ptr<i32>
    %647 = llvm.add %620, %619  : i64
    llvm.br ^bb91(%647 : i64)
  ^bb93:  // pred: ^bb91
    %648 = llvm.add %615, %614  : i64
    llvm.br ^bb89(%648 : i64)
  ^bb94:  // pred: ^bb89
    %649 = llvm.add %610, %609  : i64
    llvm.br ^bb87(%649 : i64)
  ^bb95:  // pred: ^bb87
    %650 = llvm.add %605, %604  : i64
    llvm.br ^bb85(%650 : i64)
  ^bb96:  // pred: ^bb85
    llvm.return %601 : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v10_0", "v9_0", "v3_0", "v5_0"], llvm.emit_c_interface, output_names = ["v2_0"]} {
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
    %24 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %25 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.extractvalue %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.extractvalue %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.extractvalue %24[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.load %arg4 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %33 = llvm.extractvalue %32[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.extractvalue %32[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.extractvalue %32[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.extractvalue %32[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.extractvalue %32[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.extractvalue %32[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.extractvalue %32[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.extractvalue %32[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.extractvalue %32[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.extractvalue %32[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %44, %arg0 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
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
    %85 = llvm.mlir.constant(2 : i64) : i64
    %86 = llvm.getelementptr %0[%85] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %87 = llvm.load %86 : !llvm.ptr<ptr<i8>>
    %88 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %89 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %90 = llvm.call @omTensorGetDataPtr(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %92 = llvm.insertvalue %91, %89[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %93 = llvm.insertvalue %91, %92[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.insertvalue %94, %93[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %96 = llvm.call @omTensorGetShape(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %97 = llvm.call @omTensorGetStrides(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %98 = llvm.mlir.constant(0 : i64) : i64
    %99 = llvm.getelementptr %96[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %95[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.getelementptr %97[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.getelementptr %96[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %107 = llvm.load %106 : !llvm.ptr<i64>
    %108 = llvm.insertvalue %107, %104[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.getelementptr %97[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %110 = llvm.load %109 : !llvm.ptr<i64>
    %111 = llvm.insertvalue %110, %108[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %111, %88 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %112 = llvm.mlir.constant(3 : i64) : i64
    %113 = llvm.getelementptr %0[%112] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %114 = llvm.load %113 : !llvm.ptr<ptr<i8>>
    %115 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %116 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %117 = llvm.call @omTensorGetDataPtr(%114) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %118 = llvm.bitcast %117 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %119 = llvm.insertvalue %118, %116[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.insertvalue %118, %119[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.mlir.constant(0 : i64) : i64
    %122 = llvm.insertvalue %121, %120[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.call @omTensorGetShape(%114) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %124 = llvm.call @omTensorGetStrides(%114) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %125 = llvm.mlir.constant(0 : i64) : i64
    %126 = llvm.getelementptr %123[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %127 = llvm.load %126 : !llvm.ptr<i64>
    %128 = llvm.insertvalue %127, %122[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %124[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %130 = llvm.load %129 : !llvm.ptr<i64>
    %131 = llvm.insertvalue %130, %128[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.mlir.constant(1 : i64) : i64
    %133 = llvm.getelementptr %123[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %134 = llvm.load %133 : !llvm.ptr<i64>
    %135 = llvm.insertvalue %134, %131[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %124[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %137 = llvm.load %136 : !llvm.ptr<i64>
    %138 = llvm.insertvalue %137, %135[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.mlir.constant(2 : i64) : i64
    %140 = llvm.getelementptr %123[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %141 = llvm.load %140 : !llvm.ptr<i64>
    %142 = llvm.insertvalue %141, %138[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %124[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %144 = llvm.load %143 : !llvm.ptr<i64>
    %145 = llvm.insertvalue %144, %142[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.mlir.constant(3 : i64) : i64
    %147 = llvm.getelementptr %123[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %148 = llvm.load %147 : !llvm.ptr<i64>
    %149 = llvm.insertvalue %148, %145[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %124[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %151 = llvm.load %150 : !llvm.ptr<i64>
    %152 = llvm.insertvalue %151, %149[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %152, %115 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88, %115) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %153 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %154 = llvm.mlir.constant(1 : i64) : i64
    %155 = llvm.mlir.constant(8 : i64) : i64
    %156 = llvm.call @malloc(%155) : (i64) -> !llvm.ptr<i8>
    %157 = llvm.bitcast %156 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %158 = llvm.mlir.constant(4 : i64) : i64
    %159 = llvm.call @omTensorCreateUntyped(%158) : (i64) -> !llvm.ptr<i8>
    %160 = llvm.mlir.constant(1 : i64) : i64
    %161 = llvm.extractvalue %153[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.bitcast %161 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %163 = llvm.extractvalue %153[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.bitcast %163 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%159, %160, %162, %164) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %165 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%159, %165) : (!llvm.ptr<i8>, i64) -> ()
    %166 = llvm.call @omTensorGetShape(%159) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %167 = llvm.call @omTensorGetStrides(%159) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %168 = llvm.mlir.constant(0 : i64) : i64
    %169 = llvm.extractvalue %153[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.getelementptr %166[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %169, %170 : !llvm.ptr<i64>
    %171 = llvm.extractvalue %153[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.getelementptr %167[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %171, %172 : !llvm.ptr<i64>
    %173 = llvm.mlir.constant(1 : i64) : i64
    %174 = llvm.extractvalue %153[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.getelementptr %166[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %174, %175 : !llvm.ptr<i64>
    %176 = llvm.extractvalue %153[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.getelementptr %167[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %176, %177 : !llvm.ptr<i64>
    %178 = llvm.mlir.constant(2 : i64) : i64
    %179 = llvm.extractvalue %153[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.getelementptr %166[%178] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %179, %180 : !llvm.ptr<i64>
    %181 = llvm.extractvalue %153[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.getelementptr %167[%178] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %181, %182 : !llvm.ptr<i64>
    %183 = llvm.mlir.constant(3 : i64) : i64
    %184 = llvm.extractvalue %153[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.getelementptr %166[%183] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %184, %185 : !llvm.ptr<i64>
    %186 = llvm.extractvalue %153[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.getelementptr %167[%183] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %186, %187 : !llvm.ptr<i64>
    %188 = llvm.mlir.constant(0 : i64) : i64
    %189 = llvm.getelementptr %157[%188] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %159, %189 : !llvm.ptr<ptr<i8>>
    %190 = llvm.call @omTensorListCreate(%157, %154, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %190 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<275 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<275 x i8>> to !llvm.ptr<i8>
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

