module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 4 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 5 , 1] , \22name\22 : \22v6_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<5> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0", "v2_0", "v1_0"], llvm.emit_c_interface, output_names = ["v9_0", "v8_0", "v3_0", "v6_0"]} {
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
    %24 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %25 = llvm.insertvalue %arg22, %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.insertvalue %arg23, %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.insertvalue %arg24, %26[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %arg25, %27[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %arg29, %28[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.insertvalue %arg26, %29[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %arg30, %30[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.insertvalue %arg27, %31[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.insertvalue %arg31, %32[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.insertvalue %arg28, %33[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %arg32, %34[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %37 = llvm.bitcast %36 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.insertvalue %47, %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.insertvalue %49, %48[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.mlir.null : !llvm.ptr<f64>
    %65 = llvm.getelementptr %64[%59] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %66 = llvm.ptrtoint %65 : !llvm.ptr<f64> to i64
    %67 = llvm.mlir.constant(16 : index) : i64
    %68 = llvm.add %66, %67  : i64
    %69 = llvm.call @malloc(%68) : (i64) -> !llvm.ptr<i8>
    %70 = llvm.bitcast %69 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %71 = llvm.ptrtoint %70 : !llvm.ptr<f64> to i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.sub %67, %72  : i64
    %74 = llvm.add %71, %73  : i64
    %75 = llvm.urem %74, %67  : i64
    %76 = llvm.sub %74, %75  : i64
    %77 = llvm.inttoptr %76 : i64 to !llvm.ptr<f64>
    %78 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %79 = llvm.insertvalue %70, %78[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.insertvalue %77, %79[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.insertvalue %81, %80[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.insertvalue %59, %82[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %60, %83[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.insertvalue %61, %84[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.insertvalue %62, %85[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.insertvalue %60, %86[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.insertvalue %61, %87[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.insertvalue %62, %88[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.insertvalue %63, %89[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%91 : i64)
  ^bb1(%94: i64):  // 2 preds: ^bb0, ^bb11
    %95 = llvm.icmp "slt" %94, %92 : i64
    llvm.cond_br %95, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%96 : i64)
  ^bb3(%99: i64):  // 2 preds: ^bb2, ^bb10
    %100 = llvm.icmp "slt" %99, %97 : i64
    llvm.cond_br %100, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%101 : i64)
  ^bb5(%104: i64):  // 2 preds: ^bb4, ^bb9
    %105 = llvm.icmp "slt" %104, %102 : i64
    llvm.cond_br %105, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%106 : i64)
  ^bb7(%109: i64):  // 2 preds: ^bb6, ^bb8
    %110 = llvm.icmp "slt" %109, %107 : i64
    llvm.cond_br %110, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %111 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.add %94, %99  : i64
    %113 = llvm.add %112, %104  : i64
    %114 = llvm.add %113, %109  : i64
    %115 = llvm.getelementptr %111[%114] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %116 = llvm.load %115 : !llvm.ptr<i32>
    %117 = llvm.sitofp %116 : i32 to f64
    %118 = llvm.extractvalue %90[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.add %94, %99  : i64
    %120 = llvm.add %119, %104  : i64
    %121 = llvm.add %120, %109  : i64
    %122 = llvm.getelementptr %118[%121] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %117, %122 : !llvm.ptr<f64>
    %123 = llvm.add %109, %108  : i64
    llvm.br ^bb7(%123 : i64)
  ^bb9:  // pred: ^bb7
    %124 = llvm.add %104, %103  : i64
    llvm.br ^bb5(%124 : i64)
  ^bb10:  // pred: ^bb5
    %125 = llvm.add %99, %98  : i64
    llvm.br ^bb3(%125 : i64)
  ^bb11:  // pred: ^bb3
    %126 = llvm.add %94, %93  : i64
    llvm.br ^bb1(%126 : i64)
  ^bb12:  // pred: ^bb1
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.null : !llvm.ptr<i32>
    %133 = llvm.getelementptr %132[%127] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %134 = llvm.ptrtoint %133 : !llvm.ptr<i32> to i64
    %135 = llvm.mlir.constant(16 : index) : i64
    %136 = llvm.add %134, %135  : i64
    %137 = llvm.call @malloc(%136) : (i64) -> !llvm.ptr<i8>
    %138 = llvm.bitcast %137 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %139 = llvm.ptrtoint %138 : !llvm.ptr<i32> to i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.sub %135, %140  : i64
    %142 = llvm.add %139, %141  : i64
    %143 = llvm.urem %142, %135  : i64
    %144 = llvm.sub %142, %143  : i64
    %145 = llvm.inttoptr %144 : i64 to !llvm.ptr<i32>
    %146 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %147 = llvm.insertvalue %138, %146[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %145, %147[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.mlir.constant(0 : index) : i64
    %150 = llvm.insertvalue %149, %148[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %127, %150[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %128, %151[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %129, %152[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %130, %153[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %128, %154[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %129, %155[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %130, %156[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %131, %157[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%159 : i64)
  ^bb13(%162: i64):  // 2 preds: ^bb12, ^bb23
    %163 = llvm.icmp "slt" %162, %160 : i64
    llvm.cond_br %163, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%164 : i64)
  ^bb15(%167: i64):  // 2 preds: ^bb14, ^bb22
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%169 : i64)
  ^bb17(%172: i64):  // 2 preds: ^bb16, ^bb21
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%174 : i64)
  ^bb19(%177: i64):  // 2 preds: ^bb18, ^bb20
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %179 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.add %162, %167  : i64
    %181 = llvm.add %180, %172  : i64
    %182 = llvm.add %181, %177  : i64
    %183 = llvm.getelementptr %179[%182] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %184 = llvm.load %183 : !llvm.ptr<i32>
    %185 = llvm.extractvalue %158[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.add %162, %167  : i64
    %187 = llvm.add %186, %172  : i64
    %188 = llvm.add %187, %177  : i64
    %189 = llvm.getelementptr %185[%188] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %184, %189 : !llvm.ptr<i32>
    %190 = llvm.add %177, %176  : i64
    llvm.br ^bb19(%190 : i64)
  ^bb21:  // pred: ^bb19
    %191 = llvm.add %172, %171  : i64
    llvm.br ^bb17(%191 : i64)
  ^bb22:  // pred: ^bb17
    %192 = llvm.add %167, %166  : i64
    llvm.br ^bb15(%192 : i64)
  ^bb23:  // pred: ^bb15
    %193 = llvm.add %162, %161  : i64
    llvm.br ^bb13(%193 : i64)
  ^bb24:  // pred: ^bb13
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.mlir.constant(4 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(4 : index) : i64
    %200 = llvm.mlir.null : !llvm.ptr<i32>
    %201 = llvm.getelementptr %200[%199] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %202 = llvm.ptrtoint %201 : !llvm.ptr<i32> to i64
    %203 = llvm.mlir.constant(16 : index) : i64
    %204 = llvm.add %202, %203  : i64
    %205 = llvm.call @malloc(%204) : (i64) -> !llvm.ptr<i8>
    %206 = llvm.bitcast %205 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %207 = llvm.ptrtoint %206 : !llvm.ptr<i32> to i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.sub %203, %208  : i64
    %210 = llvm.add %207, %209  : i64
    %211 = llvm.urem %210, %203  : i64
    %212 = llvm.sub %210, %211  : i64
    %213 = llvm.inttoptr %212 : i64 to !llvm.ptr<i32>
    %214 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %215 = llvm.insertvalue %206, %214[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %213, %215[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.insertvalue %217, %216[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.insertvalue %194, %218[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.insertvalue %195, %219[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.insertvalue %196, %220[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.insertvalue %197, %221[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.insertvalue %195, %222[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.insertvalue %196, %223[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.insertvalue %197, %224[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.insertvalue %198, %225[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.mlir.constant(0 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%227 : i64)
  ^bb25(%230: i64):  // 2 preds: ^bb24, ^bb35
    %231 = llvm.icmp "slt" %230, %228 : i64
    llvm.cond_br %231, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%232 : i64)
  ^bb27(%235: i64):  // 2 preds: ^bb26, ^bb34
    %236 = llvm.icmp "slt" %235, %233 : i64
    llvm.cond_br %236, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %237 = llvm.mlir.constant(0 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%237 : i64)
  ^bb29(%240: i64):  // 2 preds: ^bb28, ^bb33
    %241 = llvm.icmp "slt" %240, %238 : i64
    llvm.cond_br %241, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%242 : i64)
  ^bb31(%245: i64):  // 2 preds: ^bb30, ^bb32
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %247 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.add %230, %235  : i64
    %249 = llvm.add %248, %240  : i64
    %250 = llvm.add %249, %245  : i64
    %251 = llvm.getelementptr %247[%250] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %252 = llvm.load %251 : !llvm.ptr<i32>
    %253 = llvm.extractvalue %226[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.mlir.constant(4 : index) : i64
    %255 = llvm.mul %230, %254  : i64
    %256 = llvm.add %255, %235  : i64
    %257 = llvm.add %256, %240  : i64
    %258 = llvm.add %257, %245  : i64
    %259 = llvm.getelementptr %253[%258] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %252, %259 : !llvm.ptr<i32>
    %260 = llvm.add %245, %244  : i64
    llvm.br ^bb31(%260 : i64)
  ^bb33:  // pred: ^bb31
    %261 = llvm.add %240, %239  : i64
    llvm.br ^bb29(%261 : i64)
  ^bb34:  // pred: ^bb29
    %262 = llvm.add %235, %234  : i64
    llvm.br ^bb27(%262 : i64)
  ^bb35:  // pred: ^bb27
    %263 = llvm.add %230, %229  : i64
    llvm.br ^bb25(%263 : i64)
  ^bb36:  // pred: ^bb25
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%264 : i64)
  ^bb37(%267: i64):  // 2 preds: ^bb36, ^bb47
    %268 = llvm.icmp "slt" %267, %265 : i64
    llvm.cond_br %268, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %269 = llvm.mlir.constant(0 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%269 : i64)
  ^bb39(%272: i64):  // 2 preds: ^bb38, ^bb46
    %273 = llvm.icmp "slt" %272, %270 : i64
    llvm.cond_br %273, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %274 = llvm.mlir.constant(0 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%274 : i64)
  ^bb41(%277: i64):  // 2 preds: ^bb40, ^bb45
    %278 = llvm.icmp "slt" %277, %275 : i64
    llvm.cond_br %278, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %279 = llvm.mlir.constant(0 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%279 : i64)
  ^bb43(%282: i64):  // 2 preds: ^bb42, ^bb44
    %283 = llvm.icmp "slt" %282, %280 : i64
    llvm.cond_br %283, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.add %272, %284  : i64
    %286 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %287 = llvm.add %267, %272  : i64
    %288 = llvm.add %287, %277  : i64
    %289 = llvm.add %288, %282  : i64
    %290 = llvm.getelementptr %286[%289] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %291 = llvm.load %290 : !llvm.ptr<i32>
    %292 = llvm.extractvalue %226[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %293 = llvm.mlir.constant(4 : index) : i64
    %294 = llvm.mul %267, %293  : i64
    %295 = llvm.add %294, %285  : i64
    %296 = llvm.add %295, %277  : i64
    %297 = llvm.add %296, %282  : i64
    %298 = llvm.getelementptr %292[%297] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %291, %298 : !llvm.ptr<i32>
    %299 = llvm.add %282, %281  : i64
    llvm.br ^bb43(%299 : i64)
  ^bb45:  // pred: ^bb43
    %300 = llvm.add %277, %276  : i64
    llvm.br ^bb41(%300 : i64)
  ^bb46:  // pred: ^bb41
    %301 = llvm.add %272, %271  : i64
    llvm.br ^bb39(%301 : i64)
  ^bb47:  // pred: ^bb39
    %302 = llvm.add %267, %266  : i64
    llvm.br ^bb37(%302 : i64)
  ^bb48:  // pred: ^bb37
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%303 : i64)
  ^bb49(%306: i64):  // 2 preds: ^bb48, ^bb59
    %307 = llvm.icmp "slt" %306, %304 : i64
    llvm.cond_br %307, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%308 : i64)
  ^bb51(%311: i64):  // 2 preds: ^bb50, ^bb58
    %312 = llvm.icmp "slt" %311, %309 : i64
    llvm.cond_br %312, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %313 = llvm.mlir.constant(0 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%313 : i64)
  ^bb53(%316: i64):  // 2 preds: ^bb52, ^bb57
    %317 = llvm.icmp "slt" %316, %314 : i64
    llvm.cond_br %317, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %318 = llvm.mlir.constant(0 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%318 : i64)
  ^bb55(%321: i64):  // 2 preds: ^bb54, ^bb56
    %322 = llvm.icmp "slt" %321, %319 : i64
    llvm.cond_br %322, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %323 = llvm.mlir.constant(2 : index) : i64
    %324 = llvm.add %311, %323  : i64
    %325 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.add %306, %311  : i64
    %327 = llvm.add %326, %316  : i64
    %328 = llvm.add %327, %321  : i64
    %329 = llvm.getelementptr %325[%328] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %330 = llvm.load %329 : !llvm.ptr<i32>
    %331 = llvm.extractvalue %226[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.mlir.constant(4 : index) : i64
    %333 = llvm.mul %306, %332  : i64
    %334 = llvm.add %333, %324  : i64
    %335 = llvm.add %334, %316  : i64
    %336 = llvm.add %335, %321  : i64
    %337 = llvm.getelementptr %331[%336] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %330, %337 : !llvm.ptr<i32>
    %338 = llvm.add %321, %320  : i64
    llvm.br ^bb55(%338 : i64)
  ^bb57:  // pred: ^bb55
    %339 = llvm.add %316, %315  : i64
    llvm.br ^bb53(%339 : i64)
  ^bb58:  // pred: ^bb53
    %340 = llvm.add %311, %310  : i64
    llvm.br ^bb51(%340 : i64)
  ^bb59:  // pred: ^bb51
    %341 = llvm.add %306, %305  : i64
    llvm.br ^bb49(%341 : i64)
  ^bb60:  // pred: ^bb49
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%342 : i64)
  ^bb61(%345: i64):  // 2 preds: ^bb60, ^bb71
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%347 : i64)
  ^bb63(%350: i64):  // 2 preds: ^bb62, ^bb70
    %351 = llvm.icmp "slt" %350, %348 : i64
    llvm.cond_br %351, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%352 : i64)
  ^bb65(%355: i64):  // 2 preds: ^bb64, ^bb69
    %356 = llvm.icmp "slt" %355, %353 : i64
    llvm.cond_br %356, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %357 = llvm.mlir.constant(0 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%357 : i64)
  ^bb67(%360: i64):  // 2 preds: ^bb66, ^bb68
    %361 = llvm.icmp "slt" %360, %358 : i64
    llvm.cond_br %361, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %362 = llvm.mlir.constant(3 : index) : i64
    %363 = llvm.add %350, %362  : i64
    %364 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.add %345, %350  : i64
    %366 = llvm.add %365, %355  : i64
    %367 = llvm.add %366, %360  : i64
    %368 = llvm.getelementptr %364[%367] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %369 = llvm.load %368 : !llvm.ptr<i32>
    %370 = llvm.extractvalue %226[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.mlir.constant(4 : index) : i64
    %372 = llvm.mul %345, %371  : i64
    %373 = llvm.add %372, %363  : i64
    %374 = llvm.add %373, %355  : i64
    %375 = llvm.add %374, %360  : i64
    %376 = llvm.getelementptr %370[%375] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %369, %376 : !llvm.ptr<i32>
    %377 = llvm.add %360, %359  : i64
    llvm.br ^bb67(%377 : i64)
  ^bb69:  // pred: ^bb67
    %378 = llvm.add %355, %354  : i64
    llvm.br ^bb65(%378 : i64)
  ^bb70:  // pred: ^bb65
    %379 = llvm.add %350, %349  : i64
    llvm.br ^bb63(%379 : i64)
  ^bb71:  // pred: ^bb63
    %380 = llvm.add %345, %344  : i64
    llvm.br ^bb61(%380 : i64)
  ^bb72:  // pred: ^bb61
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    %383 = llvm.mlir.constant(5 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.mlir.constant(5 : index) : i64
    %387 = llvm.mlir.constant(5 : index) : i64
    %388 = llvm.mlir.null : !llvm.ptr<i32>
    %389 = llvm.getelementptr %388[%387] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %390 = llvm.ptrtoint %389 : !llvm.ptr<i32> to i64
    %391 = llvm.mlir.constant(16 : index) : i64
    %392 = llvm.add %390, %391  : i64
    %393 = llvm.call @malloc(%392) : (i64) -> !llvm.ptr<i8>
    %394 = llvm.bitcast %393 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %395 = llvm.ptrtoint %394 : !llvm.ptr<i32> to i64
    %396 = llvm.mlir.constant(1 : index) : i64
    %397 = llvm.sub %391, %396  : i64
    %398 = llvm.add %395, %397  : i64
    %399 = llvm.urem %398, %391  : i64
    %400 = llvm.sub %398, %399  : i64
    %401 = llvm.inttoptr %400 : i64 to !llvm.ptr<i32>
    %402 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %403 = llvm.insertvalue %394, %402[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.insertvalue %401, %403[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.insertvalue %405, %404[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.insertvalue %381, %406[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.insertvalue %382, %407[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.insertvalue %383, %408[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.insertvalue %384, %409[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.insertvalue %386, %410[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.insertvalue %383, %411[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.insertvalue %384, %412[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.insertvalue %385, %413[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%415 : i64)
  ^bb73(%418: i64):  // 2 preds: ^bb72, ^bb83
    %419 = llvm.icmp "slt" %418, %416 : i64
    llvm.cond_br %419, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %420 = llvm.mlir.constant(0 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%420 : i64)
  ^bb75(%423: i64):  // 2 preds: ^bb74, ^bb82
    %424 = llvm.icmp "slt" %423, %421 : i64
    llvm.cond_br %424, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %425 = llvm.mlir.constant(0 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%425 : i64)
  ^bb77(%428: i64):  // 2 preds: ^bb76, ^bb81
    %429 = llvm.icmp "slt" %428, %426 : i64
    llvm.cond_br %429, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %430 = llvm.mlir.constant(0 : index) : i64
    %431 = llvm.mlir.constant(1 : index) : i64
    %432 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%430 : i64)
  ^bb79(%433: i64):  // 2 preds: ^bb78, ^bb80
    %434 = llvm.icmp "slt" %433, %431 : i64
    llvm.cond_br %434, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %435 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.add %418, %423  : i64
    %437 = llvm.add %436, %428  : i64
    %438 = llvm.add %437, %433  : i64
    %439 = llvm.getelementptr %435[%438] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %440 = llvm.load %439 : !llvm.ptr<i32>
    %441 = llvm.extractvalue %414[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.mlir.constant(5 : index) : i64
    %443 = llvm.mul %418, %442  : i64
    %444 = llvm.mlir.constant(5 : index) : i64
    %445 = llvm.mul %423, %444  : i64
    %446 = llvm.add %443, %445  : i64
    %447 = llvm.add %446, %428  : i64
    %448 = llvm.add %447, %433  : i64
    %449 = llvm.getelementptr %441[%448] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %440, %449 : !llvm.ptr<i32>
    %450 = llvm.add %433, %432  : i64
    llvm.br ^bb79(%450 : i64)
  ^bb81:  // pred: ^bb79
    %451 = llvm.add %428, %427  : i64
    llvm.br ^bb77(%451 : i64)
  ^bb82:  // pred: ^bb77
    %452 = llvm.add %423, %422  : i64
    llvm.br ^bb75(%452 : i64)
  ^bb83:  // pred: ^bb75
    %453 = llvm.add %418, %417  : i64
    llvm.br ^bb73(%453 : i64)
  ^bb84:  // pred: ^bb73
    %454 = llvm.mlir.constant(0 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%454 : i64)
  ^bb85(%457: i64):  // 2 preds: ^bb84, ^bb95
    %458 = llvm.icmp "slt" %457, %455 : i64
    llvm.cond_br %458, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %459 = llvm.mlir.constant(0 : index) : i64
    %460 = llvm.mlir.constant(1 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%459 : i64)
  ^bb87(%462: i64):  // 2 preds: ^bb86, ^bb94
    %463 = llvm.icmp "slt" %462, %460 : i64
    llvm.cond_br %463, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %464 = llvm.mlir.constant(0 : index) : i64
    %465 = llvm.mlir.constant(1 : index) : i64
    %466 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%464 : i64)
  ^bb89(%467: i64):  // 2 preds: ^bb88, ^bb93
    %468 = llvm.icmp "slt" %467, %465 : i64
    llvm.cond_br %468, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %469 = llvm.mlir.constant(0 : index) : i64
    %470 = llvm.mlir.constant(1 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%469 : i64)
  ^bb91(%472: i64):  // 2 preds: ^bb90, ^bb92
    %473 = llvm.icmp "slt" %472, %470 : i64
    llvm.cond_br %473, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %474 = llvm.mlir.constant(1 : index) : i64
    %475 = llvm.add %467, %474  : i64
    %476 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.add %457, %462  : i64
    %478 = llvm.add %477, %467  : i64
    %479 = llvm.add %478, %472  : i64
    %480 = llvm.getelementptr %476[%479] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %481 = llvm.load %480 : !llvm.ptr<i32>
    %482 = llvm.extractvalue %414[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %483 = llvm.mlir.constant(5 : index) : i64
    %484 = llvm.mul %457, %483  : i64
    %485 = llvm.mlir.constant(5 : index) : i64
    %486 = llvm.mul %462, %485  : i64
    %487 = llvm.add %484, %486  : i64
    %488 = llvm.add %487, %475  : i64
    %489 = llvm.add %488, %472  : i64
    %490 = llvm.getelementptr %482[%489] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %481, %490 : !llvm.ptr<i32>
    %491 = llvm.add %472, %471  : i64
    llvm.br ^bb91(%491 : i64)
  ^bb93:  // pred: ^bb91
    %492 = llvm.add %467, %466  : i64
    llvm.br ^bb89(%492 : i64)
  ^bb94:  // pred: ^bb89
    %493 = llvm.add %462, %461  : i64
    llvm.br ^bb87(%493 : i64)
  ^bb95:  // pred: ^bb87
    %494 = llvm.add %457, %456  : i64
    llvm.br ^bb85(%494 : i64)
  ^bb96:  // pred: ^bb85
    %495 = llvm.mlir.constant(0 : index) : i64
    %496 = llvm.mlir.constant(1 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%495 : i64)
  ^bb97(%498: i64):  // 2 preds: ^bb96, ^bb107
    %499 = llvm.icmp "slt" %498, %496 : i64
    llvm.cond_br %499, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %500 = llvm.mlir.constant(0 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    %502 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%500 : i64)
  ^bb99(%503: i64):  // 2 preds: ^bb98, ^bb106
    %504 = llvm.icmp "slt" %503, %501 : i64
    llvm.cond_br %504, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %505 = llvm.mlir.constant(0 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%505 : i64)
  ^bb101(%508: i64):  // 2 preds: ^bb100, ^bb105
    %509 = llvm.icmp "slt" %508, %506 : i64
    llvm.cond_br %509, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %510 = llvm.mlir.constant(0 : index) : i64
    %511 = llvm.mlir.constant(1 : index) : i64
    %512 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%510 : i64)
  ^bb103(%513: i64):  // 2 preds: ^bb102, ^bb104
    %514 = llvm.icmp "slt" %513, %511 : i64
    llvm.cond_br %514, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %515 = llvm.mlir.constant(2 : index) : i64
    %516 = llvm.add %508, %515  : i64
    %517 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.add %498, %503  : i64
    %519 = llvm.add %518, %508  : i64
    %520 = llvm.add %519, %513  : i64
    %521 = llvm.getelementptr %517[%520] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %522 = llvm.load %521 : !llvm.ptr<i32>
    %523 = llvm.extractvalue %414[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %524 = llvm.mlir.constant(5 : index) : i64
    %525 = llvm.mul %498, %524  : i64
    %526 = llvm.mlir.constant(5 : index) : i64
    %527 = llvm.mul %503, %526  : i64
    %528 = llvm.add %525, %527  : i64
    %529 = llvm.add %528, %516  : i64
    %530 = llvm.add %529, %513  : i64
    %531 = llvm.getelementptr %523[%530] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %522, %531 : !llvm.ptr<i32>
    %532 = llvm.add %513, %512  : i64
    llvm.br ^bb103(%532 : i64)
  ^bb105:  // pred: ^bb103
    %533 = llvm.add %508, %507  : i64
    llvm.br ^bb101(%533 : i64)
  ^bb106:  // pred: ^bb101
    %534 = llvm.add %503, %502  : i64
    llvm.br ^bb99(%534 : i64)
  ^bb107:  // pred: ^bb99
    %535 = llvm.add %498, %497  : i64
    llvm.br ^bb97(%535 : i64)
  ^bb108:  // pred: ^bb97
    %536 = llvm.mlir.constant(0 : index) : i64
    %537 = llvm.mlir.constant(1 : index) : i64
    %538 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb109(%536 : i64)
  ^bb109(%539: i64):  // 2 preds: ^bb108, ^bb119
    %540 = llvm.icmp "slt" %539, %537 : i64
    llvm.cond_br %540, ^bb110, ^bb120
  ^bb110:  // pred: ^bb109
    %541 = llvm.mlir.constant(0 : index) : i64
    %542 = llvm.mlir.constant(1 : index) : i64
    %543 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb111(%541 : i64)
  ^bb111(%544: i64):  // 2 preds: ^bb110, ^bb118
    %545 = llvm.icmp "slt" %544, %542 : i64
    llvm.cond_br %545, ^bb112, ^bb119
  ^bb112:  // pred: ^bb111
    %546 = llvm.mlir.constant(0 : index) : i64
    %547 = llvm.mlir.constant(1 : index) : i64
    %548 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb113(%546 : i64)
  ^bb113(%549: i64):  // 2 preds: ^bb112, ^bb117
    %550 = llvm.icmp "slt" %549, %547 : i64
    llvm.cond_br %550, ^bb114, ^bb118
  ^bb114:  // pred: ^bb113
    %551 = llvm.mlir.constant(0 : index) : i64
    %552 = llvm.mlir.constant(1 : index) : i64
    %553 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb115(%551 : i64)
  ^bb115(%554: i64):  // 2 preds: ^bb114, ^bb116
    %555 = llvm.icmp "slt" %554, %552 : i64
    llvm.cond_br %555, ^bb116, ^bb117
  ^bb116:  // pred: ^bb115
    %556 = llvm.mlir.constant(3 : index) : i64
    %557 = llvm.add %549, %556  : i64
    %558 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %559 = llvm.add %539, %544  : i64
    %560 = llvm.add %559, %549  : i64
    %561 = llvm.add %560, %554  : i64
    %562 = llvm.getelementptr %558[%561] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %563 = llvm.load %562 : !llvm.ptr<i32>
    %564 = llvm.extractvalue %414[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %565 = llvm.mlir.constant(5 : index) : i64
    %566 = llvm.mul %539, %565  : i64
    %567 = llvm.mlir.constant(5 : index) : i64
    %568 = llvm.mul %544, %567  : i64
    %569 = llvm.add %566, %568  : i64
    %570 = llvm.add %569, %557  : i64
    %571 = llvm.add %570, %554  : i64
    %572 = llvm.getelementptr %564[%571] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %563, %572 : !llvm.ptr<i32>
    %573 = llvm.add %554, %553  : i64
    llvm.br ^bb115(%573 : i64)
  ^bb117:  // pred: ^bb115
    %574 = llvm.add %549, %548  : i64
    llvm.br ^bb113(%574 : i64)
  ^bb118:  // pred: ^bb113
    %575 = llvm.add %544, %543  : i64
    llvm.br ^bb111(%575 : i64)
  ^bb119:  // pred: ^bb111
    %576 = llvm.add %539, %538  : i64
    llvm.br ^bb109(%576 : i64)
  ^bb120:  // pred: ^bb109
    %577 = llvm.mlir.constant(0 : index) : i64
    %578 = llvm.mlir.constant(1 : index) : i64
    %579 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb121(%577 : i64)
  ^bb121(%580: i64):  // 2 preds: ^bb120, ^bb131
    %581 = llvm.icmp "slt" %580, %578 : i64
    llvm.cond_br %581, ^bb122, ^bb132
  ^bb122:  // pred: ^bb121
    %582 = llvm.mlir.constant(0 : index) : i64
    %583 = llvm.mlir.constant(1 : index) : i64
    %584 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb123(%582 : i64)
  ^bb123(%585: i64):  // 2 preds: ^bb122, ^bb130
    %586 = llvm.icmp "slt" %585, %583 : i64
    llvm.cond_br %586, ^bb124, ^bb131
  ^bb124:  // pred: ^bb123
    %587 = llvm.mlir.constant(0 : index) : i64
    %588 = llvm.mlir.constant(1 : index) : i64
    %589 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb125(%587 : i64)
  ^bb125(%590: i64):  // 2 preds: ^bb124, ^bb129
    %591 = llvm.icmp "slt" %590, %588 : i64
    llvm.cond_br %591, ^bb126, ^bb130
  ^bb126:  // pred: ^bb125
    %592 = llvm.mlir.constant(0 : index) : i64
    %593 = llvm.mlir.constant(1 : index) : i64
    %594 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb127(%592 : i64)
  ^bb127(%595: i64):  // 2 preds: ^bb126, ^bb128
    %596 = llvm.icmp "slt" %595, %593 : i64
    llvm.cond_br %596, ^bb128, ^bb129
  ^bb128:  // pred: ^bb127
    %597 = llvm.mlir.constant(4 : index) : i64
    %598 = llvm.add %590, %597  : i64
    %599 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %600 = llvm.add %580, %585  : i64
    %601 = llvm.add %600, %590  : i64
    %602 = llvm.add %601, %595  : i64
    %603 = llvm.getelementptr %599[%602] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %604 = llvm.load %603 : !llvm.ptr<i32>
    %605 = llvm.extractvalue %414[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %606 = llvm.mlir.constant(5 : index) : i64
    %607 = llvm.mul %580, %606  : i64
    %608 = llvm.mlir.constant(5 : index) : i64
    %609 = llvm.mul %585, %608  : i64
    %610 = llvm.add %607, %609  : i64
    %611 = llvm.add %610, %598  : i64
    %612 = llvm.add %611, %595  : i64
    %613 = llvm.getelementptr %605[%612] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %604, %613 : !llvm.ptr<i32>
    %614 = llvm.add %595, %594  : i64
    llvm.br ^bb127(%614 : i64)
  ^bb129:  // pred: ^bb127
    %615 = llvm.add %590, %589  : i64
    llvm.br ^bb125(%615 : i64)
  ^bb130:  // pred: ^bb125
    %616 = llvm.add %585, %584  : i64
    llvm.br ^bb123(%616 : i64)
  ^bb131:  // pred: ^bb123
    %617 = llvm.add %580, %579  : i64
    llvm.br ^bb121(%617 : i64)
  ^bb132:  // pred: ^bb121
    %618 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %619 = llvm.insertvalue %90, %618[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %620 = llvm.insertvalue %158, %619[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %621 = llvm.insertvalue %226, %620[2] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %622 = llvm.insertvalue %414, %621[3] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %622 : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0", "v2_0", "v1_0"], llvm.emit_c_interface, output_names = ["v9_0", "v8_0", "v3_0", "v6_0"]} {
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
    %24 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %25 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.extractvalue %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.extractvalue %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.extractvalue %24[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.extractvalue %24[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.extractvalue %24[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.extractvalue %24[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.extractvalue %24[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %36, %arg0 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %88 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %89 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %90 = llvm.call @omTensorGetDataPtr(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %92 = llvm.insertvalue %91, %89[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %91, %92[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.insertvalue %94, %93[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.call @omTensorGetShape(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %97 = llvm.call @omTensorGetStrides(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %98 = llvm.mlir.constant(0 : i64) : i64
    %99 = llvm.getelementptr %96[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %95[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %97[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.getelementptr %96[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %107 = llvm.load %106 : !llvm.ptr<i64>
    %108 = llvm.insertvalue %107, %104[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %97[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %110 = llvm.load %109 : !llvm.ptr<i64>
    %111 = llvm.insertvalue %110, %108[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.getelementptr %96[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %114 = llvm.load %113 : !llvm.ptr<i64>
    %115 = llvm.insertvalue %114, %111[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %97[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %117 = llvm.load %116 : !llvm.ptr<i64>
    %118 = llvm.insertvalue %117, %115[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(3 : i64) : i64
    %120 = llvm.getelementptr %96[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %121 = llvm.load %120 : !llvm.ptr<i64>
    %122 = llvm.insertvalue %121, %118[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %97[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %124 = llvm.load %123 : !llvm.ptr<i64>
    %125 = llvm.insertvalue %124, %122[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %125, %88 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88) : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %126 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %127 = llvm.extractvalue %126[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %128 = llvm.extractvalue %126[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %129 = llvm.extractvalue %126[2] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %130 = llvm.extractvalue %126[3] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %131 = llvm.mlir.constant(4 : i64) : i64
    %132 = llvm.mlir.constant(32 : i64) : i64
    %133 = llvm.call @malloc(%132) : (i64) -> !llvm.ptr<i8>
    %134 = llvm.bitcast %133 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %135 = llvm.mlir.constant(4 : i64) : i64
    %136 = llvm.call @omTensorCreateUntyped(%135) : (i64) -> !llvm.ptr<i8>
    %137 = llvm.mlir.constant(1 : i64) : i64
    %138 = llvm.extractvalue %127[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.bitcast %138 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %140 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.bitcast %140 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%136, %137, %139, %141) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %142 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%136, %142) : (!llvm.ptr<i8>, i64) -> ()
    %143 = llvm.call @omTensorGetShape(%136) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %144 = llvm.call @omTensorGetStrides(%136) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %145 = llvm.mlir.constant(0 : i64) : i64
    %146 = llvm.extractvalue %127[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.getelementptr %143[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.extractvalue %127[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.getelementptr %144[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %148, %149 : !llvm.ptr<i64>
    %150 = llvm.mlir.constant(1 : i64) : i64
    %151 = llvm.extractvalue %127[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.getelementptr %143[%150] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.extractvalue %127[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.getelementptr %144[%150] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %153, %154 : !llvm.ptr<i64>
    %155 = llvm.mlir.constant(2 : i64) : i64
    %156 = llvm.extractvalue %127[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.getelementptr %143[%155] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %156, %157 : !llvm.ptr<i64>
    %158 = llvm.extractvalue %127[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.getelementptr %144[%155] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %158, %159 : !llvm.ptr<i64>
    %160 = llvm.mlir.constant(3 : i64) : i64
    %161 = llvm.extractvalue %127[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.getelementptr %143[%160] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %161, %162 : !llvm.ptr<i64>
    %163 = llvm.extractvalue %127[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.getelementptr %144[%160] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %163, %164 : !llvm.ptr<i64>
    %165 = llvm.mlir.constant(0 : i64) : i64
    %166 = llvm.getelementptr %134[%165] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %136, %166 : !llvm.ptr<ptr<i8>>
    %167 = llvm.mlir.constant(4 : i64) : i64
    %168 = llvm.call @omTensorCreateUntyped(%167) : (i64) -> !llvm.ptr<i8>
    %169 = llvm.mlir.constant(1 : i64) : i64
    %170 = llvm.extractvalue %128[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.bitcast %170 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %172 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.bitcast %172 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%168, %169, %171, %173) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %174 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%168, %174) : (!llvm.ptr<i8>, i64) -> ()
    %175 = llvm.call @omTensorGetShape(%168) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %176 = llvm.call @omTensorGetStrides(%168) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %177 = llvm.mlir.constant(0 : i64) : i64
    %178 = llvm.extractvalue %128[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.getelementptr %175[%177] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %178, %179 : !llvm.ptr<i64>
    %180 = llvm.extractvalue %128[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.getelementptr %176[%177] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %180, %181 : !llvm.ptr<i64>
    %182 = llvm.mlir.constant(1 : i64) : i64
    %183 = llvm.extractvalue %128[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.getelementptr %175[%182] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %183, %184 : !llvm.ptr<i64>
    %185 = llvm.extractvalue %128[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.getelementptr %176[%182] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %185, %186 : !llvm.ptr<i64>
    %187 = llvm.mlir.constant(2 : i64) : i64
    %188 = llvm.extractvalue %128[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.getelementptr %175[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %188, %189 : !llvm.ptr<i64>
    %190 = llvm.extractvalue %128[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.getelementptr %176[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %190, %191 : !llvm.ptr<i64>
    %192 = llvm.mlir.constant(3 : i64) : i64
    %193 = llvm.extractvalue %128[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.getelementptr %175[%192] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %193, %194 : !llvm.ptr<i64>
    %195 = llvm.extractvalue %128[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.getelementptr %176[%192] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %195, %196 : !llvm.ptr<i64>
    %197 = llvm.mlir.constant(1 : i64) : i64
    %198 = llvm.getelementptr %134[%197] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %168, %198 : !llvm.ptr<ptr<i8>>
    %199 = llvm.mlir.constant(4 : i64) : i64
    %200 = llvm.call @omTensorCreateUntyped(%199) : (i64) -> !llvm.ptr<i8>
    %201 = llvm.mlir.constant(1 : i64) : i64
    %202 = llvm.extractvalue %129[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.bitcast %202 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %204 = llvm.extractvalue %129[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.bitcast %204 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%200, %201, %203, %205) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %206 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%200, %206) : (!llvm.ptr<i8>, i64) -> ()
    %207 = llvm.call @omTensorGetShape(%200) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %208 = llvm.call @omTensorGetStrides(%200) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %209 = llvm.mlir.constant(0 : i64) : i64
    %210 = llvm.extractvalue %129[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.getelementptr %207[%209] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %210, %211 : !llvm.ptr<i64>
    %212 = llvm.extractvalue %129[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.getelementptr %208[%209] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %212, %213 : !llvm.ptr<i64>
    %214 = llvm.mlir.constant(1 : i64) : i64
    %215 = llvm.extractvalue %129[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.getelementptr %207[%214] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %215, %216 : !llvm.ptr<i64>
    %217 = llvm.extractvalue %129[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.getelementptr %208[%214] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %217, %218 : !llvm.ptr<i64>
    %219 = llvm.mlir.constant(2 : i64) : i64
    %220 = llvm.extractvalue %129[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.getelementptr %207[%219] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %220, %221 : !llvm.ptr<i64>
    %222 = llvm.extractvalue %129[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.getelementptr %208[%219] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %222, %223 : !llvm.ptr<i64>
    %224 = llvm.mlir.constant(3 : i64) : i64
    %225 = llvm.extractvalue %129[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.getelementptr %207[%224] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %225, %226 : !llvm.ptr<i64>
    %227 = llvm.extractvalue %129[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.getelementptr %208[%224] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %227, %228 : !llvm.ptr<i64>
    %229 = llvm.mlir.constant(2 : i64) : i64
    %230 = llvm.getelementptr %134[%229] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %200, %230 : !llvm.ptr<ptr<i8>>
    %231 = llvm.mlir.constant(4 : i64) : i64
    %232 = llvm.call @omTensorCreateUntyped(%231) : (i64) -> !llvm.ptr<i8>
    %233 = llvm.mlir.constant(1 : i64) : i64
    %234 = llvm.extractvalue %130[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.bitcast %234 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %236 = llvm.extractvalue %130[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.bitcast %236 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%232, %233, %235, %237) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %238 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%232, %238) : (!llvm.ptr<i8>, i64) -> ()
    %239 = llvm.call @omTensorGetShape(%232) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %240 = llvm.call @omTensorGetStrides(%232) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %241 = llvm.mlir.constant(0 : i64) : i64
    %242 = llvm.extractvalue %130[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.getelementptr %239[%241] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %242, %243 : !llvm.ptr<i64>
    %244 = llvm.extractvalue %130[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.getelementptr %240[%241] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %244, %245 : !llvm.ptr<i64>
    %246 = llvm.mlir.constant(1 : i64) : i64
    %247 = llvm.extractvalue %130[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.getelementptr %239[%246] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %247, %248 : !llvm.ptr<i64>
    %249 = llvm.extractvalue %130[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.getelementptr %240[%246] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %249, %250 : !llvm.ptr<i64>
    %251 = llvm.mlir.constant(2 : i64) : i64
    %252 = llvm.extractvalue %130[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.getelementptr %239[%251] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %252, %253 : !llvm.ptr<i64>
    %254 = llvm.extractvalue %130[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.getelementptr %240[%251] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %254, %255 : !llvm.ptr<i64>
    %256 = llvm.mlir.constant(3 : i64) : i64
    %257 = llvm.extractvalue %130[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.getelementptr %239[%256] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %257, %258 : !llvm.ptr<i64>
    %259 = llvm.extractvalue %130[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.getelementptr %240[%256] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %259, %260 : !llvm.ptr<i64>
    %261 = llvm.mlir.constant(3 : i64) : i64
    %262 = llvm.getelementptr %134[%261] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %232, %262 : !llvm.ptr<ptr<i8>>
    %263 = llvm.call @omTensorListCreate(%134, %131, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %263 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<212 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<212 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<281 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<281 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

