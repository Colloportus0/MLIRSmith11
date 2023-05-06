module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<7> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i1>, %arg12: !llvm.ptr<i1>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v5_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v2_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %arg16, %16[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg17, %18[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.mlir.constant(-1 : i64) : i64
    %21 = llvm.mlir.constant(0 : i64) : i64
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %25 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %26 = llvm.insertvalue %24, %25[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %27 = llvm.insertvalue %24, %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.insertvalue %28, %27[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.mlir.constant(2 : index) : i64
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.mlir.constant(2 : index) : i64
    %36 = llvm.mlir.constant(2 : index) : i64
    %37 = llvm.mlir.constant(2 : index) : i64
    %38 = llvm.mlir.null : !llvm.ptr<i64>
    %39 = llvm.getelementptr %38[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %40 = llvm.ptrtoint %39 : !llvm.ptr<i64> to i64
    %41 = llvm.mlir.constant(16 : index) : i64
    %42 = llvm.add %40, %41  : i64
    %43 = llvm.call @malloc(%42) : (i64) -> !llvm.ptr<i8>
    %44 = llvm.bitcast %43 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %45 = llvm.ptrtoint %44 : !llvm.ptr<i64> to i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.sub %41, %46  : i64
    %48 = llvm.add %45, %47  : i64
    %49 = llvm.urem %48, %41  : i64
    %50 = llvm.sub %48, %49  : i64
    %51 = llvm.inttoptr %50 : i64 to !llvm.ptr<i64>
    %52 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %53 = llvm.insertvalue %44, %52[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %51, %53[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.insertvalue %55, %54[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %30, %56[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %31, %57[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %32, %58[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %33, %59[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %36, %60[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %35, %61[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %33, %62[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %34, %63[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%65 : i64)
  ^bb1(%68: i64):  // 2 preds: ^bb0, ^bb11
    %69 = llvm.icmp "slt" %68, %66 : i64
    llvm.cond_br %69, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%70 : i64)
  ^bb3(%73: i64):  // 2 preds: ^bb2, ^bb10
    %74 = llvm.icmp "slt" %73, %71 : i64
    llvm.cond_br %74, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%75 : i64)
  ^bb5(%78: i64):  // 2 preds: ^bb4, ^bb9
    %79 = llvm.icmp "slt" %78, %76 : i64
    llvm.cond_br %79, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.mlir.constant(2 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%80 : i64)
  ^bb7(%83: i64):  // 2 preds: ^bb6, ^bb8
    %84 = llvm.icmp "slt" %83, %81 : i64
    llvm.cond_br %84, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %85 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mul %68, %86  : i64
    %88 = llvm.mlir.constant(2 : index) : i64
    %89 = llvm.mul %73, %88  : i64
    %90 = llvm.add %87, %89  : i64
    %91 = llvm.mlir.constant(2 : index) : i64
    %92 = llvm.mul %78, %91  : i64
    %93 = llvm.add %90, %92  : i64
    %94 = llvm.add %93, %83  : i64
    %95 = llvm.getelementptr %85[%94] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %96 = llvm.load %95 : !llvm.ptr<i32>
    %97 = llvm.sext %96 : i32 to i64
    %98 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.mlir.constant(2 : index) : i64
    %100 = llvm.mul %68, %99  : i64
    %101 = llvm.mlir.constant(2 : index) : i64
    %102 = llvm.mul %73, %101  : i64
    %103 = llvm.add %100, %102  : i64
    %104 = llvm.mlir.constant(2 : index) : i64
    %105 = llvm.mul %78, %104  : i64
    %106 = llvm.add %103, %105  : i64
    %107 = llvm.add %106, %83  : i64
    %108 = llvm.getelementptr %98[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %108 : !llvm.ptr<i64>
    %109 = llvm.add %83, %82  : i64
    llvm.br ^bb7(%109 : i64)
  ^bb9:  // pred: ^bb7
    %110 = llvm.add %78, %77  : i64
    llvm.br ^bb5(%110 : i64)
  ^bb10:  // pred: ^bb5
    %111 = llvm.add %73, %72  : i64
    llvm.br ^bb3(%111 : i64)
  ^bb11:  // pred: ^bb3
    %112 = llvm.add %68, %67  : i64
    llvm.br ^bb1(%112 : i64)
  ^bb12:  // pred: ^bb1
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.constant(2 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.constant(2 : index) : i64
    %118 = llvm.mlir.constant(2 : index) : i64
    %119 = llvm.mlir.null : !llvm.ptr<i64>
    %120 = llvm.getelementptr %119[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %121 = llvm.ptrtoint %120 : !llvm.ptr<i64> to i64
    %122 = llvm.mlir.constant(16 : index) : i64
    %123 = llvm.add %121, %122  : i64
    %124 = llvm.call @malloc(%123) : (i64) -> !llvm.ptr<i8>
    %125 = llvm.bitcast %124 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %126 = llvm.ptrtoint %125 : !llvm.ptr<i64> to i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.sub %122, %127  : i64
    %129 = llvm.add %126, %128  : i64
    %130 = llvm.urem %129, %122  : i64
    %131 = llvm.sub %129, %130  : i64
    %132 = llvm.inttoptr %131 : i64 to !llvm.ptr<i64>
    %133 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %134 = llvm.insertvalue %125, %133[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %135 = llvm.insertvalue %132, %134[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.insertvalue %136, %135[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %138 = llvm.insertvalue %113, %137[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %139 = llvm.insertvalue %114, %138[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %140 = llvm.insertvalue %115, %139[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %141 = llvm.insertvalue %117, %140[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %142 = llvm.insertvalue %115, %141[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %143 = llvm.insertvalue %116, %142[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %144 = llvm.mlir.constant(0 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%144 : i64)
  ^bb13(%147: i64):  // 2 preds: ^bb12, ^bb20
    %148 = llvm.icmp "slt" %147, %145 : i64
    llvm.cond_br %148, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %149 = llvm.mlir.constant(0 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%149 : i64)
  ^bb15(%152: i64):  // 2 preds: ^bb14, ^bb19
    %153 = llvm.icmp "slt" %152, %150 : i64
    llvm.cond_br %153, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%154 : i64)
  ^bb17(%157: i64):  // 2 preds: ^bb16, ^bb18
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %159 = llvm.extractvalue %143[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %160 = llvm.mlir.constant(2 : index) : i64
    %161 = llvm.mul %147, %160  : i64
    %162 = llvm.mlir.constant(2 : index) : i64
    %163 = llvm.mul %152, %162  : i64
    %164 = llvm.add %161, %163  : i64
    %165 = llvm.add %164, %157  : i64
    %166 = llvm.getelementptr %159[%165] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %21, %166 : !llvm.ptr<i64>
    %167 = llvm.add %157, %156  : i64
    llvm.br ^bb17(%167 : i64)
  ^bb19:  // pred: ^bb17
    %168 = llvm.add %152, %151  : i64
    llvm.br ^bb15(%168 : i64)
  ^bb20:  // pred: ^bb15
    %169 = llvm.add %147, %146  : i64
    llvm.br ^bb13(%169 : i64)
  ^bb21:  // pred: ^bb13
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%170 : i64)
  ^bb22(%173: i64):  // 2 preds: ^bb21, ^bb32
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%175 : i64)
  ^bb24(%178: i64):  // 2 preds: ^bb23, ^bb31
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%180 : i64)
  ^bb26(%183: i64):  // 2 preds: ^bb25, ^bb30
    %184 = llvm.icmp "slt" %183, %181 : i64
    llvm.cond_br %184, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(2 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%185 : i64)
  ^bb28(%188: i64):  // 2 preds: ^bb27, ^bb29
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %190 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mul %173, %191  : i64
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mul %178, %193  : i64
    %195 = llvm.add %192, %194  : i64
    %196 = llvm.mlir.constant(2 : index) : i64
    %197 = llvm.mul %183, %196  : i64
    %198 = llvm.add %195, %197  : i64
    %199 = llvm.add %198, %188  : i64
    %200 = llvm.getelementptr %190[%199] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %201 = llvm.load %200 : !llvm.ptr<i64>
    %202 = llvm.extractvalue %143[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %203 = llvm.mlir.constant(2 : index) : i64
    %204 = llvm.mul %178, %203  : i64
    %205 = llvm.mlir.constant(2 : index) : i64
    %206 = llvm.mul %183, %205  : i64
    %207 = llvm.add %204, %206  : i64
    %208 = llvm.add %207, %188  : i64
    %209 = llvm.getelementptr %202[%208] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %210 = llvm.load %209 : !llvm.ptr<i64>
    %211 = llvm.add %210, %201  : i64
    %212 = llvm.extractvalue %143[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mul %178, %213  : i64
    %215 = llvm.mlir.constant(2 : index) : i64
    %216 = llvm.mul %183, %215  : i64
    %217 = llvm.add %214, %216  : i64
    %218 = llvm.add %217, %188  : i64
    %219 = llvm.getelementptr %212[%218] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %211, %219 : !llvm.ptr<i64>
    %220 = llvm.add %188, %187  : i64
    llvm.br ^bb28(%220 : i64)
  ^bb30:  // pred: ^bb28
    %221 = llvm.add %183, %182  : i64
    llvm.br ^bb26(%221 : i64)
  ^bb31:  // pred: ^bb26
    %222 = llvm.add %178, %177  : i64
    llvm.br ^bb24(%222 : i64)
  ^bb32:  // pred: ^bb24
    %223 = llvm.add %173, %172  : i64
    llvm.br ^bb22(%223 : i64)
  ^bb33:  // pred: ^bb22
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.constant(2 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.constant(2 : index) : i64
    %230 = llvm.mlir.constant(2 : index) : i64
    %231 = llvm.mlir.constant(2 : index) : i64
    %232 = llvm.mlir.null : !llvm.ptr<i32>
    %233 = llvm.getelementptr %232[%231] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %234 = llvm.ptrtoint %233 : !llvm.ptr<i32> to i64
    %235 = llvm.mlir.constant(16 : index) : i64
    %236 = llvm.add %234, %235  : i64
    %237 = llvm.call @malloc(%236) : (i64) -> !llvm.ptr<i8>
    %238 = llvm.bitcast %237 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %239 = llvm.ptrtoint %238 : !llvm.ptr<i32> to i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.sub %235, %240  : i64
    %242 = llvm.add %239, %241  : i64
    %243 = llvm.urem %242, %235  : i64
    %244 = llvm.sub %242, %243  : i64
    %245 = llvm.inttoptr %244 : i64 to !llvm.ptr<i32>
    %246 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %247 = llvm.insertvalue %238, %246[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.insertvalue %245, %247[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.insertvalue %249, %248[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.insertvalue %224, %250[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.insertvalue %225, %251[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.insertvalue %226, %252[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.insertvalue %227, %253[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.insertvalue %230, %254[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.insertvalue %229, %255[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.insertvalue %227, %256[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.insertvalue %228, %257[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%259 : i64)
  ^bb34(%262: i64):  // 2 preds: ^bb33, ^bb44
    %263 = llvm.icmp "slt" %262, %260 : i64
    llvm.cond_br %263, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%264 : i64)
  ^bb36(%267: i64):  // 2 preds: ^bb35, ^bb43
    %268 = llvm.icmp "slt" %267, %265 : i64
    llvm.cond_br %268, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %269 = llvm.mlir.constant(0 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%269 : i64)
  ^bb38(%272: i64):  // 2 preds: ^bb37, ^bb42
    %273 = llvm.icmp "slt" %272, %270 : i64
    llvm.cond_br %273, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %274 = llvm.mlir.constant(0 : index) : i64
    %275 = llvm.mlir.constant(2 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%274 : i64)
  ^bb40(%277: i64):  // 2 preds: ^bb39, ^bb41
    %278 = llvm.icmp "slt" %277, %275 : i64
    llvm.cond_br %278, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %279 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %280 = llvm.add %272, %22  : i64
    %281 = llvm.getelementptr %279[%280] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %282 = llvm.load %281 : !llvm.ptr<i1>
    %283 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %284 = llvm.load %283 : !llvm.ptr<i32>
    %285 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %286 = llvm.mlir.constant(2 : index) : i64
    %287 = llvm.mul %262, %286  : i64
    %288 = llvm.mlir.constant(2 : index) : i64
    %289 = llvm.mul %267, %288  : i64
    %290 = llvm.add %287, %289  : i64
    %291 = llvm.mlir.constant(2 : index) : i64
    %292 = llvm.mul %272, %291  : i64
    %293 = llvm.add %290, %292  : i64
    %294 = llvm.add %293, %277  : i64
    %295 = llvm.getelementptr %285[%294] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %296 = llvm.load %295 : !llvm.ptr<i32>
    %297 = llvm.select %282, %284, %296 : i1, i32
    %298 = llvm.extractvalue %258[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.mlir.constant(2 : index) : i64
    %300 = llvm.mul %262, %299  : i64
    %301 = llvm.mlir.constant(2 : index) : i64
    %302 = llvm.mul %267, %301  : i64
    %303 = llvm.add %300, %302  : i64
    %304 = llvm.mlir.constant(2 : index) : i64
    %305 = llvm.mul %272, %304  : i64
    %306 = llvm.add %303, %305  : i64
    %307 = llvm.add %306, %277  : i64
    %308 = llvm.getelementptr %298[%307] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %297, %308 : !llvm.ptr<i32>
    %309 = llvm.add %277, %276  : i64
    llvm.br ^bb40(%309 : i64)
  ^bb42:  // pred: ^bb40
    %310 = llvm.add %272, %271  : i64
    llvm.br ^bb38(%310 : i64)
  ^bb43:  // pred: ^bb38
    %311 = llvm.add %267, %266  : i64
    llvm.br ^bb36(%311 : i64)
  ^bb44:  // pred: ^bb36
    %312 = llvm.add %262, %261  : i64
    llvm.br ^bb34(%312 : i64)
  ^bb45:  // pred: ^bb34
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.constant(2 : index) : i64
    %318 = llvm.mlir.constant(2 : index) : i64
    %319 = llvm.mlir.null : !llvm.ptr<i64>
    %320 = llvm.getelementptr %319[%318] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %321 = llvm.ptrtoint %320 : !llvm.ptr<i64> to i64
    %322 = llvm.mlir.constant(16 : index) : i64
    %323 = llvm.add %321, %322  : i64
    %324 = llvm.call @malloc(%323) : (i64) -> !llvm.ptr<i8>
    %325 = llvm.bitcast %324 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %326 = llvm.ptrtoint %325 : !llvm.ptr<i64> to i64
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.sub %322, %327  : i64
    %329 = llvm.add %326, %328  : i64
    %330 = llvm.urem %329, %322  : i64
    %331 = llvm.sub %329, %330  : i64
    %332 = llvm.inttoptr %331 : i64 to !llvm.ptr<i64>
    %333 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %334 = llvm.insertvalue %325, %333[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %335 = llvm.insertvalue %332, %334[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %336 = llvm.mlir.constant(0 : index) : i64
    %337 = llvm.insertvalue %336, %335[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %338 = llvm.insertvalue %313, %337[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %339 = llvm.insertvalue %314, %338[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %340 = llvm.insertvalue %315, %339[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %341 = llvm.insertvalue %317, %340[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %342 = llvm.insertvalue %315, %341[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %343 = llvm.insertvalue %316, %342[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %344 = llvm.mlir.constant(0 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%344 : i64)
  ^bb46(%347: i64):  // 2 preds: ^bb45, ^bb53
    %348 = llvm.icmp "slt" %347, %345 : i64
    llvm.cond_br %348, ^bb47, ^bb54
  ^bb47:  // pred: ^bb46
    %349 = llvm.mlir.constant(0 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%349 : i64)
  ^bb48(%352: i64):  // 2 preds: ^bb47, ^bb52
    %353 = llvm.icmp "slt" %352, %350 : i64
    llvm.cond_br %353, ^bb49, ^bb53
  ^bb49:  // pred: ^bb48
    %354 = llvm.mlir.constant(0 : index) : i64
    %355 = llvm.mlir.constant(2 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%354 : i64)
  ^bb50(%357: i64):  // 2 preds: ^bb49, ^bb51
    %358 = llvm.icmp "slt" %357, %355 : i64
    llvm.cond_br %358, ^bb51, ^bb52
  ^bb51:  // pred: ^bb50
    %359 = llvm.extractvalue %343[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %360 = llvm.mlir.constant(2 : index) : i64
    %361 = llvm.mul %347, %360  : i64
    %362 = llvm.mlir.constant(2 : index) : i64
    %363 = llvm.mul %352, %362  : i64
    %364 = llvm.add %361, %363  : i64
    %365 = llvm.add %364, %357  : i64
    %366 = llvm.getelementptr %359[%365] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %20, %366 : !llvm.ptr<i64>
    %367 = llvm.add %357, %356  : i64
    llvm.br ^bb50(%367 : i64)
  ^bb52:  // pred: ^bb50
    %368 = llvm.add %352, %351  : i64
    llvm.br ^bb48(%368 : i64)
  ^bb53:  // pred: ^bb48
    %369 = llvm.add %347, %346  : i64
    llvm.br ^bb46(%369 : i64)
  ^bb54:  // pred: ^bb46
    %370 = llvm.mlir.constant(0 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%370 : i64)
  ^bb55(%373: i64):  // 2 preds: ^bb54, ^bb65
    %374 = llvm.icmp "slt" %373, %371 : i64
    llvm.cond_br %374, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %375 = llvm.mlir.constant(0 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%375 : i64)
  ^bb57(%378: i64):  // 2 preds: ^bb56, ^bb64
    %379 = llvm.icmp "slt" %378, %376 : i64
    llvm.cond_br %379, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %380 = llvm.mlir.constant(0 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%380 : i64)
  ^bb59(%383: i64):  // 2 preds: ^bb58, ^bb63
    %384 = llvm.icmp "slt" %383, %381 : i64
    llvm.cond_br %384, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %385 = llvm.mlir.constant(0 : index) : i64
    %386 = llvm.mlir.constant(2 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%385 : i64)
  ^bb61(%388: i64):  // 2 preds: ^bb60, ^bb62
    %389 = llvm.icmp "slt" %388, %386 : i64
    llvm.cond_br %389, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %390 = llvm.extractvalue %258[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.mlir.constant(2 : index) : i64
    %392 = llvm.mul %373, %391  : i64
    %393 = llvm.mlir.constant(2 : index) : i64
    %394 = llvm.mul %378, %393  : i64
    %395 = llvm.add %392, %394  : i64
    %396 = llvm.mlir.constant(2 : index) : i64
    %397 = llvm.mul %383, %396  : i64
    %398 = llvm.add %395, %397  : i64
    %399 = llvm.add %398, %388  : i64
    %400 = llvm.getelementptr %390[%399] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %401 = llvm.load %400 : !llvm.ptr<i32>
    %402 = llvm.extractvalue %343[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %403 = llvm.mlir.constant(2 : index) : i64
    %404 = llvm.mul %373, %403  : i64
    %405 = llvm.mlir.constant(2 : index) : i64
    %406 = llvm.mul %383, %405  : i64
    %407 = llvm.add %404, %406  : i64
    %408 = llvm.add %407, %388  : i64
    %409 = llvm.getelementptr %402[%408] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %410 = llvm.load %409 : !llvm.ptr<i64>
    %411 = llvm.icmp "slt" %410, %21 : i64
    %412 = llvm.select %411, %21, %410 : i1, i64
    %413 = llvm.extractvalue %258[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.mlir.constant(2 : index) : i64
    %415 = llvm.mul %373, %414  : i64
    %416 = llvm.mlir.constant(2 : index) : i64
    %417 = llvm.mul %412, %416  : i64
    %418 = llvm.add %415, %417  : i64
    %419 = llvm.mlir.constant(2 : index) : i64
    %420 = llvm.mul %383, %419  : i64
    %421 = llvm.add %418, %420  : i64
    %422 = llvm.add %421, %388  : i64
    %423 = llvm.getelementptr %413[%422] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %424 = llvm.load %423 : !llvm.ptr<i32>
    %425 = llvm.icmp "sgt" %401, %424 : i32
    %426 = llvm.select %425, %378, %412 : i1, i64
    %427 = llvm.extractvalue %343[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %428 = llvm.mlir.constant(2 : index) : i64
    %429 = llvm.mul %373, %428  : i64
    %430 = llvm.mlir.constant(2 : index) : i64
    %431 = llvm.mul %383, %430  : i64
    %432 = llvm.add %429, %431  : i64
    %433 = llvm.add %432, %388  : i64
    %434 = llvm.getelementptr %427[%433] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %426, %434 : !llvm.ptr<i64>
    %435 = llvm.add %388, %387  : i64
    llvm.br ^bb61(%435 : i64)
  ^bb63:  // pred: ^bb61
    %436 = llvm.add %383, %382  : i64
    llvm.br ^bb59(%436 : i64)
  ^bb64:  // pred: ^bb59
    %437 = llvm.add %378, %377  : i64
    llvm.br ^bb57(%437 : i64)
  ^bb65:  // pred: ^bb57
    %438 = llvm.add %373, %372  : i64
    llvm.br ^bb55(%438 : i64)
  ^bb66:  // pred: ^bb55
    %439 = llvm.mlir.constant(1 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    %441 = llvm.mlir.constant(2 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    %443 = llvm.mlir.constant(2 : index) : i64
    %444 = llvm.mlir.constant(2 : index) : i64
    %445 = llvm.mlir.null : !llvm.ptr<i64>
    %446 = llvm.getelementptr %445[%444] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %447 = llvm.ptrtoint %446 : !llvm.ptr<i64> to i64
    %448 = llvm.mlir.constant(16 : index) : i64
    %449 = llvm.add %447, %448  : i64
    %450 = llvm.call @malloc(%449) : (i64) -> !llvm.ptr<i8>
    %451 = llvm.bitcast %450 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %452 = llvm.ptrtoint %451 : !llvm.ptr<i64> to i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.sub %448, %453  : i64
    %455 = llvm.add %452, %454  : i64
    %456 = llvm.urem %455, %448  : i64
    %457 = llvm.sub %455, %456  : i64
    %458 = llvm.inttoptr %457 : i64 to !llvm.ptr<i64>
    %459 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %460 = llvm.insertvalue %451, %459[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %461 = llvm.insertvalue %458, %460[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %462 = llvm.mlir.constant(0 : index) : i64
    %463 = llvm.insertvalue %462, %461[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %464 = llvm.insertvalue %439, %463[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %465 = llvm.insertvalue %440, %464[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %466 = llvm.insertvalue %441, %465[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %467 = llvm.insertvalue %443, %466[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %468 = llvm.insertvalue %441, %467[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %469 = llvm.insertvalue %442, %468[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %470 = llvm.mlir.constant(0 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%470 : i64)
  ^bb67(%473: i64):  // 2 preds: ^bb66, ^bb74
    %474 = llvm.icmp "slt" %473, %471 : i64
    llvm.cond_br %474, ^bb68, ^bb75
  ^bb68:  // pred: ^bb67
    %475 = llvm.mlir.constant(0 : index) : i64
    %476 = llvm.mlir.constant(1 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%475 : i64)
  ^bb69(%478: i64):  // 2 preds: ^bb68, ^bb73
    %479 = llvm.icmp "slt" %478, %476 : i64
    llvm.cond_br %479, ^bb70, ^bb74
  ^bb70:  // pred: ^bb69
    %480 = llvm.mlir.constant(0 : index) : i64
    %481 = llvm.mlir.constant(2 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%480 : i64)
  ^bb71(%483: i64):  // 2 preds: ^bb70, ^bb72
    %484 = llvm.icmp "slt" %483, %481 : i64
    llvm.cond_br %484, ^bb72, ^bb73
  ^bb72:  // pred: ^bb71
    %485 = llvm.extractvalue %343[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %486 = llvm.mlir.constant(2 : index) : i64
    %487 = llvm.mul %473, %486  : i64
    %488 = llvm.mlir.constant(2 : index) : i64
    %489 = llvm.mul %478, %488  : i64
    %490 = llvm.add %487, %489  : i64
    %491 = llvm.add %490, %483  : i64
    %492 = llvm.getelementptr %485[%491] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %493 = llvm.load %492 : !llvm.ptr<i64>
    %494 = llvm.extractvalue %343[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %495 = llvm.mlir.constant(2 : index) : i64
    %496 = llvm.mul %473, %495  : i64
    %497 = llvm.mlir.constant(2 : index) : i64
    %498 = llvm.mul %478, %497  : i64
    %499 = llvm.add %496, %498  : i64
    %500 = llvm.add %499, %483  : i64
    %501 = llvm.getelementptr %494[%500] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %502 = llvm.load %501 : !llvm.ptr<i64>
    %503 = llvm.mul %493, %502  : i64
    %504 = llvm.extractvalue %469[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %505 = llvm.mlir.constant(2 : index) : i64
    %506 = llvm.mul %473, %505  : i64
    %507 = llvm.mlir.constant(2 : index) : i64
    %508 = llvm.mul %478, %507  : i64
    %509 = llvm.add %506, %508  : i64
    %510 = llvm.add %509, %483  : i64
    %511 = llvm.getelementptr %504[%510] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %503, %511 : !llvm.ptr<i64>
    %512 = llvm.add %483, %482  : i64
    llvm.br ^bb71(%512 : i64)
  ^bb73:  // pred: ^bb71
    %513 = llvm.add %478, %477  : i64
    llvm.br ^bb69(%513 : i64)
  ^bb74:  // pred: ^bb69
    %514 = llvm.add %473, %472  : i64
    llvm.br ^bb67(%514 : i64)
  ^bb75:  // pred: ^bb67
    %515 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    %516 = llvm.insertvalue %143, %515[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %517 = llvm.insertvalue %469, %516[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %517 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>>) attributes {input_names = ["v5_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v2_0"]} {
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
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i1>, !llvm.ptr<i1>, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %20, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %70, %47 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>>) -> ()
    %71 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %72 = llvm.extractvalue %71[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %73 = llvm.extractvalue %71[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %74 = llvm.mlir.constant(2 : i64) : i64
    %75 = llvm.mlir.constant(16 : i64) : i64
    %76 = llvm.call @malloc(%75) : (i64) -> !llvm.ptr<i8>
    %77 = llvm.bitcast %76 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %72[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %72[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %72[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %72[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %72[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %72[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %72[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(0 : i64) : i64
    %104 = llvm.getelementptr %77[%103] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %104 : !llvm.ptr<ptr<i8>>
    %105 = llvm.mlir.constant(3 : i64) : i64
    %106 = llvm.call @omTensorCreateUntyped(%105) : (i64) -> !llvm.ptr<i8>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %73[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.bitcast %108 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %110 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %111 = llvm.bitcast %110 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%106, %107, %109, %111) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %112 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%106, %112) : (!llvm.ptr<i8>, i64) -> ()
    %113 = llvm.call @omTensorGetShape(%106) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %114 = llvm.call @omTensorGetStrides(%106) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %115 = llvm.mlir.constant(0 : i64) : i64
    %116 = llvm.extractvalue %73[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %117 = llvm.getelementptr %113[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.extractvalue %73[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %119 = llvm.getelementptr %114[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.mlir.constant(1 : i64) : i64
    %121 = llvm.extractvalue %73[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.getelementptr %113[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.extractvalue %73[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %124 = llvm.getelementptr %114[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.mlir.constant(2 : i64) : i64
    %126 = llvm.extractvalue %73[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %127 = llvm.getelementptr %113[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %127 : !llvm.ptr<i64>
    %128 = llvm.extractvalue %73[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %129 = llvm.getelementptr %114[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.mlir.constant(1 : i64) : i64
    %131 = llvm.getelementptr %77[%130] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %106, %131 : !llvm.ptr<ptr<i8>>
    %132 = llvm.call @omTensorListCreate(%77, %74, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %132 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<133 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<133 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<133 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<133 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

