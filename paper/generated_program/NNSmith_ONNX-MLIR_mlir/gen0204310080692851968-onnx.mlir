module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [4 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [4 , 1 , 2 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<5> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v8_0", "v4_0", "v2_0"], llvm.emit_c_interface, output_names = ["v6_0", "v1_0"]} {
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
    %36 = llvm.mlir.constant(0 : i32) : i32
    %37 = llvm.mlir.constant(0 : i64) : i64
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %42 = llvm.insertvalue %40, %41[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.insertvalue %44, %43[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(2 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.mlir.constant(2 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.mlir.constant(2 : index) : i64
    %68 = llvm.mlir.constant(4 : index) : i64
    %69 = llvm.mlir.null : !llvm.ptr<i32>
    %70 = llvm.getelementptr %69[%68] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %71 = llvm.ptrtoint %70 : !llvm.ptr<i32> to i64
    %72 = llvm.mlir.constant(16 : index) : i64
    %73 = llvm.add %71, %72  : i64
    %74 = llvm.call @malloc(%73) : (i64) -> !llvm.ptr<i8>
    %75 = llvm.bitcast %74 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %76 = llvm.ptrtoint %75 : !llvm.ptr<i32> to i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.sub %72, %77  : i64
    %79 = llvm.add %76, %78  : i64
    %80 = llvm.urem %79, %72  : i64
    %81 = llvm.sub %79, %80  : i64
    %82 = llvm.inttoptr %81 : i64 to !llvm.ptr<i32>
    %83 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %84 = llvm.insertvalue %75, %83[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.insertvalue %82, %84[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.insertvalue %86, %85[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.insertvalue %62, %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.insertvalue %63, %88[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.insertvalue %64, %89[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.insertvalue %65, %90[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.insertvalue %67, %91[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %64, %92[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %65, %93[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %66, %94[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.mlir.constant(2 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%96 : i64)
  ^bb1(%99: i64):  // 2 preds: ^bb0, ^bb11
    %100 = llvm.icmp "slt" %99, %97 : i64
    llvm.cond_br %100, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%101 : i64)
  ^bb3(%104: i64):  // 2 preds: ^bb2, ^bb10
    %105 = llvm.icmp "slt" %104, %102 : i64
    llvm.cond_br %105, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.mlir.constant(2 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%106 : i64)
  ^bb5(%109: i64):  // 2 preds: ^bb4, ^bb9
    %110 = llvm.icmp "slt" %109, %107 : i64
    llvm.cond_br %110, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%111 : i64)
  ^bb7(%114: i64):  // 2 preds: ^bb6, ^bb8
    %115 = llvm.icmp "slt" %114, %112 : i64
    llvm.cond_br %115, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %116 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.add %38, %104  : i64
    %118 = llvm.add %117, %38  : i64
    %119 = llvm.add %118, %114  : i64
    %120 = llvm.getelementptr %116[%119] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %121 = llvm.load %120 : !llvm.ptr<i32>
    %122 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.mlir.constant(2 : index) : i64
    %124 = llvm.mul %99, %123  : i64
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mul %104, %125  : i64
    %127 = llvm.add %124, %126  : i64
    %128 = llvm.add %127, %109  : i64
    %129 = llvm.add %128, %114  : i64
    %130 = llvm.getelementptr %122[%129] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %131 = llvm.load %130 : !llvm.ptr<i32>
    %132 = llvm.sub %121, %131  : i32
    %133 = llvm.extractvalue %95[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mul %99, %134  : i64
    %136 = llvm.mlir.constant(2 : index) : i64
    %137 = llvm.mul %104, %136  : i64
    %138 = llvm.add %135, %137  : i64
    %139 = llvm.add %138, %109  : i64
    %140 = llvm.add %139, %114  : i64
    %141 = llvm.getelementptr %133[%140] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %132, %141 : !llvm.ptr<i32>
    %142 = llvm.add %114, %113  : i64
    llvm.br ^bb7(%142 : i64)
  ^bb9:  // pred: ^bb7
    %143 = llvm.add %109, %108  : i64
    llvm.br ^bb5(%143 : i64)
  ^bb10:  // pred: ^bb5
    %144 = llvm.add %104, %103  : i64
    llvm.br ^bb3(%144 : i64)
  ^bb11:  // pred: ^bb3
    %145 = llvm.add %99, %98  : i64
    llvm.br ^bb1(%145 : i64)
  ^bb12:  // pred: ^bb1
    %146 = llvm.mlir.constant(4 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.constant(2 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.mlir.constant(2 : index) : i64
    %152 = llvm.mlir.constant(8 : index) : i64
    %153 = llvm.mlir.null : !llvm.ptr<i32>
    %154 = llvm.getelementptr %153[%152] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %155 = llvm.ptrtoint %154 : !llvm.ptr<i32> to i64
    %156 = llvm.mlir.constant(16 : index) : i64
    %157 = llvm.add %155, %156  : i64
    %158 = llvm.call @malloc(%157) : (i64) -> !llvm.ptr<i8>
    %159 = llvm.bitcast %158 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %160 = llvm.ptrtoint %159 : !llvm.ptr<i32> to i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.sub %156, %161  : i64
    %163 = llvm.add %160, %162  : i64
    %164 = llvm.urem %163, %156  : i64
    %165 = llvm.sub %163, %164  : i64
    %166 = llvm.inttoptr %165 : i64 to !llvm.ptr<i32>
    %167 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %168 = llvm.insertvalue %159, %167[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.insertvalue %166, %168[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.insertvalue %170, %169[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.insertvalue %146, %171[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.insertvalue %147, %172[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.insertvalue %148, %173[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.insertvalue %149, %174[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.insertvalue %151, %175[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.insertvalue %148, %176[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.insertvalue %149, %177[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.insertvalue %150, %178[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%180 : i64)
  ^bb13(%183: i64):  // 2 preds: ^bb12, ^bb23
    %184 = llvm.icmp "slt" %183, %181 : i64
    llvm.cond_br %184, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%185 : i64)
  ^bb15(%188: i64):  // 2 preds: ^bb14, ^bb22
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%190 : i64)
  ^bb17(%193: i64):  // 2 preds: ^bb16, ^bb21
    %194 = llvm.icmp "slt" %193, %191 : i64
    llvm.cond_br %194, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%195 : i64)
  ^bb19(%198: i64):  // 2 preds: ^bb18, ^bb20
    %199 = llvm.icmp "slt" %198, %196 : i64
    llvm.cond_br %199, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %200 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.mlir.constant(2 : index) : i64
    %202 = llvm.mul %183, %201  : i64
    %203 = llvm.mlir.constant(2 : index) : i64
    %204 = llvm.mul %188, %203  : i64
    %205 = llvm.add %202, %204  : i64
    %206 = llvm.add %205, %193  : i64
    %207 = llvm.add %206, %198  : i64
    %208 = llvm.getelementptr %200[%207] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %209 = llvm.load %208 : !llvm.ptr<i32>
    %210 = llvm.extractvalue %179[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.mlir.constant(2 : index) : i64
    %212 = llvm.mul %183, %211  : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mul %188, %213  : i64
    %215 = llvm.add %212, %214  : i64
    %216 = llvm.add %215, %193  : i64
    %217 = llvm.add %216, %198  : i64
    %218 = llvm.getelementptr %210[%217] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %209, %218 : !llvm.ptr<i32>
    %219 = llvm.add %198, %197  : i64
    llvm.br ^bb19(%219 : i64)
  ^bb21:  // pred: ^bb19
    %220 = llvm.add %193, %192  : i64
    llvm.br ^bb17(%220 : i64)
  ^bb22:  // pred: ^bb17
    %221 = llvm.add %188, %187  : i64
    llvm.br ^bb15(%221 : i64)
  ^bb23:  // pred: ^bb15
    %222 = llvm.add %183, %182  : i64
    llvm.br ^bb13(%222 : i64)
  ^bb24:  // pred: ^bb13
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.mlir.constant(2 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%223 : i64)
  ^bb25(%226: i64):  // 2 preds: ^bb24, ^bb35
    %227 = llvm.icmp "slt" %226, %224 : i64
    llvm.cond_br %227, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %228 = llvm.mlir.constant(0 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%228 : i64)
  ^bb27(%231: i64):  // 2 preds: ^bb26, ^bb34
    %232 = llvm.icmp "slt" %231, %229 : i64
    llvm.cond_br %232, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.mlir.constant(2 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%233 : i64)
  ^bb29(%236: i64):  // 2 preds: ^bb28, ^bb33
    %237 = llvm.icmp "slt" %236, %234 : i64
    llvm.cond_br %237, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%238 : i64)
  ^bb31(%241: i64):  // 2 preds: ^bb30, ^bb32
    %242 = llvm.icmp "slt" %241, %239 : i64
    llvm.cond_br %242, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.add %226, %243  : i64
    %245 = llvm.extractvalue %95[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.mlir.constant(2 : index) : i64
    %247 = llvm.mul %226, %246  : i64
    %248 = llvm.mlir.constant(2 : index) : i64
    %249 = llvm.mul %231, %248  : i64
    %250 = llvm.add %247, %249  : i64
    %251 = llvm.add %250, %236  : i64
    %252 = llvm.add %251, %241  : i64
    %253 = llvm.getelementptr %245[%252] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %254 = llvm.load %253 : !llvm.ptr<i32>
    %255 = llvm.extractvalue %179[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.mlir.constant(2 : index) : i64
    %257 = llvm.mul %244, %256  : i64
    %258 = llvm.mlir.constant(2 : index) : i64
    %259 = llvm.mul %231, %258  : i64
    %260 = llvm.add %257, %259  : i64
    %261 = llvm.add %260, %236  : i64
    %262 = llvm.add %261, %241  : i64
    %263 = llvm.getelementptr %255[%262] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %254, %263 : !llvm.ptr<i32>
    %264 = llvm.add %241, %240  : i64
    llvm.br ^bb31(%264 : i64)
  ^bb33:  // pred: ^bb31
    %265 = llvm.add %236, %235  : i64
    llvm.br ^bb29(%265 : i64)
  ^bb34:  // pred: ^bb29
    %266 = llvm.add %231, %230  : i64
    llvm.br ^bb27(%266 : i64)
  ^bb35:  // pred: ^bb27
    %267 = llvm.add %226, %225  : i64
    llvm.br ^bb25(%267 : i64)
  ^bb36:  // pred: ^bb25
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%268 : i64)
  ^bb37(%271: i64):  // 2 preds: ^bb36, ^bb47
    %272 = llvm.icmp "slt" %271, %269 : i64
    llvm.cond_br %272, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%273 : i64)
  ^bb39(%276: i64):  // 2 preds: ^bb38, ^bb46
    %277 = llvm.icmp "slt" %276, %274 : i64
    llvm.cond_br %277, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(2 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%278 : i64)
  ^bb41(%281: i64):  // 2 preds: ^bb40, ^bb45
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%283 : i64)
  ^bb43(%286: i64):  // 2 preds: ^bb42, ^bb44
    %287 = llvm.icmp "slt" %286, %284 : i64
    llvm.cond_br %287, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %288 = llvm.mlir.constant(3 : index) : i64
    %289 = llvm.add %271, %288  : i64
    %290 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.mlir.constant(2 : index) : i64
    %292 = llvm.mul %271, %291  : i64
    %293 = llvm.mlir.constant(2 : index) : i64
    %294 = llvm.mul %276, %293  : i64
    %295 = llvm.add %292, %294  : i64
    %296 = llvm.add %295, %281  : i64
    %297 = llvm.add %296, %286  : i64
    %298 = llvm.getelementptr %290[%297] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %299 = llvm.load %298 : !llvm.ptr<i32>
    %300 = llvm.extractvalue %179[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.mlir.constant(2 : index) : i64
    %302 = llvm.mul %289, %301  : i64
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mul %276, %303  : i64
    %305 = llvm.add %302, %304  : i64
    %306 = llvm.add %305, %281  : i64
    %307 = llvm.add %306, %286  : i64
    %308 = llvm.getelementptr %300[%307] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %299, %308 : !llvm.ptr<i32>
    %309 = llvm.add %286, %285  : i64
    llvm.br ^bb43(%309 : i64)
  ^bb45:  // pred: ^bb43
    %310 = llvm.add %281, %280  : i64
    llvm.br ^bb41(%310 : i64)
  ^bb46:  // pred: ^bb41
    %311 = llvm.add %276, %275  : i64
    llvm.br ^bb39(%311 : i64)
  ^bb47:  // pred: ^bb39
    %312 = llvm.add %271, %270  : i64
    llvm.br ^bb37(%312 : i64)
  ^bb48:  // pred: ^bb37
    %313 = llvm.mlir.constant(4 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.constant(2 : index) : i64
    %319 = llvm.mlir.constant(8 : index) : i64
    %320 = llvm.mlir.null : !llvm.ptr<i64>
    %321 = llvm.getelementptr %320[%319] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %322 = llvm.ptrtoint %321 : !llvm.ptr<i64> to i64
    %323 = llvm.mlir.constant(16 : index) : i64
    %324 = llvm.add %322, %323  : i64
    %325 = llvm.call @malloc(%324) : (i64) -> !llvm.ptr<i8>
    %326 = llvm.bitcast %325 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %327 = llvm.ptrtoint %326 : !llvm.ptr<i64> to i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.sub %323, %328  : i64
    %330 = llvm.add %327, %329  : i64
    %331 = llvm.urem %330, %323  : i64
    %332 = llvm.sub %330, %331  : i64
    %333 = llvm.inttoptr %332 : i64 to !llvm.ptr<i64>
    %334 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %335 = llvm.insertvalue %326, %334[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.insertvalue %333, %335[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.insertvalue %337, %336[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.insertvalue %313, %338[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.insertvalue %314, %339[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.insertvalue %315, %340[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.insertvalue %316, %341[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.insertvalue %318, %342[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.insertvalue %315, %343[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %316, %344[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.insertvalue %317, %345[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.mlir.constant(4 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%347 : i64)
  ^bb49(%350: i64):  // 2 preds: ^bb48, ^bb59
    %351 = llvm.icmp "slt" %350, %348 : i64
    llvm.cond_br %351, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%352 : i64)
  ^bb51(%355: i64):  // 2 preds: ^bb50, ^bb58
    %356 = llvm.icmp "slt" %355, %353 : i64
    llvm.cond_br %356, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %357 = llvm.mlir.constant(0 : index) : i64
    %358 = llvm.mlir.constant(2 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%357 : i64)
  ^bb53(%360: i64):  // 2 preds: ^bb52, ^bb57
    %361 = llvm.icmp "slt" %360, %358 : i64
    llvm.cond_br %361, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%362 : i64)
  ^bb55(%365: i64):  // 2 preds: ^bb54, ^bb56
    %366 = llvm.icmp "slt" %365, %363 : i64
    llvm.cond_br %366, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %367 = llvm.extractvalue %179[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.mlir.constant(2 : index) : i64
    %369 = llvm.mul %350, %368  : i64
    %370 = llvm.mlir.constant(2 : index) : i64
    %371 = llvm.mul %355, %370  : i64
    %372 = llvm.add %369, %371  : i64
    %373 = llvm.add %372, %360  : i64
    %374 = llvm.add %373, %365  : i64
    %375 = llvm.getelementptr %367[%374] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %376 = llvm.load %375 : !llvm.ptr<i32>
    %377 = llvm.sext %376 : i32 to i64
    %378 = llvm.extractvalue %346[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.mlir.constant(2 : index) : i64
    %380 = llvm.mul %350, %379  : i64
    %381 = llvm.mlir.constant(2 : index) : i64
    %382 = llvm.mul %355, %381  : i64
    %383 = llvm.add %380, %382  : i64
    %384 = llvm.add %383, %360  : i64
    %385 = llvm.add %384, %365  : i64
    %386 = llvm.getelementptr %378[%385] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %377, %386 : !llvm.ptr<i64>
    %387 = llvm.add %365, %364  : i64
    llvm.br ^bb55(%387 : i64)
  ^bb57:  // pred: ^bb55
    %388 = llvm.add %360, %359  : i64
    llvm.br ^bb53(%388 : i64)
  ^bb58:  // pred: ^bb53
    %389 = llvm.add %355, %354  : i64
    llvm.br ^bb51(%389 : i64)
  ^bb59:  // pred: ^bb51
    %390 = llvm.add %350, %349  : i64
    llvm.br ^bb49(%390 : i64)
  ^bb60:  // pred: ^bb49
    %391 = llvm.mlir.constant(4 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.mlir.null : !llvm.ptr<i64>
    %396 = llvm.getelementptr %395[%391] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %397 = llvm.ptrtoint %396 : !llvm.ptr<i64> to i64
    %398 = llvm.mlir.constant(16 : index) : i64
    %399 = llvm.add %397, %398  : i64
    %400 = llvm.call @malloc(%399) : (i64) -> !llvm.ptr<i8>
    %401 = llvm.bitcast %400 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %402 = llvm.ptrtoint %401 : !llvm.ptr<i64> to i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.sub %398, %403  : i64
    %405 = llvm.add %402, %404  : i64
    %406 = llvm.urem %405, %398  : i64
    %407 = llvm.sub %405, %406  : i64
    %408 = llvm.inttoptr %407 : i64 to !llvm.ptr<i64>
    %409 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %410 = llvm.insertvalue %401, %409[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %411 = llvm.insertvalue %408, %410[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %412 = llvm.mlir.constant(0 : index) : i64
    %413 = llvm.insertvalue %412, %411[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %414 = llvm.insertvalue %391, %413[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %415 = llvm.insertvalue %392, %414[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %416 = llvm.insertvalue %393, %415[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %417 = llvm.insertvalue %392, %416[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %418 = llvm.insertvalue %393, %417[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %419 = llvm.insertvalue %394, %418[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %420 = llvm.mlir.constant(0 : index) : i64
    %421 = llvm.mlir.constant(4 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%420 : i64)
  ^bb61(%423: i64):  // 2 preds: ^bb60, ^bb68
    %424 = llvm.icmp "slt" %423, %421 : i64
    llvm.cond_br %424, ^bb62, ^bb69
  ^bb62:  // pred: ^bb61
    %425 = llvm.mlir.constant(0 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%425 : i64)
  ^bb63(%428: i64):  // 2 preds: ^bb62, ^bb67
    %429 = llvm.icmp "slt" %428, %426 : i64
    llvm.cond_br %429, ^bb64, ^bb68
  ^bb64:  // pred: ^bb63
    %430 = llvm.mlir.constant(0 : index) : i64
    %431 = llvm.mlir.constant(1 : index) : i64
    %432 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%430 : i64)
  ^bb65(%433: i64):  // 2 preds: ^bb64, ^bb66
    %434 = llvm.icmp "slt" %433, %431 : i64
    llvm.cond_br %434, ^bb66, ^bb67
  ^bb66:  // pred: ^bb65
    %435 = llvm.extractvalue %419[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %436 = llvm.add %423, %428  : i64
    %437 = llvm.add %436, %433  : i64
    %438 = llvm.getelementptr %435[%437] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %37, %438 : !llvm.ptr<i64>
    %439 = llvm.add %433, %432  : i64
    llvm.br ^bb65(%439 : i64)
  ^bb67:  // pred: ^bb65
    %440 = llvm.add %428, %427  : i64
    llvm.br ^bb63(%440 : i64)
  ^bb68:  // pred: ^bb63
    %441 = llvm.add %423, %422  : i64
    llvm.br ^bb61(%441 : i64)
  ^bb69:  // pred: ^bb61
    %442 = llvm.mlir.constant(0 : index) : i64
    %443 = llvm.mlir.constant(4 : index) : i64
    %444 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%442 : i64)
  ^bb70(%445: i64):  // 2 preds: ^bb69, ^bb80
    %446 = llvm.icmp "slt" %445, %443 : i64
    llvm.cond_br %446, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %447 = llvm.mlir.constant(0 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%447 : i64)
  ^bb72(%450: i64):  // 2 preds: ^bb71, ^bb79
    %451 = llvm.icmp "slt" %450, %448 : i64
    llvm.cond_br %451, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %452 = llvm.mlir.constant(0 : index) : i64
    %453 = llvm.mlir.constant(2 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%452 : i64)
  ^bb74(%455: i64):  // 2 preds: ^bb73, ^bb78
    %456 = llvm.icmp "slt" %455, %453 : i64
    llvm.cond_br %456, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %457 = llvm.mlir.constant(0 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%457 : i64)
  ^bb76(%460: i64):  // 2 preds: ^bb75, ^bb77
    %461 = llvm.icmp "slt" %460, %458 : i64
    llvm.cond_br %461, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %462 = llvm.extractvalue %346[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.mlir.constant(2 : index) : i64
    %464 = llvm.mul %445, %463  : i64
    %465 = llvm.mlir.constant(2 : index) : i64
    %466 = llvm.mul %450, %465  : i64
    %467 = llvm.add %464, %466  : i64
    %468 = llvm.add %467, %455  : i64
    %469 = llvm.add %468, %460  : i64
    %470 = llvm.getelementptr %462[%469] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %471 = llvm.load %470 : !llvm.ptr<i64>
    %472 = llvm.extractvalue %419[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %473 = llvm.add %445, %450  : i64
    %474 = llvm.add %473, %460  : i64
    %475 = llvm.getelementptr %472[%474] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %476 = llvm.load %475 : !llvm.ptr<i64>
    %477 = llvm.add %476, %471  : i64
    %478 = llvm.extractvalue %419[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %479 = llvm.add %445, %450  : i64
    %480 = llvm.add %479, %460  : i64
    %481 = llvm.getelementptr %478[%480] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %477, %481 : !llvm.ptr<i64>
    %482 = llvm.add %460, %459  : i64
    llvm.br ^bb76(%482 : i64)
  ^bb78:  // pred: ^bb76
    %483 = llvm.add %455, %454  : i64
    llvm.br ^bb74(%483 : i64)
  ^bb79:  // pred: ^bb74
    %484 = llvm.add %450, %449  : i64
    llvm.br ^bb72(%484 : i64)
  ^bb80:  // pred: ^bb72
    %485 = llvm.add %445, %444  : i64
    llvm.br ^bb70(%485 : i64)
  ^bb81:  // pred: ^bb70
    %486 = llvm.mlir.constant(4 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    %490 = llvm.mlir.null : !llvm.ptr<i64>
    %491 = llvm.getelementptr %490[%486] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %492 = llvm.ptrtoint %491 : !llvm.ptr<i64> to i64
    %493 = llvm.mlir.constant(16 : index) : i64
    %494 = llvm.add %492, %493  : i64
    %495 = llvm.call @malloc(%494) : (i64) -> !llvm.ptr<i8>
    %496 = llvm.bitcast %495 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %497 = llvm.ptrtoint %496 : !llvm.ptr<i64> to i64
    %498 = llvm.mlir.constant(1 : index) : i64
    %499 = llvm.sub %493, %498  : i64
    %500 = llvm.add %497, %499  : i64
    %501 = llvm.urem %500, %493  : i64
    %502 = llvm.sub %500, %501  : i64
    %503 = llvm.inttoptr %502 : i64 to !llvm.ptr<i64>
    %504 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %505 = llvm.insertvalue %496, %504[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %506 = llvm.insertvalue %503, %505[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %507 = llvm.mlir.constant(0 : index) : i64
    %508 = llvm.insertvalue %507, %506[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %509 = llvm.insertvalue %486, %508[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %510 = llvm.insertvalue %487, %509[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %511 = llvm.insertvalue %488, %510[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %512 = llvm.insertvalue %487, %511[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %513 = llvm.insertvalue %488, %512[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %514 = llvm.insertvalue %489, %513[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %515 = llvm.mlir.constant(0 : index) : i64
    %516 = llvm.mlir.constant(4 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%515 : i64)
  ^bb82(%518: i64):  // 2 preds: ^bb81, ^bb89
    %519 = llvm.icmp "slt" %518, %516 : i64
    llvm.cond_br %519, ^bb83, ^bb90
  ^bb83:  // pred: ^bb82
    %520 = llvm.mlir.constant(0 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb84(%520 : i64)
  ^bb84(%523: i64):  // 2 preds: ^bb83, ^bb88
    %524 = llvm.icmp "slt" %523, %521 : i64
    llvm.cond_br %524, ^bb85, ^bb89
  ^bb85:  // pred: ^bb84
    %525 = llvm.mlir.constant(0 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    %527 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb86(%525 : i64)
  ^bb86(%528: i64):  // 2 preds: ^bb85, ^bb87
    %529 = llvm.icmp "slt" %528, %526 : i64
    llvm.cond_br %529, ^bb87, ^bb88
  ^bb87:  // pred: ^bb86
    %530 = llvm.extractvalue %419[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %531 = llvm.add %518, %523  : i64
    %532 = llvm.add %531, %528  : i64
    %533 = llvm.getelementptr %530[%532] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %534 = llvm.load %533 : !llvm.ptr<i64>
    %535 = llvm.mlir.constant(false) : i1
    %536 = "llvm.intr.abs"(%534, %535) : (i64, i1) -> i64
    %537 = llvm.extractvalue %514[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %538 = llvm.add %518, %523  : i64
    %539 = llvm.add %538, %528  : i64
    %540 = llvm.getelementptr %537[%539] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %536, %540 : !llvm.ptr<i64>
    %541 = llvm.add %528, %527  : i64
    llvm.br ^bb86(%541 : i64)
  ^bb88:  // pred: ^bb86
    %542 = llvm.add %523, %522  : i64
    llvm.br ^bb84(%542 : i64)
  ^bb89:  // pred: ^bb84
    %543 = llvm.add %518, %517  : i64
    llvm.br ^bb82(%543 : i64)
  ^bb90:  // pred: ^bb82
    %544 = llvm.mlir.constant(4 : index) : i64
    %545 = llvm.mlir.constant(1 : index) : i64
    %546 = llvm.mlir.constant(2 : index) : i64
    %547 = llvm.mlir.constant(1 : index) : i64
    %548 = llvm.mlir.constant(1 : index) : i64
    %549 = llvm.mlir.constant(2 : index) : i64
    %550 = llvm.mlir.constant(8 : index) : i64
    %551 = llvm.mlir.null : !llvm.ptr<i32>
    %552 = llvm.getelementptr %551[%550] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %553 = llvm.ptrtoint %552 : !llvm.ptr<i32> to i64
    %554 = llvm.mlir.constant(16 : index) : i64
    %555 = llvm.add %553, %554  : i64
    %556 = llvm.call @malloc(%555) : (i64) -> !llvm.ptr<i8>
    %557 = llvm.bitcast %556 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %558 = llvm.ptrtoint %557 : !llvm.ptr<i32> to i64
    %559 = llvm.mlir.constant(1 : index) : i64
    %560 = llvm.sub %554, %559  : i64
    %561 = llvm.add %558, %560  : i64
    %562 = llvm.urem %561, %554  : i64
    %563 = llvm.sub %561, %562  : i64
    %564 = llvm.inttoptr %563 : i64 to !llvm.ptr<i32>
    %565 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %566 = llvm.insertvalue %557, %565[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %567 = llvm.insertvalue %564, %566[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %568 = llvm.mlir.constant(0 : index) : i64
    %569 = llvm.insertvalue %568, %567[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %570 = llvm.insertvalue %544, %569[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %571 = llvm.insertvalue %545, %570[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %572 = llvm.insertvalue %546, %571[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %573 = llvm.insertvalue %547, %572[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %574 = llvm.insertvalue %549, %573[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %575 = llvm.insertvalue %546, %574[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %576 = llvm.insertvalue %547, %575[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %577 = llvm.insertvalue %548, %576[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %578 = llvm.mlir.constant(0 : index) : i64
    %579 = llvm.mlir.constant(4 : index) : i64
    %580 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%578 : i64)
  ^bb91(%581: i64):  // 2 preds: ^bb90, ^bb101
    %582 = llvm.icmp "slt" %581, %579 : i64
    llvm.cond_br %582, ^bb92, ^bb102
  ^bb92:  // pred: ^bb91
    %583 = llvm.mlir.constant(0 : index) : i64
    %584 = llvm.mlir.constant(1 : index) : i64
    %585 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb93(%583 : i64)
  ^bb93(%586: i64):  // 2 preds: ^bb92, ^bb100
    %587 = llvm.icmp "slt" %586, %584 : i64
    llvm.cond_br %587, ^bb94, ^bb101
  ^bb94:  // pred: ^bb93
    %588 = llvm.mlir.constant(0 : index) : i64
    %589 = llvm.mlir.constant(2 : index) : i64
    %590 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb95(%588 : i64)
  ^bb95(%591: i64):  // 2 preds: ^bb94, ^bb99
    %592 = llvm.icmp "slt" %591, %589 : i64
    llvm.cond_br %592, ^bb96, ^bb100
  ^bb96:  // pred: ^bb95
    %593 = llvm.mlir.constant(0 : index) : i64
    %594 = llvm.mlir.constant(1 : index) : i64
    %595 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%593 : i64)
  ^bb97(%596: i64):  // 2 preds: ^bb96, ^bb98
    %597 = llvm.icmp "slt" %596, %594 : i64
    llvm.cond_br %597, ^bb98, ^bb99
  ^bb98:  // pred: ^bb97
    %598 = llvm.extractvalue %179[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %599 = llvm.mlir.constant(2 : index) : i64
    %600 = llvm.mul %581, %599  : i64
    %601 = llvm.mlir.constant(2 : index) : i64
    %602 = llvm.mul %586, %601  : i64
    %603 = llvm.add %600, %602  : i64
    %604 = llvm.add %603, %591  : i64
    %605 = llvm.add %604, %596  : i64
    %606 = llvm.getelementptr %598[%605] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %607 = llvm.load %606 : !llvm.ptr<i32>
    %608 = llvm.sub %36, %607  : i32
    %609 = llvm.extractvalue %577[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %610 = llvm.mlir.constant(2 : index) : i64
    %611 = llvm.mul %581, %610  : i64
    %612 = llvm.mlir.constant(2 : index) : i64
    %613 = llvm.mul %586, %612  : i64
    %614 = llvm.add %611, %613  : i64
    %615 = llvm.add %614, %591  : i64
    %616 = llvm.add %615, %596  : i64
    %617 = llvm.getelementptr %609[%616] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %608, %617 : !llvm.ptr<i32>
    %618 = llvm.add %596, %595  : i64
    llvm.br ^bb97(%618 : i64)
  ^bb99:  // pred: ^bb97
    %619 = llvm.add %591, %590  : i64
    llvm.br ^bb95(%619 : i64)
  ^bb100:  // pred: ^bb95
    %620 = llvm.add %586, %585  : i64
    llvm.br ^bb93(%620 : i64)
  ^bb101:  // pred: ^bb93
    %621 = llvm.add %581, %580  : i64
    llvm.br ^bb91(%621 : i64)
  ^bb102:  // pred: ^bb91
    %622 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %623 = llvm.insertvalue %514, %622[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %624 = llvm.insertvalue %577, %623[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %624 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v8_0", "v4_0", "v2_0"], llvm.emit_c_interface, output_names = ["v6_0", "v1_0"]} {
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
    %36 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %36, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %126 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %127 = llvm.extractvalue %126[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %128 = llvm.extractvalue %126[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %129 = llvm.mlir.constant(2 : i64) : i64
    %130 = llvm.mlir.constant(16 : i64) : i64
    %131 = llvm.call @malloc(%130) : (i64) -> !llvm.ptr<i8>
    %132 = llvm.bitcast %131 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %133 = llvm.mlir.constant(3 : i64) : i64
    %134 = llvm.call @omTensorCreateUntyped(%133) : (i64) -> !llvm.ptr<i8>
    %135 = llvm.mlir.constant(1 : i64) : i64
    %136 = llvm.extractvalue %127[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %137 = llvm.bitcast %136 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %138 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %139 = llvm.bitcast %138 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%134, %135, %137, %139) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %140 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%134, %140) : (!llvm.ptr<i8>, i64) -> ()
    %141 = llvm.call @omTensorGetShape(%134) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %142 = llvm.call @omTensorGetStrides(%134) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %143 = llvm.mlir.constant(0 : i64) : i64
    %144 = llvm.extractvalue %127[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %145 = llvm.getelementptr %141[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.extractvalue %127[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %147 = llvm.getelementptr %142[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.mlir.constant(1 : i64) : i64
    %149 = llvm.extractvalue %127[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %150 = llvm.getelementptr %141[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.extractvalue %127[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %152 = llvm.getelementptr %142[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.mlir.constant(2 : i64) : i64
    %154 = llvm.extractvalue %127[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %155 = llvm.getelementptr %141[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %154, %155 : !llvm.ptr<i64>
    %156 = llvm.extractvalue %127[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %157 = llvm.getelementptr %142[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %156, %157 : !llvm.ptr<i64>
    %158 = llvm.mlir.constant(0 : i64) : i64
    %159 = llvm.getelementptr %132[%158] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %134, %159 : !llvm.ptr<ptr<i8>>
    %160 = llvm.mlir.constant(4 : i64) : i64
    %161 = llvm.call @omTensorCreateUntyped(%160) : (i64) -> !llvm.ptr<i8>
    %162 = llvm.mlir.constant(1 : i64) : i64
    %163 = llvm.extractvalue %128[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.bitcast %163 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %165 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.bitcast %165 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%161, %162, %164, %166) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %167 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%161, %167) : (!llvm.ptr<i8>, i64) -> ()
    %168 = llvm.call @omTensorGetShape(%161) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %169 = llvm.call @omTensorGetStrides(%161) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %170 = llvm.mlir.constant(0 : i64) : i64
    %171 = llvm.extractvalue %128[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.getelementptr %168[%170] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %171, %172 : !llvm.ptr<i64>
    %173 = llvm.extractvalue %128[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.getelementptr %169[%170] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %173, %174 : !llvm.ptr<i64>
    %175 = llvm.mlir.constant(1 : i64) : i64
    %176 = llvm.extractvalue %128[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.getelementptr %168[%175] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %176, %177 : !llvm.ptr<i64>
    %178 = llvm.extractvalue %128[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.getelementptr %169[%175] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %178, %179 : !llvm.ptr<i64>
    %180 = llvm.mlir.constant(2 : i64) : i64
    %181 = llvm.extractvalue %128[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.getelementptr %168[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %181, %182 : !llvm.ptr<i64>
    %183 = llvm.extractvalue %128[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.getelementptr %169[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %183, %184 : !llvm.ptr<i64>
    %185 = llvm.mlir.constant(3 : i64) : i64
    %186 = llvm.extractvalue %128[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.getelementptr %168[%185] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %186, %187 : !llvm.ptr<i64>
    %188 = llvm.extractvalue %128[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.getelementptr %169[%185] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %188, %189 : !llvm.ptr<i64>
    %190 = llvm.mlir.constant(1 : i64) : i64
    %191 = llvm.getelementptr %132[%190] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %161, %191 : !llvm.ptr<ptr<i8>>
    %192 = llvm.call @omTensorListCreate(%132, %129, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %192 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

