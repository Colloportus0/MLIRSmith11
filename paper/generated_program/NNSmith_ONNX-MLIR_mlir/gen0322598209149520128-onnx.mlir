module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 2 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [8] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<5> : tensor<2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x i32>>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr<i1>, %arg8: !llvm.ptr<i1>, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: !llvm.ptr<i32>, %arg19: !llvm.ptr<i32>, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> attributes {input_names = ["v7_0", "v2_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg14, %12[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg15, %14[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg12, %15[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg16, %16[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg13, %17[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg17, %18[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %21 = llvm.insertvalue %arg18, %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg19, %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg20, %22[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %arg21, %23[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.insertvalue %arg25, %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.insertvalue %arg22, %25[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.insertvalue %arg26, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %arg23, %27[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %arg27, %28[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.insertvalue %arg24, %29[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %arg28, %30[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %35 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %36 = llvm.insertvalue %34, %35[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %37 = llvm.insertvalue %34, %36[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %40 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %41 = llvm.bitcast %40 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %42 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %43 = llvm.insertvalue %41, %42[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.insertvalue %45, %44[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %47 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<2 x array<1 x i32>>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<2 x array<1 x i32>>> to !llvm.ptr<i32>
    %49 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %50 = llvm.insertvalue %48, %49[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.mlir.constant(2 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.mlir.constant(2 : index) : i64
    %63 = llvm.mlir.constant(2 : index) : i64
    %64 = llvm.mlir.constant(2 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.mlir.constant(4 : index) : i64
    %68 = llvm.mlir.constant(8 : index) : i64
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
    %102 = llvm.mlir.constant(2 : index) : i64
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
    %116 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.mlir.constant(4 : index) : i64
    %118 = llvm.mul %99, %117  : i64
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mul %104, %119  : i64
    %121 = llvm.add %118, %120  : i64
    %122 = llvm.add %121, %109  : i64
    %123 = llvm.add %122, %114  : i64
    %124 = llvm.getelementptr %116[%123] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %125 = llvm.load %124 : !llvm.ptr<i1>
    %126 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %127 = llvm.add %32, %114  : i64
    %128 = llvm.getelementptr %126[%127] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %129 = llvm.load %128 : !llvm.ptr<i32>
    %130 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %131 = llvm.add %109, %114  : i64
    %132 = llvm.getelementptr %130[%131] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %133 = llvm.load %132 : !llvm.ptr<i32>
    %134 = llvm.select %125, %129, %133 : i1, i32
    %135 = llvm.extractvalue %95[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.mlir.constant(4 : index) : i64
    %137 = llvm.mul %99, %136  : i64
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mul %104, %138  : i64
    %140 = llvm.add %137, %139  : i64
    %141 = llvm.add %140, %109  : i64
    %142 = llvm.add %141, %114  : i64
    %143 = llvm.getelementptr %135[%142] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %134, %143 : !llvm.ptr<i32>
    %144 = llvm.add %114, %113  : i64
    llvm.br ^bb7(%144 : i64)
  ^bb9:  // pred: ^bb7
    %145 = llvm.add %109, %108  : i64
    llvm.br ^bb5(%145 : i64)
  ^bb10:  // pred: ^bb5
    %146 = llvm.add %104, %103  : i64
    llvm.br ^bb3(%146 : i64)
  ^bb11:  // pred: ^bb3
    %147 = llvm.add %99, %98  : i64
    llvm.br ^bb1(%147 : i64)
  ^bb12:  // pred: ^bb1
    %148 = llvm.mlir.constant(2 : index) : i64
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mlir.constant(2 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.mlir.constant(4 : index) : i64
    %154 = llvm.mlir.constant(8 : index) : i64
    %155 = llvm.mlir.null : !llvm.ptr<i32>
    %156 = llvm.getelementptr %155[%154] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %157 = llvm.ptrtoint %156 : !llvm.ptr<i32> to i64
    %158 = llvm.mlir.constant(16 : index) : i64
    %159 = llvm.add %157, %158  : i64
    %160 = llvm.call @malloc(%159) : (i64) -> !llvm.ptr<i8>
    %161 = llvm.bitcast %160 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %162 = llvm.ptrtoint %161 : !llvm.ptr<i32> to i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.sub %158, %163  : i64
    %165 = llvm.add %162, %164  : i64
    %166 = llvm.urem %165, %158  : i64
    %167 = llvm.sub %165, %166  : i64
    %168 = llvm.inttoptr %167 : i64 to !llvm.ptr<i32>
    %169 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %170 = llvm.insertvalue %161, %169[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.insertvalue %168, %170[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.insertvalue %172, %171[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.insertvalue %148, %173[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.insertvalue %149, %174[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.insertvalue %150, %175[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.insertvalue %151, %176[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.insertvalue %153, %177[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.insertvalue %150, %178[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.insertvalue %151, %179[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.insertvalue %152, %180[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%182 : i64)
  ^bb13(%185: i64):  // 2 preds: ^bb12, ^bb23
    %186 = llvm.icmp "slt" %185, %183 : i64
    llvm.cond_br %186, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.mlir.constant(2 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%187 : i64)
  ^bb15(%190: i64):  // 2 preds: ^bb14, ^bb22
    %191 = llvm.icmp "slt" %190, %188 : i64
    llvm.cond_br %191, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%192 : i64)
  ^bb17(%195: i64):  // 2 preds: ^bb16, ^bb21
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%197 : i64)
  ^bb19(%200: i64):  // 2 preds: ^bb18, ^bb20
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %202 = llvm.extractvalue %95[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.mlir.constant(4 : index) : i64
    %204 = llvm.mul %185, %203  : i64
    %205 = llvm.mlir.constant(2 : index) : i64
    %206 = llvm.mul %190, %205  : i64
    %207 = llvm.add %204, %206  : i64
    %208 = llvm.add %207, %195  : i64
    %209 = llvm.add %208, %200  : i64
    %210 = llvm.getelementptr %202[%209] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %211 = llvm.load %210 : !llvm.ptr<i32>
    %212 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %213 = llvm.load %212 : !llvm.ptr<i32>
    %214 = llvm.icmp "slt" %211, %213 : i32
    %215 = llvm.select %214, %213, %211 : i1, i32
    %216 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %217 = llvm.load %216 : !llvm.ptr<i32>
    %218 = llvm.icmp "slt" %215, %217 : i32
    %219 = llvm.select %218, %215, %217 : i1, i32
    %220 = llvm.extractvalue %181[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.mlir.constant(4 : index) : i64
    %222 = llvm.mul %185, %221  : i64
    %223 = llvm.mlir.constant(2 : index) : i64
    %224 = llvm.mul %190, %223  : i64
    %225 = llvm.add %222, %224  : i64
    %226 = llvm.add %225, %195  : i64
    %227 = llvm.add %226, %200  : i64
    %228 = llvm.getelementptr %220[%227] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %219, %228 : !llvm.ptr<i32>
    %229 = llvm.add %200, %199  : i64
    llvm.br ^bb19(%229 : i64)
  ^bb21:  // pred: ^bb19
    %230 = llvm.add %195, %194  : i64
    llvm.br ^bb17(%230 : i64)
  ^bb22:  // pred: ^bb17
    %231 = llvm.add %190, %189  : i64
    llvm.br ^bb15(%231 : i64)
  ^bb23:  // pred: ^bb15
    %232 = llvm.add %185, %184  : i64
    llvm.br ^bb13(%232 : i64)
  ^bb24:  // pred: ^bb13
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.mlir.constant(2 : index) : i64
    %235 = llvm.mlir.constant(2 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(4 : index) : i64
    %239 = llvm.mlir.constant(8 : index) : i64
    %240 = llvm.mlir.null : !llvm.ptr<i32>
    %241 = llvm.getelementptr %240[%239] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %242 = llvm.ptrtoint %241 : !llvm.ptr<i32> to i64
    %243 = llvm.mlir.constant(16 : index) : i64
    %244 = llvm.add %242, %243  : i64
    %245 = llvm.call @malloc(%244) : (i64) -> !llvm.ptr<i8>
    %246 = llvm.bitcast %245 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %247 = llvm.ptrtoint %246 : !llvm.ptr<i32> to i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.sub %243, %248  : i64
    %250 = llvm.add %247, %249  : i64
    %251 = llvm.urem %250, %243  : i64
    %252 = llvm.sub %250, %251  : i64
    %253 = llvm.inttoptr %252 : i64 to !llvm.ptr<i32>
    %254 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %255 = llvm.insertvalue %246, %254[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.insertvalue %253, %255[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.mlir.constant(0 : index) : i64
    %258 = llvm.insertvalue %257, %256[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.insertvalue %233, %258[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.insertvalue %234, %259[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.insertvalue %235, %260[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.insertvalue %236, %261[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.insertvalue %238, %262[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.insertvalue %235, %263[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.insertvalue %236, %264[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.insertvalue %237, %265[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.mlir.constant(2 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%267 : i64)
  ^bb25(%270: i64):  // 2 preds: ^bb24, ^bb35
    %271 = llvm.icmp "slt" %270, %268 : i64
    llvm.cond_br %271, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.mlir.constant(2 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%272 : i64)
  ^bb27(%275: i64):  // 2 preds: ^bb26, ^bb34
    %276 = llvm.icmp "slt" %275, %273 : i64
    llvm.cond_br %276, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.mlir.constant(2 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%277 : i64)
  ^bb29(%280: i64):  // 2 preds: ^bb28, ^bb33
    %281 = llvm.icmp "slt" %280, %278 : i64
    llvm.cond_br %281, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %282 = llvm.mlir.constant(0 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%282 : i64)
  ^bb31(%285: i64):  // 2 preds: ^bb30, ^bb32
    %286 = llvm.icmp "slt" %285, %283 : i64
    llvm.cond_br %286, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %287 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %288 = llvm.mlir.constant(4 : index) : i64
    %289 = llvm.mul %270, %288  : i64
    %290 = llvm.mlir.constant(2 : index) : i64
    %291 = llvm.mul %275, %290  : i64
    %292 = llvm.add %289, %291  : i64
    %293 = llvm.add %292, %280  : i64
    %294 = llvm.add %293, %285  : i64
    %295 = llvm.getelementptr %287[%294] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %296 = llvm.load %295 : !llvm.ptr<i32>
    %297 = llvm.extractvalue %181[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.mlir.constant(4 : index) : i64
    %299 = llvm.mul %270, %298  : i64
    %300 = llvm.mlir.constant(2 : index) : i64
    %301 = llvm.mul %275, %300  : i64
    %302 = llvm.add %299, %301  : i64
    %303 = llvm.add %302, %280  : i64
    %304 = llvm.add %303, %285  : i64
    %305 = llvm.getelementptr %297[%304] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %306 = llvm.load %305 : !llvm.ptr<i32>
    %307 = llvm.icmp "slt" %296, %306 : i32
    %308 = llvm.select %307, %296, %306 : i1, i32
    %309 = llvm.extractvalue %266[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.mlir.constant(4 : index) : i64
    %311 = llvm.mul %270, %310  : i64
    %312 = llvm.mlir.constant(2 : index) : i64
    %313 = llvm.mul %275, %312  : i64
    %314 = llvm.add %311, %313  : i64
    %315 = llvm.add %314, %280  : i64
    %316 = llvm.add %315, %285  : i64
    %317 = llvm.getelementptr %309[%316] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %308, %317 : !llvm.ptr<i32>
    %318 = llvm.add %285, %284  : i64
    llvm.br ^bb31(%318 : i64)
  ^bb33:  // pred: ^bb31
    %319 = llvm.add %280, %279  : i64
    llvm.br ^bb29(%319 : i64)
  ^bb34:  // pred: ^bb29
    %320 = llvm.add %275, %274  : i64
    llvm.br ^bb27(%320 : i64)
  ^bb35:  // pred: ^bb27
    %321 = llvm.add %270, %269  : i64
    llvm.br ^bb25(%321 : i64)
  ^bb36:  // pred: ^bb25
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mlir.constant(2 : index) : i64
    %324 = llvm.mlir.constant(2 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mlir.constant(4 : index) : i64
    %328 = llvm.mlir.constant(8 : index) : i64
    %329 = llvm.mlir.null : !llvm.ptr<i32>
    %330 = llvm.getelementptr %329[%328] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %331 = llvm.ptrtoint %330 : !llvm.ptr<i32> to i64
    %332 = llvm.mlir.constant(16 : index) : i64
    %333 = llvm.add %331, %332  : i64
    %334 = llvm.call @malloc(%333) : (i64) -> !llvm.ptr<i8>
    %335 = llvm.bitcast %334 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %336 = llvm.ptrtoint %335 : !llvm.ptr<i32> to i64
    %337 = llvm.mlir.constant(1 : index) : i64
    %338 = llvm.sub %332, %337  : i64
    %339 = llvm.add %336, %338  : i64
    %340 = llvm.urem %339, %332  : i64
    %341 = llvm.sub %339, %340  : i64
    %342 = llvm.inttoptr %341 : i64 to !llvm.ptr<i32>
    %343 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %344 = llvm.insertvalue %335, %343[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %342, %344[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.insertvalue %346, %345[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.insertvalue %322, %347[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.insertvalue %323, %348[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.insertvalue %324, %349[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.insertvalue %325, %350[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.insertvalue %327, %351[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.insertvalue %324, %352[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.insertvalue %325, %353[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.insertvalue %326, %354[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.mlir.constant(2 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%356 : i64)
  ^bb37(%359: i64):  // 2 preds: ^bb36, ^bb47
    %360 = llvm.icmp "slt" %359, %357 : i64
    llvm.cond_br %360, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %361 = llvm.mlir.constant(0 : index) : i64
    %362 = llvm.mlir.constant(2 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%361 : i64)
  ^bb39(%364: i64):  // 2 preds: ^bb38, ^bb46
    %365 = llvm.icmp "slt" %364, %362 : i64
    llvm.cond_br %365, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = llvm.mlir.constant(2 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%366 : i64)
  ^bb41(%369: i64):  // 2 preds: ^bb40, ^bb45
    %370 = llvm.icmp "slt" %369, %367 : i64
    llvm.cond_br %370, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %371 = llvm.mlir.constant(0 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%371 : i64)
  ^bb43(%374: i64):  // 2 preds: ^bb42, ^bb44
    %375 = llvm.icmp "slt" %374, %372 : i64
    llvm.cond_br %375, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %376 = llvm.extractvalue %181[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.mlir.constant(4 : index) : i64
    %378 = llvm.mul %359, %377  : i64
    %379 = llvm.mlir.constant(2 : index) : i64
    %380 = llvm.mul %364, %379  : i64
    %381 = llvm.add %378, %380  : i64
    %382 = llvm.add %381, %369  : i64
    %383 = llvm.add %382, %374  : i64
    %384 = llvm.getelementptr %376[%383] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %385 = llvm.load %384 : !llvm.ptr<i32>
    %386 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.mlir.constant(4 : index) : i64
    %388 = llvm.mul %359, %387  : i64
    %389 = llvm.mlir.constant(2 : index) : i64
    %390 = llvm.mul %364, %389  : i64
    %391 = llvm.add %388, %390  : i64
    %392 = llvm.add %391, %369  : i64
    %393 = llvm.add %392, %374  : i64
    %394 = llvm.getelementptr %386[%393] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %395 = llvm.load %394 : !llvm.ptr<i32>
    %396 = llvm.icmp "slt" %385, %395 : i32
    %397 = llvm.select %396, %385, %395 : i1, i32
    %398 = llvm.extractvalue %355[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.mlir.constant(4 : index) : i64
    %400 = llvm.mul %359, %399  : i64
    %401 = llvm.mlir.constant(2 : index) : i64
    %402 = llvm.mul %364, %401  : i64
    %403 = llvm.add %400, %402  : i64
    %404 = llvm.add %403, %369  : i64
    %405 = llvm.add %404, %374  : i64
    %406 = llvm.getelementptr %398[%405] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %397, %406 : !llvm.ptr<i32>
    %407 = llvm.add %374, %373  : i64
    llvm.br ^bb43(%407 : i64)
  ^bb45:  // pred: ^bb43
    %408 = llvm.add %369, %368  : i64
    llvm.br ^bb41(%408 : i64)
  ^bb46:  // pred: ^bb41
    %409 = llvm.add %364, %363  : i64
    llvm.br ^bb39(%409 : i64)
  ^bb47:  // pred: ^bb39
    %410 = llvm.add %359, %358  : i64
    llvm.br ^bb37(%410 : i64)
  ^bb48:  // pred: ^bb37
    %411 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %412 = llvm.extractvalue %355[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.extractvalue %355[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.insertvalue %412, %411[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %415 = llvm.insertvalue %413, %414[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %416 = llvm.mlir.constant(0 : index) : i64
    %417 = llvm.insertvalue %416, %415[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %418 = llvm.mlir.constant(8 : index) : i64
    %419 = llvm.insertvalue %418, %417[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.insertvalue %420, %419[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %422 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
    %423 = llvm.insertvalue %266, %422[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %424 = llvm.insertvalue %421, %423[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    llvm.return %424 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v7_0", "v2_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %9 = llvm.extractvalue %8[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %8[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %8[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %8[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %8[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %8[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %8[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %8[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %8[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %8[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %8[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %21 = llvm.extractvalue %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %20[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.extractvalue %20[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.extractvalue %20[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.extractvalue %20[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.extractvalue %20[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.extractvalue %20[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.extractvalue %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.extractvalue %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.extractvalue %20[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i1>, !llvm.ptr<i1>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
    llvm.store %32, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %29, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    %31 = llvm.getelementptr %0[%30] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %32 = llvm.load %31 : !llvm.ptr<ptr<i8>>
    %33 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %35 = llvm.call @omTensorGetDataPtr(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %36 = llvm.bitcast %35 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %37 = llvm.insertvalue %36, %34[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %36, %37[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(0 : i64) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.call @omTensorGetShape(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %42 = llvm.call @omTensorGetStrides(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %43 = llvm.mlir.constant(0 : i64) : i64
    %44 = llvm.getelementptr %41[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %40[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %42[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(1 : i64) : i64
    %51 = llvm.getelementptr %41[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %42[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(2 : i64) : i64
    %58 = llvm.getelementptr %41[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %42[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(3 : i64) : i64
    %65 = llvm.getelementptr %41[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %42[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %70, %33 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %0[%71] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %73 = llvm.load %72 : !llvm.ptr<ptr<i8>>
    %74 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %75 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %76 = llvm.call @omTensorGetDataPtr(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %77 = llvm.bitcast %76 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %78 = llvm.insertvalue %77, %75[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %77, %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(0 : i64) : i64
    %81 = llvm.insertvalue %80, %79[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.call @omTensorGetShape(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %83 = llvm.call @omTensorGetStrides(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %84 = llvm.mlir.constant(0 : i64) : i64
    %85 = llvm.getelementptr %82[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %86 = llvm.load %85 : !llvm.ptr<i64>
    %87 = llvm.insertvalue %86, %81[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %83[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %89 = llvm.load %88 : !llvm.ptr<i64>
    %90 = llvm.insertvalue %89, %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(1 : i64) : i64
    %92 = llvm.getelementptr %82[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %93 = llvm.load %92 : !llvm.ptr<i64>
    %94 = llvm.insertvalue %93, %90[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %83[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %96 = llvm.load %95 : !llvm.ptr<i64>
    %97 = llvm.insertvalue %96, %94[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.getelementptr %82[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %97[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %83[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(3 : i64) : i64
    %106 = llvm.getelementptr %82[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %107 = llvm.load %106 : !llvm.ptr<i64>
    %108 = llvm.insertvalue %107, %104[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %83[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %110 = llvm.load %109 : !llvm.ptr<i64>
    %111 = llvm.insertvalue %110, %108[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %111, %74 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %33, %74) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %112 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %113 = llvm.extractvalue %112[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %114 = llvm.extractvalue %112[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %115 = llvm.mlir.constant(2 : i64) : i64
    %116 = llvm.mlir.constant(16 : i64) : i64
    %117 = llvm.call @malloc(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.bitcast %117 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %119 = llvm.mlir.constant(4 : i64) : i64
    %120 = llvm.call @omTensorCreateUntyped(%119) : (i64) -> !llvm.ptr<i8>
    %121 = llvm.mlir.constant(1 : i64) : i64
    %122 = llvm.extractvalue %113[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.bitcast %122 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %124 = llvm.extractvalue %113[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.bitcast %124 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%120, %121, %123, %125) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %126 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%120, %126) : (!llvm.ptr<i8>, i64) -> ()
    %127 = llvm.call @omTensorGetShape(%120) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %128 = llvm.call @omTensorGetStrides(%120) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %129 = llvm.mlir.constant(0 : i64) : i64
    %130 = llvm.extractvalue %113[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.getelementptr %127[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.extractvalue %113[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %128[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.mlir.constant(1 : i64) : i64
    %135 = llvm.extractvalue %113[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %127[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %113[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %128[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.mlir.constant(2 : i64) : i64
    %140 = llvm.extractvalue %113[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %127[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.extractvalue %113[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %128[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.mlir.constant(3 : i64) : i64
    %145 = llvm.extractvalue %113[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %127[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %113[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %128[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(0 : i64) : i64
    %150 = llvm.getelementptr %118[%149] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %120, %150 : !llvm.ptr<ptr<i8>>
    %151 = llvm.mlir.constant(1 : i64) : i64
    %152 = llvm.call @omTensorCreateUntyped(%151) : (i64) -> !llvm.ptr<i8>
    %153 = llvm.mlir.constant(1 : i64) : i64
    %154 = llvm.extractvalue %114[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.bitcast %154 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %156 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.bitcast %156 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%152, %153, %155, %157) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %158 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%152, %158) : (!llvm.ptr<i8>, i64) -> ()
    %159 = llvm.call @omTensorGetShape(%152) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %160 = llvm.call @omTensorGetStrides(%152) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %161 = llvm.mlir.constant(0 : i64) : i64
    %162 = llvm.extractvalue %114[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %163 = llvm.getelementptr %159[%161] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %162, %163 : !llvm.ptr<i64>
    %164 = llvm.extractvalue %114[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.getelementptr %160[%161] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %164, %165 : !llvm.ptr<i64>
    %166 = llvm.mlir.constant(1 : i64) : i64
    %167 = llvm.getelementptr %118[%166] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %152, %167 : !llvm.ptr<ptr<i8>>
    %168 = llvm.call @omTensorListCreate(%118, %115, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %168 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<203 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<203 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<129 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<129 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

