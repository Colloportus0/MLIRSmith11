module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [2 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: !llvm.ptr<i32>, %arg19: !llvm.ptr<i32>, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> attributes {input_names = ["v3_0", "v6_0", "v0_0"], llvm.emit_c_interface, output_names = ["v2_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %arg16, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg17, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %21 = llvm.insertvalue %arg18, %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.insertvalue %arg19, %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.insertvalue %arg20, %22[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.insertvalue %arg21, %23[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %25 = llvm.insertvalue %arg24, %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.insertvalue %arg22, %25[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.insertvalue %arg25, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = llvm.insertvalue %arg23, %27[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %29 = llvm.insertvalue %arg26, %28[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.mlir.constant(0 : i64) : i64
    %31 = llvm.mlir.constant(0 : i32) : i32
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.mlir.constant(2 : index) : i64
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.mlir.constant(2 : index) : i64
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.mlir.constant(2 : index) : i64
    %39 = llvm.mlir.constant(2 : index) : i64
    %40 = llvm.mlir.constant(4 : index) : i64
    %41 = llvm.mlir.null : !llvm.ptr<i32>
    %42 = llvm.getelementptr %41[%40] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %43 = llvm.ptrtoint %42 : !llvm.ptr<i32> to i64
    %44 = llvm.mlir.constant(16 : index) : i64
    %45 = llvm.add %43, %44  : i64
    %46 = llvm.call @malloc(%45) : (i64) -> !llvm.ptr<i8>
    %47 = llvm.bitcast %46 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %48 = llvm.ptrtoint %47 : !llvm.ptr<i32> to i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.sub %44, %49  : i64
    %51 = llvm.add %48, %50  : i64
    %52 = llvm.urem %51, %44  : i64
    %53 = llvm.sub %51, %52  : i64
    %54 = llvm.inttoptr %53 : i64 to !llvm.ptr<i32>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %56 = llvm.insertvalue %47, %55[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %54, %56[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.insertvalue %58, %57[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %33, %59[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %34, %60[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %35, %61[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %36, %62[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %39, %63[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %38, %64[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %36, %65[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %37, %66[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.mlir.constant(2 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%68 : i64)
  ^bb1(%71: i64):  // 2 preds: ^bb0, ^bb11
    %72 = llvm.icmp "slt" %71, %69 : i64
    llvm.cond_br %72, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%73 : i64)
  ^bb3(%76: i64):  // 2 preds: ^bb2, ^bb10
    %77 = llvm.icmp "slt" %76, %74 : i64
    llvm.cond_br %77, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%78 : i64)
  ^bb5(%81: i64):  // 2 preds: ^bb4, ^bb9
    %82 = llvm.icmp "slt" %81, %79 : i64
    llvm.cond_br %82, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%83 : i64)
  ^bb7(%86: i64):  // 2 preds: ^bb6, ^bb8
    %87 = llvm.icmp "slt" %86, %84 : i64
    llvm.cond_br %87, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %88 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mul %71, %89  : i64
    %91 = llvm.mlir.constant(2 : index) : i64
    %92 = llvm.mul %76, %91  : i64
    %93 = llvm.add %90, %92  : i64
    %94 = llvm.mlir.constant(2 : index) : i64
    %95 = llvm.mul %81, %94  : i64
    %96 = llvm.add %93, %95  : i64
    %97 = llvm.add %96, %86  : i64
    %98 = llvm.getelementptr %88[%97] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %99 = llvm.load %98 : !llvm.ptr<i32>
    %100 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.mlir.constant(2 : index) : i64
    %102 = llvm.mul %71, %101  : i64
    %103 = llvm.mlir.constant(2 : index) : i64
    %104 = llvm.mul %76, %103  : i64
    %105 = llvm.add %102, %104  : i64
    %106 = llvm.mlir.constant(2 : index) : i64
    %107 = llvm.mul %81, %106  : i64
    %108 = llvm.add %105, %107  : i64
    %109 = llvm.add %108, %86  : i64
    %110 = llvm.getelementptr %100[%109] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %99, %110 : !llvm.ptr<i32>
    %111 = llvm.add %86, %85  : i64
    llvm.br ^bb7(%111 : i64)
  ^bb9:  // pred: ^bb7
    %112 = llvm.add %81, %80  : i64
    llvm.br ^bb5(%112 : i64)
  ^bb10:  // pred: ^bb5
    %113 = llvm.add %76, %75  : i64
    llvm.br ^bb3(%113 : i64)
  ^bb11:  // pred: ^bb3
    %114 = llvm.add %71, %70  : i64
    llvm.br ^bb1(%114 : i64)
  ^bb12:  // pred: ^bb1
    %115 = llvm.mlir.constant(2 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.null : !llvm.ptr<i32>
    %120 = llvm.getelementptr %119[%115] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %121 = llvm.ptrtoint %120 : !llvm.ptr<i32> to i64
    %122 = llvm.mlir.constant(16 : index) : i64
    %123 = llvm.add %121, %122  : i64
    %124 = llvm.call @malloc(%123) : (i64) -> !llvm.ptr<i8>
    %125 = llvm.bitcast %124 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %126 = llvm.ptrtoint %125 : !llvm.ptr<i32> to i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.sub %122, %127  : i64
    %129 = llvm.add %126, %128  : i64
    %130 = llvm.urem %129, %122  : i64
    %131 = llvm.sub %129, %130  : i64
    %132 = llvm.inttoptr %131 : i64 to !llvm.ptr<i32>
    %133 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %134 = llvm.insertvalue %125, %133[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %135 = llvm.insertvalue %132, %134[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.insertvalue %136, %135[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %138 = llvm.insertvalue %115, %137[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %139 = llvm.insertvalue %116, %138[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %140 = llvm.insertvalue %117, %139[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %141 = llvm.insertvalue %116, %140[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %142 = llvm.insertvalue %117, %141[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %143 = llvm.insertvalue %118, %142[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.null : !llvm.ptr<i32>
    %146 = llvm.getelementptr %145[%144] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %147 = llvm.ptrtoint %146 : !llvm.ptr<i32> to i64
    %148 = llvm.alloca %147 x i32 : (i64) -> !llvm.ptr<i32>
    %149 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %150 = llvm.insertvalue %148, %149[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %151 = llvm.insertvalue %148, %150[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.insertvalue %152, %151[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%154 : i64)
  ^bb13(%157: i64):  // 2 preds: ^bb12, ^bb23
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%159 : i64)
  ^bb15(%162: i64):  // 2 preds: ^bb14, ^bb22
    %163 = llvm.icmp "slt" %162, %160 : i64
    llvm.cond_br %163, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%164 : i64)
  ^bb17(%167: i64):  // 2 preds: ^bb16, ^bb21
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %169 = llvm.extractvalue %153[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %31, %169 : !llvm.ptr<i32>
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%170 : i64)
  ^bb19(%173: i64):  // 2 preds: ^bb18, ^bb20
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %175 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %176 = llvm.add %157, %162  : i64
    %177 = llvm.add %176, %173  : i64
    %178 = llvm.getelementptr %175[%177] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %179 = llvm.load %178 : !llvm.ptr<i32>
    %180 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %181 = llvm.add %173, %167  : i64
    %182 = llvm.getelementptr %180[%181] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %183 = llvm.load %182 : !llvm.ptr<i32>
    %184 = llvm.extractvalue %153[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %185 = llvm.load %184 : !llvm.ptr<i32>
    %186 = llvm.mul %179, %183  : i32
    %187 = llvm.add %185, %186  : i32
    %188 = llvm.extractvalue %153[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %187, %188 : !llvm.ptr<i32>
    %189 = llvm.add %173, %172  : i64
    llvm.br ^bb19(%189 : i64)
  ^bb21:  // pred: ^bb19
    %190 = llvm.extractvalue %153[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %191 = llvm.load %190 : !llvm.ptr<i32>
    %192 = llvm.extractvalue %143[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %193 = llvm.add %157, %162  : i64
    %194 = llvm.add %193, %167  : i64
    %195 = llvm.getelementptr %192[%194] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %191, %195 : !llvm.ptr<i32>
    %196 = llvm.add %167, %166  : i64
    llvm.br ^bb17(%196 : i64)
  ^bb22:  // pred: ^bb17
    %197 = llvm.add %162, %161  : i64
    llvm.br ^bb15(%197 : i64)
  ^bb23:  // pred: ^bb15
    %198 = llvm.add %157, %156  : i64
    llvm.br ^bb13(%198 : i64)
  ^bb24:  // pred: ^bb13
    %199 = llvm.mlir.constant(2 : index) : i64
    %200 = llvm.mlir.constant(2 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.mlir.constant(2 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(2 : index) : i64
    %205 = llvm.mlir.constant(4 : index) : i64
    %206 = llvm.mlir.constant(8 : index) : i64
    %207 = llvm.mlir.null : !llvm.ptr<i32>
    %208 = llvm.getelementptr %207[%206] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %209 = llvm.ptrtoint %208 : !llvm.ptr<i32> to i64
    %210 = llvm.mlir.constant(16 : index) : i64
    %211 = llvm.add %209, %210  : i64
    %212 = llvm.call @malloc(%211) : (i64) -> !llvm.ptr<i8>
    %213 = llvm.bitcast %212 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %214 = llvm.ptrtoint %213 : !llvm.ptr<i32> to i64
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.sub %210, %215  : i64
    %217 = llvm.add %214, %216  : i64
    %218 = llvm.urem %217, %210  : i64
    %219 = llvm.sub %217, %218  : i64
    %220 = llvm.inttoptr %219 : i64 to !llvm.ptr<i32>
    %221 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %222 = llvm.insertvalue %213, %221[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.insertvalue %220, %222[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.insertvalue %224, %223[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.insertvalue %199, %225[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.insertvalue %200, %226[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.insertvalue %201, %227[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.insertvalue %202, %228[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.insertvalue %205, %229[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.insertvalue %204, %230[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.insertvalue %202, %231[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.insertvalue %203, %232[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(2 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%234 : i64)
  ^bb25(%237: i64):  // 2 preds: ^bb24, ^bb35
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %239 = llvm.mlir.constant(0 : index) : i64
    %240 = llvm.mlir.constant(2 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%239 : i64)
  ^bb27(%242: i64):  // 2 preds: ^bb26, ^bb34
    %243 = llvm.icmp "slt" %242, %240 : i64
    llvm.cond_br %243, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%244 : i64)
  ^bb29(%247: i64):  // 2 preds: ^bb28, ^bb33
    %248 = llvm.icmp "slt" %247, %245 : i64
    llvm.cond_br %248, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.mlir.constant(2 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%249 : i64)
  ^bb31(%252: i64):  // 2 preds: ^bb30, ^bb32
    %253 = llvm.icmp "slt" %252, %250 : i64
    llvm.cond_br %253, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %254 = llvm.extractvalue %143[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %255 = llvm.add %242, %247  : i64
    %256 = llvm.add %255, %32  : i64
    %257 = llvm.getelementptr %254[%256] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %258 = llvm.load %257 : !llvm.ptr<i32>
    %259 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.mlir.constant(2 : index) : i64
    %261 = llvm.mul %237, %260  : i64
    %262 = llvm.mlir.constant(2 : index) : i64
    %263 = llvm.mul %32, %262  : i64
    %264 = llvm.add %261, %263  : i64
    %265 = llvm.mlir.constant(2 : index) : i64
    %266 = llvm.mul %247, %265  : i64
    %267 = llvm.add %264, %266  : i64
    %268 = llvm.add %267, %252  : i64
    %269 = llvm.getelementptr %259[%268] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %270 = llvm.load %269 : !llvm.ptr<i32>
    %271 = llvm.icmp "slt" %258, %270 : i32
    %272 = llvm.select %271, %258, %270 : i1, i32
    %273 = llvm.extractvalue %233[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.mlir.constant(4 : index) : i64
    %275 = llvm.mul %237, %274  : i64
    %276 = llvm.mlir.constant(2 : index) : i64
    %277 = llvm.mul %242, %276  : i64
    %278 = llvm.add %275, %277  : i64
    %279 = llvm.mlir.constant(2 : index) : i64
    %280 = llvm.mul %247, %279  : i64
    %281 = llvm.add %278, %280  : i64
    %282 = llvm.add %281, %252  : i64
    %283 = llvm.getelementptr %273[%282] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %272, %283 : !llvm.ptr<i32>
    %284 = llvm.add %252, %251  : i64
    llvm.br ^bb31(%284 : i64)
  ^bb33:  // pred: ^bb31
    %285 = llvm.add %247, %246  : i64
    llvm.br ^bb29(%285 : i64)
  ^bb34:  // pred: ^bb29
    %286 = llvm.add %242, %241  : i64
    llvm.br ^bb27(%286 : i64)
  ^bb35:  // pred: ^bb27
    %287 = llvm.add %237, %236  : i64
    llvm.br ^bb25(%287 : i64)
  ^bb36:  // pred: ^bb25
    %288 = llvm.mlir.constant(2 : index) : i64
    %289 = llvm.mlir.constant(2 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.mlir.constant(2 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mlir.constant(2 : index) : i64
    %294 = llvm.mlir.constant(4 : index) : i64
    %295 = llvm.mlir.constant(8 : index) : i64
    %296 = llvm.mlir.null : !llvm.ptr<i64>
    %297 = llvm.getelementptr %296[%295] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %298 = llvm.ptrtoint %297 : !llvm.ptr<i64> to i64
    %299 = llvm.mlir.constant(16 : index) : i64
    %300 = llvm.add %298, %299  : i64
    %301 = llvm.call @malloc(%300) : (i64) -> !llvm.ptr<i8>
    %302 = llvm.bitcast %301 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %303 = llvm.ptrtoint %302 : !llvm.ptr<i64> to i64
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.sub %299, %304  : i64
    %306 = llvm.add %303, %305  : i64
    %307 = llvm.urem %306, %299  : i64
    %308 = llvm.sub %306, %307  : i64
    %309 = llvm.inttoptr %308 : i64 to !llvm.ptr<i64>
    %310 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %311 = llvm.insertvalue %302, %310[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %309, %311[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.mlir.constant(0 : index) : i64
    %314 = llvm.insertvalue %313, %312[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.insertvalue %288, %314[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.insertvalue %289, %315[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.insertvalue %290, %316[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.insertvalue %291, %317[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.insertvalue %294, %318[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.insertvalue %293, %319[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.insertvalue %291, %320[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.insertvalue %292, %321[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.mlir.constant(2 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%323 : i64)
  ^bb37(%326: i64):  // 2 preds: ^bb36, ^bb47
    %327 = llvm.icmp "slt" %326, %324 : i64
    llvm.cond_br %327, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %328 = llvm.mlir.constant(0 : index) : i64
    %329 = llvm.mlir.constant(2 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%328 : i64)
  ^bb39(%331: i64):  // 2 preds: ^bb38, ^bb46
    %332 = llvm.icmp "slt" %331, %329 : i64
    llvm.cond_br %332, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %333 = llvm.mlir.constant(0 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%333 : i64)
  ^bb41(%336: i64):  // 2 preds: ^bb40, ^bb45
    %337 = llvm.icmp "slt" %336, %334 : i64
    llvm.cond_br %337, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %338 = llvm.mlir.constant(0 : index) : i64
    %339 = llvm.mlir.constant(2 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%338 : i64)
  ^bb43(%341: i64):  // 2 preds: ^bb42, ^bb44
    %342 = llvm.icmp "slt" %341, %339 : i64
    llvm.cond_br %342, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %343 = llvm.extractvalue %233[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.mlir.constant(4 : index) : i64
    %345 = llvm.mul %326, %344  : i64
    %346 = llvm.mlir.constant(2 : index) : i64
    %347 = llvm.mul %331, %346  : i64
    %348 = llvm.add %345, %347  : i64
    %349 = llvm.mlir.constant(2 : index) : i64
    %350 = llvm.mul %336, %349  : i64
    %351 = llvm.add %348, %350  : i64
    %352 = llvm.add %351, %341  : i64
    %353 = llvm.getelementptr %343[%352] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %354 = llvm.load %353 : !llvm.ptr<i32>
    %355 = llvm.sext %354 : i32 to i64
    %356 = llvm.extractvalue %322[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.mlir.constant(4 : index) : i64
    %358 = llvm.mul %326, %357  : i64
    %359 = llvm.mlir.constant(2 : index) : i64
    %360 = llvm.mul %331, %359  : i64
    %361 = llvm.add %358, %360  : i64
    %362 = llvm.mlir.constant(2 : index) : i64
    %363 = llvm.mul %336, %362  : i64
    %364 = llvm.add %361, %363  : i64
    %365 = llvm.add %364, %341  : i64
    %366 = llvm.getelementptr %356[%365] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %355, %366 : !llvm.ptr<i64>
    %367 = llvm.add %341, %340  : i64
    llvm.br ^bb43(%367 : i64)
  ^bb45:  // pred: ^bb43
    %368 = llvm.add %336, %335  : i64
    llvm.br ^bb41(%368 : i64)
  ^bb46:  // pred: ^bb41
    %369 = llvm.add %331, %330  : i64
    llvm.br ^bb39(%369 : i64)
  ^bb47:  // pred: ^bb39
    %370 = llvm.add %326, %325  : i64
    llvm.br ^bb37(%370 : i64)
  ^bb48:  // pred: ^bb37
    %371 = llvm.mlir.constant(2 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.mlir.constant(2 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    %375 = llvm.mlir.constant(2 : index) : i64
    %376 = llvm.mlir.constant(4 : index) : i64
    %377 = llvm.mlir.null : !llvm.ptr<i64>
    %378 = llvm.getelementptr %377[%376] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %379 = llvm.ptrtoint %378 : !llvm.ptr<i64> to i64
    %380 = llvm.mlir.constant(16 : index) : i64
    %381 = llvm.add %379, %380  : i64
    %382 = llvm.call @malloc(%381) : (i64) -> !llvm.ptr<i8>
    %383 = llvm.bitcast %382 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %384 = llvm.ptrtoint %383 : !llvm.ptr<i64> to i64
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.sub %380, %385  : i64
    %387 = llvm.add %384, %386  : i64
    %388 = llvm.urem %387, %380  : i64
    %389 = llvm.sub %387, %388  : i64
    %390 = llvm.inttoptr %389 : i64 to !llvm.ptr<i64>
    %391 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %392 = llvm.insertvalue %383, %391[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %393 = llvm.insertvalue %390, %392[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.insertvalue %394, %393[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %396 = llvm.insertvalue %371, %395[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %397 = llvm.insertvalue %372, %396[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %398 = llvm.insertvalue %373, %397[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %399 = llvm.insertvalue %375, %398[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %400 = llvm.insertvalue %373, %399[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %401 = llvm.insertvalue %374, %400[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.mlir.constant(2 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%402 : i64)
  ^bb49(%405: i64):  // 2 preds: ^bb48, ^bb56
    %406 = llvm.icmp "slt" %405, %403 : i64
    llvm.cond_br %406, ^bb50, ^bb57
  ^bb50:  // pred: ^bb49
    %407 = llvm.mlir.constant(0 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%407 : i64)
  ^bb51(%410: i64):  // 2 preds: ^bb50, ^bb55
    %411 = llvm.icmp "slt" %410, %408 : i64
    llvm.cond_br %411, ^bb52, ^bb56
  ^bb52:  // pred: ^bb51
    %412 = llvm.mlir.constant(0 : index) : i64
    %413 = llvm.mlir.constant(2 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%412 : i64)
  ^bb53(%415: i64):  // 2 preds: ^bb52, ^bb54
    %416 = llvm.icmp "slt" %415, %413 : i64
    llvm.cond_br %416, ^bb54, ^bb55
  ^bb54:  // pred: ^bb53
    %417 = llvm.extractvalue %401[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %418 = llvm.mlir.constant(2 : index) : i64
    %419 = llvm.mul %405, %418  : i64
    %420 = llvm.mlir.constant(2 : index) : i64
    %421 = llvm.mul %410, %420  : i64
    %422 = llvm.add %419, %421  : i64
    %423 = llvm.add %422, %415  : i64
    %424 = llvm.getelementptr %417[%423] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %30, %424 : !llvm.ptr<i64>
    %425 = llvm.add %415, %414  : i64
    llvm.br ^bb53(%425 : i64)
  ^bb55:  // pred: ^bb53
    %426 = llvm.add %410, %409  : i64
    llvm.br ^bb51(%426 : i64)
  ^bb56:  // pred: ^bb51
    %427 = llvm.add %405, %404  : i64
    llvm.br ^bb49(%427 : i64)
  ^bb57:  // pred: ^bb49
    %428 = llvm.mlir.constant(0 : index) : i64
    %429 = llvm.mlir.constant(2 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%428 : i64)
  ^bb58(%431: i64):  // 2 preds: ^bb57, ^bb68
    %432 = llvm.icmp "slt" %431, %429 : i64
    llvm.cond_br %432, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %433 = llvm.mlir.constant(0 : index) : i64
    %434 = llvm.mlir.constant(2 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%433 : i64)
  ^bb60(%436: i64):  // 2 preds: ^bb59, ^bb67
    %437 = llvm.icmp "slt" %436, %434 : i64
    llvm.cond_br %437, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %438 = llvm.mlir.constant(0 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%438 : i64)
  ^bb62(%441: i64):  // 2 preds: ^bb61, ^bb66
    %442 = llvm.icmp "slt" %441, %439 : i64
    llvm.cond_br %442, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %443 = llvm.mlir.constant(0 : index) : i64
    %444 = llvm.mlir.constant(2 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%443 : i64)
  ^bb64(%446: i64):  // 2 preds: ^bb63, ^bb65
    %447 = llvm.icmp "slt" %446, %444 : i64
    llvm.cond_br %447, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %448 = llvm.extractvalue %322[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.mlir.constant(4 : index) : i64
    %450 = llvm.mul %431, %449  : i64
    %451 = llvm.mlir.constant(2 : index) : i64
    %452 = llvm.mul %436, %451  : i64
    %453 = llvm.add %450, %452  : i64
    %454 = llvm.mlir.constant(2 : index) : i64
    %455 = llvm.mul %441, %454  : i64
    %456 = llvm.add %453, %455  : i64
    %457 = llvm.add %456, %446  : i64
    %458 = llvm.getelementptr %448[%457] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %459 = llvm.load %458 : !llvm.ptr<i64>
    %460 = llvm.extractvalue %401[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %461 = llvm.mlir.constant(2 : index) : i64
    %462 = llvm.mul %431, %461  : i64
    %463 = llvm.mlir.constant(2 : index) : i64
    %464 = llvm.mul %441, %463  : i64
    %465 = llvm.add %462, %464  : i64
    %466 = llvm.add %465, %446  : i64
    %467 = llvm.getelementptr %460[%466] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %468 = llvm.load %467 : !llvm.ptr<i64>
    %469 = llvm.add %468, %459  : i64
    %470 = llvm.extractvalue %401[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %471 = llvm.mlir.constant(2 : index) : i64
    %472 = llvm.mul %431, %471  : i64
    %473 = llvm.mlir.constant(2 : index) : i64
    %474 = llvm.mul %441, %473  : i64
    %475 = llvm.add %472, %474  : i64
    %476 = llvm.add %475, %446  : i64
    %477 = llvm.getelementptr %470[%476] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %469, %477 : !llvm.ptr<i64>
    %478 = llvm.add %446, %445  : i64
    llvm.br ^bb64(%478 : i64)
  ^bb66:  // pred: ^bb64
    %479 = llvm.add %441, %440  : i64
    llvm.br ^bb62(%479 : i64)
  ^bb67:  // pred: ^bb62
    %480 = llvm.add %436, %435  : i64
    llvm.br ^bb60(%480 : i64)
  ^bb68:  // pred: ^bb60
    %481 = llvm.add %431, %430  : i64
    llvm.br ^bb58(%481 : i64)
  ^bb69:  // pred: ^bb58
    %482 = llvm.mlir.constant(2 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.mlir.constant(2 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    %486 = llvm.mlir.constant(2 : index) : i64
    %487 = llvm.mlir.constant(4 : index) : i64
    %488 = llvm.mlir.null : !llvm.ptr<i1>
    %489 = llvm.getelementptr %488[%487] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %490 = llvm.ptrtoint %489 : !llvm.ptr<i1> to i64
    %491 = llvm.mlir.constant(16 : index) : i64
    %492 = llvm.add %490, %491  : i64
    %493 = llvm.call @malloc(%492) : (i64) -> !llvm.ptr<i8>
    %494 = llvm.bitcast %493 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %495 = llvm.ptrtoint %494 : !llvm.ptr<i1> to i64
    %496 = llvm.mlir.constant(1 : index) : i64
    %497 = llvm.sub %491, %496  : i64
    %498 = llvm.add %495, %497  : i64
    %499 = llvm.urem %498, %491  : i64
    %500 = llvm.sub %498, %499  : i64
    %501 = llvm.inttoptr %500 : i64 to !llvm.ptr<i1>
    %502 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    %503 = llvm.insertvalue %494, %502[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %504 = llvm.insertvalue %501, %503[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %505 = llvm.mlir.constant(0 : index) : i64
    %506 = llvm.insertvalue %505, %504[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %507 = llvm.insertvalue %482, %506[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %508 = llvm.insertvalue %483, %507[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %509 = llvm.insertvalue %484, %508[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %510 = llvm.insertvalue %486, %509[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %511 = llvm.insertvalue %484, %510[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %512 = llvm.insertvalue %485, %511[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %513 = llvm.mlir.constant(0 : index) : i64
    %514 = llvm.mlir.constant(2 : index) : i64
    %515 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%513 : i64)
  ^bb70(%516: i64):  // 2 preds: ^bb69, ^bb77
    %517 = llvm.icmp "slt" %516, %514 : i64
    llvm.cond_br %517, ^bb71, ^bb78
  ^bb71:  // pred: ^bb70
    %518 = llvm.mlir.constant(0 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%518 : i64)
  ^bb72(%521: i64):  // 2 preds: ^bb71, ^bb76
    %522 = llvm.icmp "slt" %521, %519 : i64
    llvm.cond_br %522, ^bb73, ^bb77
  ^bb73:  // pred: ^bb72
    %523 = llvm.mlir.constant(0 : index) : i64
    %524 = llvm.mlir.constant(2 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%523 : i64)
  ^bb74(%526: i64):  // 2 preds: ^bb73, ^bb75
    %527 = llvm.icmp "slt" %526, %524 : i64
    llvm.cond_br %527, ^bb75, ^bb76
  ^bb75:  // pred: ^bb74
    %528 = llvm.extractvalue %401[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %529 = llvm.mlir.constant(2 : index) : i64
    %530 = llvm.mul %516, %529  : i64
    %531 = llvm.mlir.constant(2 : index) : i64
    %532 = llvm.mul %521, %531  : i64
    %533 = llvm.add %530, %532  : i64
    %534 = llvm.add %533, %526  : i64
    %535 = llvm.getelementptr %528[%534] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %536 = llvm.load %535 : !llvm.ptr<i64>
    %537 = llvm.extractvalue %401[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %538 = llvm.mlir.constant(2 : index) : i64
    %539 = llvm.mul %516, %538  : i64
    %540 = llvm.mlir.constant(2 : index) : i64
    %541 = llvm.mul %521, %540  : i64
    %542 = llvm.add %539, %541  : i64
    %543 = llvm.add %542, %526  : i64
    %544 = llvm.getelementptr %537[%543] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %545 = llvm.load %544 : !llvm.ptr<i64>
    %546 = llvm.icmp "slt" %536, %545 : i64
    %547 = llvm.extractvalue %512[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %548 = llvm.mlir.constant(2 : index) : i64
    %549 = llvm.mul %516, %548  : i64
    %550 = llvm.mlir.constant(2 : index) : i64
    %551 = llvm.mul %521, %550  : i64
    %552 = llvm.add %549, %551  : i64
    %553 = llvm.add %552, %526  : i64
    %554 = llvm.getelementptr %547[%553] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %546, %554 : !llvm.ptr<i1>
    %555 = llvm.add %526, %525  : i64
    llvm.br ^bb74(%555 : i64)
  ^bb76:  // pred: ^bb74
    %556 = llvm.add %521, %520  : i64
    llvm.br ^bb72(%556 : i64)
  ^bb77:  // pred: ^bb72
    %557 = llvm.add %516, %515  : i64
    llvm.br ^bb70(%557 : i64)
  ^bb78:  // pred: ^bb70
    llvm.return %512 : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v3_0", "v6_0", "v0_0"], llvm.emit_c_interface, output_names = ["v2_0"]} {
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
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %21 = llvm.extractvalue %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.extractvalue %20[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.extractvalue %20[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %25 = llvm.extractvalue %20[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.extractvalue %20[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.extractvalue %20[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = llvm.extractvalue %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %29 = llvm.extractvalue %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %21, %22, %23, %24, %25, %26, %27, %28, %29) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    llvm.store %30, %arg0 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>
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
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %70, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %0[%71] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %73 = llvm.load %72 : !llvm.ptr<ptr<i8>>
    %74 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %75 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %76 = llvm.call @omTensorGetDataPtr(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %77 = llvm.bitcast %76 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %78 = llvm.insertvalue %77, %75[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %79 = llvm.insertvalue %77, %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %80 = llvm.mlir.constant(0 : i64) : i64
    %81 = llvm.insertvalue %80, %79[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.call @omTensorGetShape(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %83 = llvm.call @omTensorGetStrides(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %84 = llvm.mlir.constant(0 : i64) : i64
    %85 = llvm.getelementptr %82[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %86 = llvm.load %85 : !llvm.ptr<i64>
    %87 = llvm.insertvalue %86, %81[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %88 = llvm.getelementptr %83[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %89 = llvm.load %88 : !llvm.ptr<i64>
    %90 = llvm.insertvalue %89, %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %91 = llvm.mlir.constant(1 : i64) : i64
    %92 = llvm.getelementptr %82[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %93 = llvm.load %92 : !llvm.ptr<i64>
    %94 = llvm.insertvalue %93, %90[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %83[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %96 = llvm.load %95 : !llvm.ptr<i64>
    %97 = llvm.insertvalue %96, %94[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.getelementptr %82[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %97[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %83[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %104, %74 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %74) : (!llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %105 = llvm.load %2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>
    %106 = llvm.mlir.constant(1 : i64) : i64
    %107 = llvm.mlir.constant(8 : i64) : i64
    %108 = llvm.call @malloc(%107) : (i64) -> !llvm.ptr<i8>
    %109 = llvm.bitcast %108 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %110 = llvm.mlir.constant(3 : i64) : i64
    %111 = llvm.call @omTensorCreateUntyped(%110) : (i64) -> !llvm.ptr<i8>
    %112 = llvm.mlir.constant(1 : i64) : i64
    %113 = llvm.extractvalue %105[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %114 = llvm.bitcast %113 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %115 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %116 = llvm.bitcast %115 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%111, %112, %114, %116) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %117 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%111, %117) : (!llvm.ptr<i8>, i64) -> ()
    %118 = llvm.call @omTensorGetShape(%111) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %119 = llvm.call @omTensorGetStrides(%111) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %120 = llvm.mlir.constant(0 : i64) : i64
    %121 = llvm.extractvalue %105[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.getelementptr %118[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.extractvalue %105[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %124 = llvm.getelementptr %119[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.mlir.constant(1 : i64) : i64
    %126 = llvm.extractvalue %105[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %127 = llvm.getelementptr %118[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %127 : !llvm.ptr<i64>
    %128 = llvm.extractvalue %105[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %129 = llvm.getelementptr %119[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.mlir.constant(2 : i64) : i64
    %131 = llvm.extractvalue %105[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %132 = llvm.getelementptr %118[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %131, %132 : !llvm.ptr<i64>
    %133 = llvm.extractvalue %105[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %134 = llvm.getelementptr %119[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.mlir.constant(0 : i64) : i64
    %136 = llvm.getelementptr %109[%135] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %111, %136 : !llvm.ptr<ptr<i8>>
    %137 = llvm.call @omTensorListCreate(%109, %106, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %137 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<200 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<200 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<66 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<66 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

