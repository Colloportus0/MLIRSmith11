module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 10] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_2(dense<[[[6, 4]], [[4, 5]]]> : tensor<2x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<2 x i32>>>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr<i32>, %arg8: !llvm.ptr<i32>, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: !llvm.ptr<i32>, %arg15: !llvm.ptr<i32>, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0", "v5_0", "v0_0"], llvm.emit_c_interface, output_names = ["v1_0", "v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %17 = llvm.insertvalue %arg14, %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg16, %18[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg21, %20[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg18, %21[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg22, %22[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %arg19, %23[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.insertvalue %arg23, %24[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.insertvalue %arg20, %25[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.insertvalue %arg24, %26[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.mlir.constant(0 : i32) : i32
    %30 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %31 = llvm.bitcast %30 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %32 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %33 = llvm.insertvalue %31, %32[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %37 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %38 = llvm.bitcast %37 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %39 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %40 = llvm.insertvalue %38, %39[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %41 = llvm.insertvalue %38, %40[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %42 = llvm.mlir.constant(0 : index) : i64
    %43 = llvm.insertvalue %42, %41[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %44 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<2 x array<1 x array<2 x i32>>>>
    %45 = llvm.bitcast %44 : !llvm.ptr<array<2 x array<1 x array<2 x i32>>>> to !llvm.ptr<i32>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %47 = llvm.insertvalue %45, %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %51 = llvm.mlir.constant(2 : index) : i64
    %52 = llvm.insertvalue %51, %50[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %53 = llvm.mlir.constant(2 : index) : i64
    %54 = llvm.insertvalue %53, %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.mlir.constant(2 : index) : i64
    %58 = llvm.insertvalue %57, %56[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %59 = llvm.mlir.constant(2 : index) : i64
    %60 = llvm.insertvalue %59, %58[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.mlir.constant(2 : index) : i64
    %64 = llvm.mlir.constant(2 : index) : i64
    %65 = llvm.mlir.constant(2 : index) : i64
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
    %83 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %84 = llvm.insertvalue %75, %83[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %85 = llvm.insertvalue %82, %84[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.insertvalue %86, %85[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %88 = llvm.insertvalue %63, %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %89 = llvm.insertvalue %64, %88[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.insertvalue %65, %89[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %91 = llvm.insertvalue %67, %90[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %92 = llvm.insertvalue %65, %91[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %93 = llvm.insertvalue %66, %92[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.mlir.null : !llvm.ptr<i32>
    %96 = llvm.getelementptr %95[%94] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %97 = llvm.ptrtoint %96 : !llvm.ptr<i32> to i64
    %98 = llvm.alloca %97 x i32 : (i64) -> !llvm.ptr<i32>
    %99 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %100 = llvm.insertvalue %98, %99[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %101 = llvm.insertvalue %98, %100[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = llvm.insertvalue %102, %101[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.mlir.constant(2 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%104 : i64)
  ^bb1(%107: i64):  // 2 preds: ^bb0, ^bb11
    %108 = llvm.icmp "slt" %107, %105 : i64
    llvm.cond_br %108, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.mlir.constant(2 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%109 : i64)
  ^bb3(%112: i64):  // 2 preds: ^bb2, ^bb10
    %113 = llvm.icmp "slt" %112, %110 : i64
    llvm.cond_br %113, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.mlir.constant(2 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%114 : i64)
  ^bb5(%117: i64):  // 2 preds: ^bb4, ^bb9
    %118 = llvm.icmp "slt" %117, %115 : i64
    llvm.cond_br %118, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %119 = llvm.extractvalue %103[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %29, %119 : !llvm.ptr<i32>
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%120 : i64)
  ^bb7(%123: i64):  // 2 preds: ^bb6, ^bb8
    %124 = llvm.icmp "slt" %123, %121 : i64
    llvm.cond_br %124, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %125 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %126 = llvm.add %112, %123  : i64
    %127 = llvm.getelementptr %125[%126] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %128 = llvm.load %127 : !llvm.ptr<i32>
    %129 = llvm.extractvalue %62[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %130 = llvm.mlir.constant(2 : index) : i64
    %131 = llvm.mul %107, %130  : i64
    %132 = llvm.mlir.constant(2 : index) : i64
    %133 = llvm.mul %123, %132  : i64
    %134 = llvm.add %131, %133  : i64
    %135 = llvm.add %134, %117  : i64
    %136 = llvm.getelementptr %129[%135] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %137 = llvm.load %136 : !llvm.ptr<i32>
    %138 = llvm.extractvalue %103[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %139 = llvm.load %138 : !llvm.ptr<i32>
    %140 = llvm.mul %128, %137  : i32
    %141 = llvm.add %139, %140  : i32
    %142 = llvm.extractvalue %103[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %141, %142 : !llvm.ptr<i32>
    %143 = llvm.add %123, %122  : i64
    llvm.br ^bb7(%143 : i64)
  ^bb9:  // pred: ^bb7
    %144 = llvm.extractvalue %103[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %145 = llvm.load %144 : !llvm.ptr<i32>
    %146 = llvm.extractvalue %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %147 = llvm.mlir.constant(4 : index) : i64
    %148 = llvm.mul %107, %147  : i64
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mul %112, %149  : i64
    %151 = llvm.add %148, %150  : i64
    %152 = llvm.add %151, %117  : i64
    %153 = llvm.getelementptr %146[%152] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %145, %153 : !llvm.ptr<i32>
    %154 = llvm.add %117, %116  : i64
    llvm.br ^bb5(%154 : i64)
  ^bb10:  // pred: ^bb5
    %155 = llvm.add %112, %111  : i64
    llvm.br ^bb3(%155 : i64)
  ^bb11:  // pred: ^bb3
    %156 = llvm.add %107, %106  : i64
    llvm.br ^bb1(%156 : i64)
  ^bb12:  // pred: ^bb1
    %157 = llvm.mlir.constant(2 : index) : i64
    %158 = llvm.mlir.constant(2 : index) : i64
    %159 = llvm.mlir.constant(2 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.mlir.constant(4 : index) : i64
    %162 = llvm.mlir.constant(8 : index) : i64
    %163 = llvm.mlir.null : !llvm.ptr<i32>
    %164 = llvm.getelementptr %163[%162] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %165 = llvm.ptrtoint %164 : !llvm.ptr<i32> to i64
    %166 = llvm.mlir.constant(16 : index) : i64
    %167 = llvm.add %165, %166  : i64
    %168 = llvm.call @malloc(%167) : (i64) -> !llvm.ptr<i8>
    %169 = llvm.bitcast %168 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %170 = llvm.ptrtoint %169 : !llvm.ptr<i32> to i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.sub %166, %171  : i64
    %173 = llvm.add %170, %172  : i64
    %174 = llvm.urem %173, %166  : i64
    %175 = llvm.sub %173, %174  : i64
    %176 = llvm.inttoptr %175 : i64 to !llvm.ptr<i32>
    %177 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %178 = llvm.insertvalue %169, %177[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %179 = llvm.insertvalue %176, %178[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.insertvalue %180, %179[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %182 = llvm.insertvalue %157, %181[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %183 = llvm.insertvalue %158, %182[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %184 = llvm.insertvalue %159, %183[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %185 = llvm.insertvalue %161, %184[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %186 = llvm.insertvalue %159, %185[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %187 = llvm.insertvalue %160, %186[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %188 = llvm.mlir.constant(0 : index) : i64
    %189 = llvm.mlir.constant(2 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%188 : i64)
  ^bb13(%191: i64):  // 2 preds: ^bb12, ^bb20
    %192 = llvm.icmp "slt" %191, %189 : i64
    llvm.cond_br %192, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %193 = llvm.mlir.constant(0 : index) : i64
    %194 = llvm.mlir.constant(2 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%193 : i64)
  ^bb15(%196: i64):  // 2 preds: ^bb14, ^bb19
    %197 = llvm.icmp "slt" %196, %194 : i64
    llvm.cond_br %197, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.mlir.constant(2 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%198 : i64)
  ^bb17(%201: i64):  // 2 preds: ^bb16, ^bb18
    %202 = llvm.icmp "slt" %201, %199 : i64
    llvm.cond_br %202, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %203 = llvm.extractvalue %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %204 = llvm.add %196, %28  : i64
    %205 = llvm.getelementptr %203[%204] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %206 = llvm.load %205 : !llvm.ptr<i32>
    %207 = llvm.extractvalue %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %208 = llvm.mlir.constant(4 : index) : i64
    %209 = llvm.mul %191, %208  : i64
    %210 = llvm.mlir.constant(2 : index) : i64
    %211 = llvm.mul %196, %210  : i64
    %212 = llvm.add %209, %211  : i64
    %213 = llvm.add %212, %201  : i64
    %214 = llvm.getelementptr %207[%213] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %215 = llvm.load %214 : !llvm.ptr<i32>
    %216 = llvm.icmp "slt" %206, %215 : i32
    %217 = llvm.select %216, %206, %215 : i1, i32
    %218 = llvm.extractvalue %187[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %219 = llvm.mlir.constant(4 : index) : i64
    %220 = llvm.mul %191, %219  : i64
    %221 = llvm.mlir.constant(2 : index) : i64
    %222 = llvm.mul %196, %221  : i64
    %223 = llvm.add %220, %222  : i64
    %224 = llvm.add %223, %201  : i64
    %225 = llvm.getelementptr %218[%224] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %217, %225 : !llvm.ptr<i32>
    %226 = llvm.add %201, %200  : i64
    llvm.br ^bb17(%226 : i64)
  ^bb19:  // pred: ^bb17
    %227 = llvm.add %196, %195  : i64
    llvm.br ^bb15(%227 : i64)
  ^bb20:  // pred: ^bb15
    %228 = llvm.add %191, %190  : i64
    llvm.br ^bb13(%228 : i64)
  ^bb21:  // pred: ^bb13
    %229 = llvm.mlir.constant(2 : index) : i64
    %230 = llvm.mlir.constant(2 : index) : i64
    %231 = llvm.mlir.constant(10 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.mlir.constant(20 : index) : i64
    %234 = llvm.mlir.constant(40 : index) : i64
    %235 = llvm.mlir.null : !llvm.ptr<i32>
    %236 = llvm.getelementptr %235[%234] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %237 = llvm.ptrtoint %236 : !llvm.ptr<i32> to i64
    %238 = llvm.mlir.constant(16 : index) : i64
    %239 = llvm.add %237, %238  : i64
    %240 = llvm.call @malloc(%239) : (i64) -> !llvm.ptr<i8>
    %241 = llvm.bitcast %240 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %242 = llvm.ptrtoint %241 : !llvm.ptr<i32> to i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.sub %238, %243  : i64
    %245 = llvm.add %242, %244  : i64
    %246 = llvm.urem %245, %238  : i64
    %247 = llvm.sub %245, %246  : i64
    %248 = llvm.inttoptr %247 : i64 to !llvm.ptr<i32>
    %249 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %250 = llvm.insertvalue %241, %249[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %251 = llvm.insertvalue %248, %250[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.insertvalue %252, %251[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %254 = llvm.insertvalue %229, %253[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %255 = llvm.insertvalue %230, %254[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %256 = llvm.insertvalue %231, %255[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %257 = llvm.insertvalue %233, %256[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %258 = llvm.insertvalue %231, %257[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %259 = llvm.insertvalue %232, %258[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %260 = llvm.mlir.constant(0 : index) : i64
    %261 = llvm.mlir.constant(2 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%260 : i64)
  ^bb22(%263: i64):  // 2 preds: ^bb21, ^bb29
    %264 = llvm.icmp "slt" %263, %261 : i64
    llvm.cond_br %264, ^bb23, ^bb30
  ^bb23:  // pred: ^bb22
    %265 = llvm.mlir.constant(0 : index) : i64
    %266 = llvm.mlir.constant(2 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%265 : i64)
  ^bb24(%268: i64):  // 2 preds: ^bb23, ^bb28
    %269 = llvm.icmp "slt" %268, %266 : i64
    llvm.cond_br %269, ^bb25, ^bb29
  ^bb25:  // pred: ^bb24
    %270 = llvm.mlir.constant(0 : index) : i64
    %271 = llvm.mlir.constant(2 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%270 : i64)
  ^bb26(%273: i64):  // 2 preds: ^bb25, ^bb27
    %274 = llvm.icmp "slt" %273, %271 : i64
    llvm.cond_br %274, ^bb27, ^bb28
  ^bb27:  // pred: ^bb26
    %275 = llvm.extractvalue %187[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %276 = llvm.mlir.constant(4 : index) : i64
    %277 = llvm.mul %263, %276  : i64
    %278 = llvm.mlir.constant(2 : index) : i64
    %279 = llvm.mul %268, %278  : i64
    %280 = llvm.add %277, %279  : i64
    %281 = llvm.add %280, %273  : i64
    %282 = llvm.getelementptr %275[%281] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %283 = llvm.load %282 : !llvm.ptr<i32>
    %284 = llvm.extractvalue %259[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %285 = llvm.mlir.constant(20 : index) : i64
    %286 = llvm.mul %263, %285  : i64
    %287 = llvm.mlir.constant(10 : index) : i64
    %288 = llvm.mul %268, %287  : i64
    %289 = llvm.add %286, %288  : i64
    %290 = llvm.add %289, %273  : i64
    %291 = llvm.getelementptr %284[%290] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %283, %291 : !llvm.ptr<i32>
    %292 = llvm.add %273, %272  : i64
    llvm.br ^bb26(%292 : i64)
  ^bb28:  // pred: ^bb26
    %293 = llvm.add %268, %267  : i64
    llvm.br ^bb24(%293 : i64)
  ^bb29:  // pred: ^bb24
    %294 = llvm.add %263, %262  : i64
    llvm.br ^bb22(%294 : i64)
  ^bb30:  // pred: ^bb22
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.mlir.constant(2 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%295 : i64)
  ^bb31(%298: i64):  // 2 preds: ^bb30, ^bb38
    %299 = llvm.icmp "slt" %298, %296 : i64
    llvm.cond_br %299, ^bb32, ^bb39
  ^bb32:  // pred: ^bb31
    %300 = llvm.mlir.constant(0 : index) : i64
    %301 = llvm.mlir.constant(2 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%300 : i64)
  ^bb33(%303: i64):  // 2 preds: ^bb32, ^bb37
    %304 = llvm.icmp "slt" %303, %301 : i64
    llvm.cond_br %304, ^bb34, ^bb38
  ^bb34:  // pred: ^bb33
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.mlir.constant(2 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%305 : i64)
  ^bb35(%308: i64):  // 2 preds: ^bb34, ^bb36
    %309 = llvm.icmp "slt" %308, %306 : i64
    llvm.cond_br %309, ^bb36, ^bb37
  ^bb36:  // pred: ^bb35
    %310 = llvm.mlir.constant(2 : index) : i64
    %311 = llvm.add %308, %310  : i64
    %312 = llvm.extractvalue %187[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %313 = llvm.mlir.constant(4 : index) : i64
    %314 = llvm.mul %298, %313  : i64
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mul %303, %315  : i64
    %317 = llvm.add %314, %316  : i64
    %318 = llvm.add %317, %308  : i64
    %319 = llvm.getelementptr %312[%318] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %320 = llvm.load %319 : !llvm.ptr<i32>
    %321 = llvm.extractvalue %259[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %322 = llvm.mlir.constant(20 : index) : i64
    %323 = llvm.mul %298, %322  : i64
    %324 = llvm.mlir.constant(10 : index) : i64
    %325 = llvm.mul %303, %324  : i64
    %326 = llvm.add %323, %325  : i64
    %327 = llvm.add %326, %311  : i64
    %328 = llvm.getelementptr %321[%327] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %320, %328 : !llvm.ptr<i32>
    %329 = llvm.add %308, %307  : i64
    llvm.br ^bb35(%329 : i64)
  ^bb37:  // pred: ^bb35
    %330 = llvm.add %303, %302  : i64
    llvm.br ^bb33(%330 : i64)
  ^bb38:  // pred: ^bb33
    %331 = llvm.add %298, %297  : i64
    llvm.br ^bb31(%331 : i64)
  ^bb39:  // pred: ^bb31
    %332 = llvm.mlir.constant(0 : index) : i64
    %333 = llvm.mlir.constant(2 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%332 : i64)
  ^bb40(%335: i64):  // 2 preds: ^bb39, ^bb47
    %336 = llvm.icmp "slt" %335, %333 : i64
    llvm.cond_br %336, ^bb41, ^bb48
  ^bb41:  // pred: ^bb40
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.mlir.constant(2 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%337 : i64)
  ^bb42(%340: i64):  // 2 preds: ^bb41, ^bb46
    %341 = llvm.icmp "slt" %340, %338 : i64
    llvm.cond_br %341, ^bb43, ^bb47
  ^bb43:  // pred: ^bb42
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(2 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%342 : i64)
  ^bb44(%345: i64):  // 2 preds: ^bb43, ^bb45
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb45, ^bb46
  ^bb45:  // pred: ^bb44
    %347 = llvm.mlir.constant(4 : index) : i64
    %348 = llvm.add %345, %347  : i64
    %349 = llvm.extractvalue %187[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %350 = llvm.mlir.constant(4 : index) : i64
    %351 = llvm.mul %335, %350  : i64
    %352 = llvm.mlir.constant(2 : index) : i64
    %353 = llvm.mul %340, %352  : i64
    %354 = llvm.add %351, %353  : i64
    %355 = llvm.add %354, %345  : i64
    %356 = llvm.getelementptr %349[%355] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %357 = llvm.load %356 : !llvm.ptr<i32>
    %358 = llvm.extractvalue %259[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %359 = llvm.mlir.constant(20 : index) : i64
    %360 = llvm.mul %335, %359  : i64
    %361 = llvm.mlir.constant(10 : index) : i64
    %362 = llvm.mul %340, %361  : i64
    %363 = llvm.add %360, %362  : i64
    %364 = llvm.add %363, %348  : i64
    %365 = llvm.getelementptr %358[%364] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %357, %365 : !llvm.ptr<i32>
    %366 = llvm.add %345, %344  : i64
    llvm.br ^bb44(%366 : i64)
  ^bb46:  // pred: ^bb44
    %367 = llvm.add %340, %339  : i64
    llvm.br ^bb42(%367 : i64)
  ^bb47:  // pred: ^bb42
    %368 = llvm.add %335, %334  : i64
    llvm.br ^bb40(%368 : i64)
  ^bb48:  // pred: ^bb40
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.mlir.constant(2 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%369 : i64)
  ^bb49(%372: i64):  // 2 preds: ^bb48, ^bb56
    %373 = llvm.icmp "slt" %372, %370 : i64
    llvm.cond_br %373, ^bb50, ^bb57
  ^bb50:  // pred: ^bb49
    %374 = llvm.mlir.constant(0 : index) : i64
    %375 = llvm.mlir.constant(2 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%374 : i64)
  ^bb51(%377: i64):  // 2 preds: ^bb50, ^bb55
    %378 = llvm.icmp "slt" %377, %375 : i64
    llvm.cond_br %378, ^bb52, ^bb56
  ^bb52:  // pred: ^bb51
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.mlir.constant(2 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%379 : i64)
  ^bb53(%382: i64):  // 2 preds: ^bb52, ^bb54
    %383 = llvm.icmp "slt" %382, %380 : i64
    llvm.cond_br %383, ^bb54, ^bb55
  ^bb54:  // pred: ^bb53
    %384 = llvm.mlir.constant(6 : index) : i64
    %385 = llvm.add %382, %384  : i64
    %386 = llvm.extractvalue %187[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %387 = llvm.mlir.constant(4 : index) : i64
    %388 = llvm.mul %372, %387  : i64
    %389 = llvm.mlir.constant(2 : index) : i64
    %390 = llvm.mul %377, %389  : i64
    %391 = llvm.add %388, %390  : i64
    %392 = llvm.add %391, %382  : i64
    %393 = llvm.getelementptr %386[%392] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %394 = llvm.load %393 : !llvm.ptr<i32>
    %395 = llvm.extractvalue %259[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %396 = llvm.mlir.constant(20 : index) : i64
    %397 = llvm.mul %372, %396  : i64
    %398 = llvm.mlir.constant(10 : index) : i64
    %399 = llvm.mul %377, %398  : i64
    %400 = llvm.add %397, %399  : i64
    %401 = llvm.add %400, %385  : i64
    %402 = llvm.getelementptr %395[%401] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %394, %402 : !llvm.ptr<i32>
    %403 = llvm.add %382, %381  : i64
    llvm.br ^bb53(%403 : i64)
  ^bb55:  // pred: ^bb53
    %404 = llvm.add %377, %376  : i64
    llvm.br ^bb51(%404 : i64)
  ^bb56:  // pred: ^bb51
    %405 = llvm.add %372, %371  : i64
    llvm.br ^bb49(%405 : i64)
  ^bb57:  // pred: ^bb49
    %406 = llvm.mlir.constant(0 : index) : i64
    %407 = llvm.mlir.constant(2 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%406 : i64)
  ^bb58(%409: i64):  // 2 preds: ^bb57, ^bb65
    %410 = llvm.icmp "slt" %409, %407 : i64
    llvm.cond_br %410, ^bb59, ^bb66
  ^bb59:  // pred: ^bb58
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.mlir.constant(2 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%411 : i64)
  ^bb60(%414: i64):  // 2 preds: ^bb59, ^bb64
    %415 = llvm.icmp "slt" %414, %412 : i64
    llvm.cond_br %415, ^bb61, ^bb65
  ^bb61:  // pred: ^bb60
    %416 = llvm.mlir.constant(0 : index) : i64
    %417 = llvm.mlir.constant(2 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%416 : i64)
  ^bb62(%419: i64):  // 2 preds: ^bb61, ^bb63
    %420 = llvm.icmp "slt" %419, %417 : i64
    llvm.cond_br %420, ^bb63, ^bb64
  ^bb63:  // pred: ^bb62
    %421 = llvm.mlir.constant(8 : index) : i64
    %422 = llvm.add %419, %421  : i64
    %423 = llvm.extractvalue %187[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %424 = llvm.mlir.constant(4 : index) : i64
    %425 = llvm.mul %409, %424  : i64
    %426 = llvm.mlir.constant(2 : index) : i64
    %427 = llvm.mul %414, %426  : i64
    %428 = llvm.add %425, %427  : i64
    %429 = llvm.add %428, %419  : i64
    %430 = llvm.getelementptr %423[%429] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %431 = llvm.load %430 : !llvm.ptr<i32>
    %432 = llvm.extractvalue %259[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %433 = llvm.mlir.constant(20 : index) : i64
    %434 = llvm.mul %409, %433  : i64
    %435 = llvm.mlir.constant(10 : index) : i64
    %436 = llvm.mul %414, %435  : i64
    %437 = llvm.add %434, %436  : i64
    %438 = llvm.add %437, %422  : i64
    %439 = llvm.getelementptr %432[%438] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %431, %439 : !llvm.ptr<i32>
    %440 = llvm.add %419, %418  : i64
    llvm.br ^bb62(%440 : i64)
  ^bb64:  // pred: ^bb62
    %441 = llvm.add %414, %413  : i64
    llvm.br ^bb60(%441 : i64)
  ^bb65:  // pred: ^bb60
    %442 = llvm.add %409, %408  : i64
    llvm.br ^bb58(%442 : i64)
  ^bb66:  // pred: ^bb58
    %443 = llvm.mlir.constant(1 : index) : i64
    %444 = llvm.mlir.constant(2 : index) : i64
    %445 = llvm.mlir.constant(2 : index) : i64
    %446 = llvm.mlir.constant(2 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.constant(4 : index) : i64
    %449 = llvm.mlir.constant(8 : index) : i64
    %450 = llvm.mlir.constant(8 : index) : i64
    %451 = llvm.mlir.null : !llvm.ptr<i32>
    %452 = llvm.getelementptr %451[%450] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %453 = llvm.ptrtoint %452 : !llvm.ptr<i32> to i64
    %454 = llvm.mlir.constant(16 : index) : i64
    %455 = llvm.add %453, %454  : i64
    %456 = llvm.call @malloc(%455) : (i64) -> !llvm.ptr<i8>
    %457 = llvm.bitcast %456 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %458 = llvm.ptrtoint %457 : !llvm.ptr<i32> to i64
    %459 = llvm.mlir.constant(1 : index) : i64
    %460 = llvm.sub %454, %459  : i64
    %461 = llvm.add %458, %460  : i64
    %462 = llvm.urem %461, %454  : i64
    %463 = llvm.sub %461, %462  : i64
    %464 = llvm.inttoptr %463 : i64 to !llvm.ptr<i32>
    %465 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %466 = llvm.insertvalue %457, %465[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.insertvalue %464, %466[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.mlir.constant(0 : index) : i64
    %469 = llvm.insertvalue %468, %467[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.insertvalue %443, %469[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.insertvalue %444, %470[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.insertvalue %445, %471[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.insertvalue %446, %472[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %449, %473[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %448, %474[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %446, %475[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.insertvalue %447, %476[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.mlir.constant(0 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%478 : i64)
  ^bb67(%481: i64):  // 2 preds: ^bb66, ^bb77
    %482 = llvm.icmp "slt" %481, %479 : i64
    llvm.cond_br %482, ^bb68, ^bb78
  ^bb68:  // pred: ^bb67
    %483 = llvm.mlir.constant(0 : index) : i64
    %484 = llvm.mlir.constant(2 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%483 : i64)
  ^bb69(%486: i64):  // 2 preds: ^bb68, ^bb76
    %487 = llvm.icmp "slt" %486, %484 : i64
    llvm.cond_br %487, ^bb70, ^bb77
  ^bb70:  // pred: ^bb69
    %488 = llvm.mlir.constant(0 : index) : i64
    %489 = llvm.mlir.constant(2 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%488 : i64)
  ^bb71(%491: i64):  // 2 preds: ^bb70, ^bb75
    %492 = llvm.icmp "slt" %491, %489 : i64
    llvm.cond_br %492, ^bb72, ^bb76
  ^bb72:  // pred: ^bb71
    %493 = llvm.mlir.constant(0 : index) : i64
    %494 = llvm.mlir.constant(2 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%493 : i64)
  ^bb73(%496: i64):  // 2 preds: ^bb72, ^bb74
    %497 = llvm.icmp "slt" %496, %494 : i64
    llvm.cond_br %497, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %498 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.mlir.constant(2 : index) : i64
    %500 = llvm.mul %481, %499  : i64
    %501 = llvm.mlir.constant(2 : index) : i64
    %502 = llvm.mul %28, %501  : i64
    %503 = llvm.add %500, %502  : i64
    %504 = llvm.mlir.constant(2 : index) : i64
    %505 = llvm.mul %28, %504  : i64
    %506 = llvm.add %503, %505  : i64
    %507 = llvm.add %506, %496  : i64
    %508 = llvm.getelementptr %498[%507] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %509 = llvm.load %508 : !llvm.ptr<i32>
    %510 = llvm.extractvalue %187[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %511 = llvm.mlir.constant(4 : index) : i64
    %512 = llvm.mul %486, %511  : i64
    %513 = llvm.mlir.constant(2 : index) : i64
    %514 = llvm.mul %491, %513  : i64
    %515 = llvm.add %512, %514  : i64
    %516 = llvm.add %515, %496  : i64
    %517 = llvm.getelementptr %510[%516] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %518 = llvm.load %517 : !llvm.ptr<i32>
    %519 = llvm.icmp "slt" %509, %518 : i32
    %520 = llvm.select %519, %509, %518 : i1, i32
    %521 = llvm.extractvalue %477[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.mlir.constant(8 : index) : i64
    %523 = llvm.mul %481, %522  : i64
    %524 = llvm.mlir.constant(4 : index) : i64
    %525 = llvm.mul %486, %524  : i64
    %526 = llvm.add %523, %525  : i64
    %527 = llvm.mlir.constant(2 : index) : i64
    %528 = llvm.mul %491, %527  : i64
    %529 = llvm.add %526, %528  : i64
    %530 = llvm.add %529, %496  : i64
    %531 = llvm.getelementptr %521[%530] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %520, %531 : !llvm.ptr<i32>
    %532 = llvm.add %496, %495  : i64
    llvm.br ^bb73(%532 : i64)
  ^bb75:  // pred: ^bb73
    %533 = llvm.add %491, %490  : i64
    llvm.br ^bb71(%533 : i64)
  ^bb76:  // pred: ^bb71
    %534 = llvm.add %486, %485  : i64
    llvm.br ^bb69(%534 : i64)
  ^bb77:  // pred: ^bb69
    %535 = llvm.add %481, %480  : i64
    llvm.br ^bb67(%535 : i64)
  ^bb78:  // pred: ^bb67
    %536 = llvm.mlir.constant(1 : index) : i64
    %537 = llvm.mlir.constant(2 : index) : i64
    %538 = llvm.mlir.constant(2 : index) : i64
    %539 = llvm.mlir.constant(2 : index) : i64
    %540 = llvm.mlir.constant(1 : index) : i64
    %541 = llvm.mlir.constant(4 : index) : i64
    %542 = llvm.mlir.constant(8 : index) : i64
    %543 = llvm.mlir.constant(8 : index) : i64
    %544 = llvm.mlir.null : !llvm.ptr<i32>
    %545 = llvm.getelementptr %544[%543] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %546 = llvm.ptrtoint %545 : !llvm.ptr<i32> to i64
    %547 = llvm.mlir.constant(16 : index) : i64
    %548 = llvm.add %546, %547  : i64
    %549 = llvm.call @malloc(%548) : (i64) -> !llvm.ptr<i8>
    %550 = llvm.bitcast %549 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %551 = llvm.ptrtoint %550 : !llvm.ptr<i32> to i64
    %552 = llvm.mlir.constant(1 : index) : i64
    %553 = llvm.sub %547, %552  : i64
    %554 = llvm.add %551, %553  : i64
    %555 = llvm.urem %554, %547  : i64
    %556 = llvm.sub %554, %555  : i64
    %557 = llvm.inttoptr %556 : i64 to !llvm.ptr<i32>
    %558 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %559 = llvm.insertvalue %550, %558[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %560 = llvm.insertvalue %557, %559[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %561 = llvm.mlir.constant(0 : index) : i64
    %562 = llvm.insertvalue %561, %560[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %563 = llvm.insertvalue %536, %562[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %564 = llvm.insertvalue %537, %563[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %565 = llvm.insertvalue %538, %564[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %566 = llvm.insertvalue %539, %565[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %567 = llvm.insertvalue %542, %566[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %568 = llvm.insertvalue %541, %567[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %569 = llvm.insertvalue %539, %568[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %570 = llvm.insertvalue %540, %569[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %571 = llvm.mlir.constant(0 : index) : i64
    %572 = llvm.mlir.constant(1 : index) : i64
    %573 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%571 : i64)
  ^bb79(%574: i64):  // 2 preds: ^bb78, ^bb89
    %575 = llvm.icmp "slt" %574, %572 : i64
    llvm.cond_br %575, ^bb80, ^bb90
  ^bb80:  // pred: ^bb79
    %576 = llvm.mlir.constant(0 : index) : i64
    %577 = llvm.mlir.constant(2 : index) : i64
    %578 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%576 : i64)
  ^bb81(%579: i64):  // 2 preds: ^bb80, ^bb88
    %580 = llvm.icmp "slt" %579, %577 : i64
    llvm.cond_br %580, ^bb82, ^bb89
  ^bb82:  // pred: ^bb81
    %581 = llvm.mlir.constant(0 : index) : i64
    %582 = llvm.mlir.constant(2 : index) : i64
    %583 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb83(%581 : i64)
  ^bb83(%584: i64):  // 2 preds: ^bb82, ^bb87
    %585 = llvm.icmp "slt" %584, %582 : i64
    llvm.cond_br %585, ^bb84, ^bb88
  ^bb84:  // pred: ^bb83
    %586 = llvm.mlir.constant(0 : index) : i64
    %587 = llvm.mlir.constant(2 : index) : i64
    %588 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%586 : i64)
  ^bb85(%589: i64):  // 2 preds: ^bb84, ^bb86
    %590 = llvm.icmp "slt" %589, %587 : i64
    llvm.cond_br %590, ^bb86, ^bb87
  ^bb86:  // pred: ^bb85
    %591 = llvm.extractvalue %477[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %592 = llvm.mlir.constant(8 : index) : i64
    %593 = llvm.mul %574, %592  : i64
    %594 = llvm.mlir.constant(4 : index) : i64
    %595 = llvm.mul %579, %594  : i64
    %596 = llvm.add %593, %595  : i64
    %597 = llvm.mlir.constant(2 : index) : i64
    %598 = llvm.mul %584, %597  : i64
    %599 = llvm.add %596, %598  : i64
    %600 = llvm.add %599, %589  : i64
    %601 = llvm.getelementptr %591[%600] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %602 = llvm.load %601 : !llvm.ptr<i32>
    %603 = llvm.extractvalue %36[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %604 = llvm.load %603 : !llvm.ptr<i32>
    %605 = llvm.icmp "slt" %602, %604 : i32
    %606 = llvm.select %605, %604, %602 : i1, i32
    %607 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %608 = llvm.load %607 : !llvm.ptr<i32>
    %609 = llvm.icmp "slt" %606, %608 : i32
    %610 = llvm.select %609, %606, %608 : i1, i32
    %611 = llvm.extractvalue %570[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %612 = llvm.mlir.constant(8 : index) : i64
    %613 = llvm.mul %574, %612  : i64
    %614 = llvm.mlir.constant(4 : index) : i64
    %615 = llvm.mul %579, %614  : i64
    %616 = llvm.add %613, %615  : i64
    %617 = llvm.mlir.constant(2 : index) : i64
    %618 = llvm.mul %584, %617  : i64
    %619 = llvm.add %616, %618  : i64
    %620 = llvm.add %619, %589  : i64
    %621 = llvm.getelementptr %611[%620] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %610, %621 : !llvm.ptr<i32>
    %622 = llvm.add %589, %588  : i64
    llvm.br ^bb85(%622 : i64)
  ^bb87:  // pred: ^bb85
    %623 = llvm.add %584, %583  : i64
    llvm.br ^bb83(%623 : i64)
  ^bb88:  // pred: ^bb83
    %624 = llvm.add %579, %578  : i64
    llvm.br ^bb81(%624 : i64)
  ^bb89:  // pred: ^bb81
    %625 = llvm.add %574, %573  : i64
    llvm.br ^bb79(%625 : i64)
  ^bb90:  // pred: ^bb79
    %626 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %627 = llvm.insertvalue %259, %626[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %628 = llvm.insertvalue %570, %627[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %628 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0", "v5_0", "v0_0"], llvm.emit_c_interface, output_names = ["v1_0", "v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %9 = llvm.extractvalue %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.extractvalue %8[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.extractvalue %8[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.extractvalue %8[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.extractvalue %8[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.extractvalue %8[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.extractvalue %8[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %17 = llvm.extractvalue %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %16[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %16[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %16[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %16[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %16[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %16[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.extractvalue %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.extractvalue %16[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.extractvalue %16[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.extractvalue %16[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %9, %10, %11, %12, %13, %14, %15, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %28, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %33 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %35 = llvm.call @omTensorGetDataPtr(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %36 = llvm.bitcast %35 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %37 = llvm.insertvalue %36, %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.insertvalue %36, %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.mlir.constant(0 : i64) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.call @omTensorGetShape(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %42 = llvm.call @omTensorGetStrides(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %43 = llvm.mlir.constant(0 : i64) : i64
    %44 = llvm.getelementptr %41[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %40[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.getelementptr %42[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.mlir.constant(1 : i64) : i64
    %51 = llvm.getelementptr %41[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.getelementptr %42[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %56, %33 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %57 = llvm.mlir.constant(2 : i64) : i64
    %58 = llvm.getelementptr %0[%57] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %59 = llvm.load %58 : !llvm.ptr<ptr<i8>>
    %60 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %61 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %62 = llvm.call @omTensorGetDataPtr(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %63 = llvm.bitcast %62 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %64 = llvm.insertvalue %63, %61[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %63, %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(0 : i64) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.call @omTensorGetShape(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %69 = llvm.call @omTensorGetStrides(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %70 = llvm.mlir.constant(0 : i64) : i64
    %71 = llvm.getelementptr %68[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %72 = llvm.load %71 : !llvm.ptr<i64>
    %73 = llvm.insertvalue %72, %67[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %69[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %75 = llvm.load %74 : !llvm.ptr<i64>
    %76 = llvm.insertvalue %75, %73[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(1 : i64) : i64
    %78 = llvm.getelementptr %68[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %79 = llvm.load %78 : !llvm.ptr<i64>
    %80 = llvm.insertvalue %79, %76[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %69[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %82 = llvm.load %81 : !llvm.ptr<i64>
    %83 = llvm.insertvalue %82, %80[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(2 : i64) : i64
    %85 = llvm.getelementptr %68[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %86 = llvm.load %85 : !llvm.ptr<i64>
    %87 = llvm.insertvalue %86, %83[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %69[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %89 = llvm.load %88 : !llvm.ptr<i64>
    %90 = llvm.insertvalue %89, %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(3 : i64) : i64
    %92 = llvm.getelementptr %68[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %93 = llvm.load %92 : !llvm.ptr<i64>
    %94 = llvm.insertvalue %93, %90[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %69[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %96 = llvm.load %95 : !llvm.ptr<i64>
    %97 = llvm.insertvalue %96, %94[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %97, %60 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %33, %60) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %98 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %99 = llvm.extractvalue %98[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %100 = llvm.extractvalue %98[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %101 = llvm.mlir.constant(2 : i64) : i64
    %102 = llvm.mlir.constant(16 : i64) : i64
    %103 = llvm.call @malloc(%102) : (i64) -> !llvm.ptr<i8>
    %104 = llvm.bitcast %103 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %105 = llvm.mlir.constant(3 : i64) : i64
    %106 = llvm.call @omTensorCreateUntyped(%105) : (i64) -> !llvm.ptr<i8>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %99[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.bitcast %108 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %110 = llvm.extractvalue %99[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %111 = llvm.bitcast %110 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%106, %107, %109, %111) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %112 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%106, %112) : (!llvm.ptr<i8>, i64) -> ()
    %113 = llvm.call @omTensorGetShape(%106) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %114 = llvm.call @omTensorGetStrides(%106) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %115 = llvm.mlir.constant(0 : i64) : i64
    %116 = llvm.extractvalue %99[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %117 = llvm.getelementptr %113[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.extractvalue %99[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %119 = llvm.getelementptr %114[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.mlir.constant(1 : i64) : i64
    %121 = llvm.extractvalue %99[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.getelementptr %113[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.extractvalue %99[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %124 = llvm.getelementptr %114[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.mlir.constant(2 : i64) : i64
    %126 = llvm.extractvalue %99[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %127 = llvm.getelementptr %113[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %127 : !llvm.ptr<i64>
    %128 = llvm.extractvalue %99[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %129 = llvm.getelementptr %114[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.mlir.constant(0 : i64) : i64
    %131 = llvm.getelementptr %104[%130] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %106, %131 : !llvm.ptr<ptr<i8>>
    %132 = llvm.mlir.constant(4 : i64) : i64
    %133 = llvm.call @omTensorCreateUntyped(%132) : (i64) -> !llvm.ptr<i8>
    %134 = llvm.mlir.constant(1 : i64) : i64
    %135 = llvm.extractvalue %100[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.bitcast %135 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %137 = llvm.extractvalue %100[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.bitcast %137 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%133, %134, %136, %138) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %139 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%133, %139) : (!llvm.ptr<i8>, i64) -> ()
    %140 = llvm.call @omTensorGetShape(%133) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %141 = llvm.call @omTensorGetStrides(%133) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %142 = llvm.mlir.constant(0 : i64) : i64
    %143 = llvm.extractvalue %100[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.getelementptr %140[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %143, %144 : !llvm.ptr<i64>
    %145 = llvm.extractvalue %100[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %141[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.mlir.constant(1 : i64) : i64
    %148 = llvm.extractvalue %100[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.getelementptr %140[%147] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %148, %149 : !llvm.ptr<i64>
    %150 = llvm.extractvalue %100[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.getelementptr %141[%147] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.mlir.constant(2 : i64) : i64
    %153 = llvm.extractvalue %100[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.getelementptr %140[%152] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %153, %154 : !llvm.ptr<i64>
    %155 = llvm.extractvalue %100[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.getelementptr %141[%152] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %155, %156 : !llvm.ptr<i64>
    %157 = llvm.mlir.constant(3 : i64) : i64
    %158 = llvm.extractvalue %100[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.getelementptr %140[%157] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %158, %159 : !llvm.ptr<i64>
    %160 = llvm.extractvalue %100[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.getelementptr %141[%157] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %160, %161 : !llvm.ptr<i64>
    %162 = llvm.mlir.constant(1 : i64) : i64
    %163 = llvm.getelementptr %104[%162] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %133, %163 : !llvm.ptr<ptr<i8>>
    %164 = llvm.call @omTensorListCreate(%104, %101, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %164 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<196 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<196 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<138 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<138 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

