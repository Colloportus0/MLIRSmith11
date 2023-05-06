module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [2 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: !llvm.ptr<i32>, %arg10: !llvm.ptr<i32>, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: !llvm.ptr<i1>, %arg21: !llvm.ptr<i1>, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0", "v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v7_0", "v0_0", "v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.insertvalue %arg6, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.insertvalue %arg7, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.insertvalue %arg8, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %11 = llvm.insertvalue %arg9, %10[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg11, %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg16, %14[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg13, %15[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg17, %16[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg14, %17[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg18, %18[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg15, %19[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg19, %20[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %23 = llvm.insertvalue %arg20, %22[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %arg21, %23[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.insertvalue %arg22, %24[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.insertvalue %arg23, %25[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.insertvalue %arg27, %26[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %arg24, %27[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %arg28, %28[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.insertvalue %arg25, %29[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %arg29, %30[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.insertvalue %arg26, %31[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.insertvalue %arg30, %32[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.mlir.constant(0 : i64) : i64
    %36 = llvm.mlir.constant(-1 : i64) : i64
    %37 = llvm.mlir.constant(2 : index) : i64
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.mlir.null : !llvm.ptr<i64>
    %42 = llvm.getelementptr %41[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %43 = llvm.ptrtoint %42 : !llvm.ptr<i64> to i64
    %44 = llvm.mlir.constant(16 : index) : i64
    %45 = llvm.add %43, %44  : i64
    %46 = llvm.call @malloc(%45) : (i64) -> !llvm.ptr<i8>
    %47 = llvm.bitcast %46 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %48 = llvm.ptrtoint %47 : !llvm.ptr<i64> to i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.sub %44, %49  : i64
    %51 = llvm.add %48, %50  : i64
    %52 = llvm.urem %51, %44  : i64
    %53 = llvm.sub %51, %52  : i64
    %54 = llvm.inttoptr %53 : i64 to !llvm.ptr<i64>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %56 = llvm.insertvalue %47, %55[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.insertvalue %54, %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.insertvalue %58, %57[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %60 = llvm.insertvalue %37, %59[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.insertvalue %38, %60[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %62 = llvm.insertvalue %39, %61[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.insertvalue %38, %62[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.insertvalue %39, %63[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %65 = llvm.insertvalue %40, %64[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.mlir.constant(2 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%66 : i64)
  ^bb1(%69: i64):  // 2 preds: ^bb0, ^bb8
    %70 = llvm.icmp "slt" %69, %67 : i64
    llvm.cond_br %70, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%71 : i64)
  ^bb3(%74: i64):  // 2 preds: ^bb2, ^bb7
    %75 = llvm.icmp "slt" %74, %72 : i64
    llvm.cond_br %75, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%76 : i64)
  ^bb5(%79: i64):  // 2 preds: ^bb4, ^bb6
    %80 = llvm.icmp "slt" %79, %77 : i64
    llvm.cond_br %80, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %81 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.add %69, %74  : i64
    %83 = llvm.add %82, %79  : i64
    %84 = llvm.getelementptr %81[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %36, %84 : !llvm.ptr<i64>
    %85 = llvm.add %79, %78  : i64
    llvm.br ^bb5(%85 : i64)
  ^bb7:  // pred: ^bb5
    %86 = llvm.add %74, %73  : i64
    llvm.br ^bb3(%86 : i64)
  ^bb8:  // pred: ^bb3
    %87 = llvm.add %69, %68  : i64
    llvm.br ^bb1(%87 : i64)
  ^bb9:  // pred: ^bb1
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%88 : i64)
  ^bb10(%91: i64):  // 2 preds: ^bb9, ^bb20
    %92 = llvm.icmp "slt" %91, %89 : i64
    llvm.cond_br %92, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %93 = llvm.mlir.constant(0 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%93 : i64)
  ^bb12(%96: i64):  // 2 preds: ^bb11, ^bb19
    %97 = llvm.icmp "slt" %96, %94 : i64
    llvm.cond_br %97, ^bb13, ^bb20
  ^bb13:  // pred: ^bb12
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%98 : i64)
  ^bb14(%101: i64):  // 2 preds: ^bb13, ^bb18
    %102 = llvm.icmp "slt" %101, %99 : i64
    llvm.cond_br %102, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%103 : i64)
  ^bb16(%106: i64):  // 2 preds: ^bb15, ^bb17
    %107 = llvm.icmp "slt" %106, %104 : i64
    llvm.cond_br %107, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %108 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.add %91, %96  : i64
    %110 = llvm.add %109, %101  : i64
    %111 = llvm.add %110, %106  : i64
    %112 = llvm.getelementptr %108[%111] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %113 = llvm.load %112 : !llvm.ptr<i32>
    %114 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %115 = llvm.add %91, %96  : i64
    %116 = llvm.add %115, %106  : i64
    %117 = llvm.getelementptr %114[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %118 = llvm.load %117 : !llvm.ptr<i64>
    %119 = llvm.icmp "slt" %118, %35 : i64
    %120 = llvm.select %119, %35, %118 : i1, i64
    %121 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.add %91, %96  : i64
    %123 = llvm.add %122, %120  : i64
    %124 = llvm.add %123, %106  : i64
    %125 = llvm.getelementptr %121[%124] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %126 = llvm.load %125 : !llvm.ptr<i32>
    %127 = llvm.icmp "slt" %113, %126 : i32
    %128 = llvm.select %127, %101, %120 : i1, i64
    %129 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %130 = llvm.add %91, %96  : i64
    %131 = llvm.add %130, %106  : i64
    %132 = llvm.getelementptr %129[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %132 : !llvm.ptr<i64>
    %133 = llvm.add %106, %105  : i64
    llvm.br ^bb16(%133 : i64)
  ^bb18:  // pred: ^bb16
    %134 = llvm.add %101, %100  : i64
    llvm.br ^bb14(%134 : i64)
  ^bb19:  // pred: ^bb14
    %135 = llvm.add %96, %95  : i64
    llvm.br ^bb12(%135 : i64)
  ^bb20:  // pred: ^bb12
    %136 = llvm.add %91, %90  : i64
    llvm.br ^bb10(%136 : i64)
  ^bb21:  // pred: ^bb10
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.mlir.constant(2 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(2 : index) : i64
    %143 = llvm.mlir.constant(4 : index) : i64
    %144 = llvm.mlir.constant(8 : index) : i64
    %145 = llvm.mlir.null : !llvm.ptr<i32>
    %146 = llvm.getelementptr %145[%144] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %147 = llvm.ptrtoint %146 : !llvm.ptr<i32> to i64
    %148 = llvm.mlir.constant(16 : index) : i64
    %149 = llvm.add %147, %148  : i64
    %150 = llvm.call @malloc(%149) : (i64) -> !llvm.ptr<i8>
    %151 = llvm.bitcast %150 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %152 = llvm.ptrtoint %151 : !llvm.ptr<i32> to i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.sub %148, %153  : i64
    %155 = llvm.add %152, %154  : i64
    %156 = llvm.urem %155, %148  : i64
    %157 = llvm.sub %155, %156  : i64
    %158 = llvm.inttoptr %157 : i64 to !llvm.ptr<i32>
    %159 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %160 = llvm.insertvalue %151, %159[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.insertvalue %158, %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.insertvalue %162, %161[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.insertvalue %137, %163[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.insertvalue %138, %164[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.insertvalue %139, %165[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.insertvalue %140, %166[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.insertvalue %143, %167[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.insertvalue %142, %168[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.insertvalue %140, %169[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.insertvalue %141, %170[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.mlir.constant(2 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%172 : i64)
  ^bb22(%175: i64):  // 2 preds: ^bb21, ^bb32
    %176 = llvm.icmp "slt" %175, %173 : i64
    llvm.cond_br %176, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.mlir.constant(2 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%177 : i64)
  ^bb24(%180: i64):  // 2 preds: ^bb23, ^bb31
    %181 = llvm.icmp "slt" %180, %178 : i64
    llvm.cond_br %181, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%182 : i64)
  ^bb26(%185: i64):  // 2 preds: ^bb25, ^bb30
    %186 = llvm.icmp "slt" %185, %183 : i64
    llvm.cond_br %186, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.mlir.constant(2 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%187 : i64)
  ^bb28(%190: i64):  // 2 preds: ^bb27, ^bb29
    %191 = llvm.icmp "slt" %190, %188 : i64
    llvm.cond_br %191, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %192 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.mlir.constant(4 : index) : i64
    %194 = llvm.mul %34, %193  : i64
    %195 = llvm.mlir.constant(2 : index) : i64
    %196 = llvm.mul %180, %195  : i64
    %197 = llvm.add %194, %196  : i64
    %198 = llvm.mlir.constant(2 : index) : i64
    %199 = llvm.mul %185, %198  : i64
    %200 = llvm.add %197, %199  : i64
    %201 = llvm.add %200, %190  : i64
    %202 = llvm.getelementptr %192[%201] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %203 = llvm.load %202 : !llvm.ptr<i1>
    %204 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.add %175, %34  : i64
    %206 = llvm.add %205, %185  : i64
    %207 = llvm.add %206, %34  : i64
    %208 = llvm.getelementptr %204[%207] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %209 = llvm.load %208 : !llvm.ptr<i32>
    %210 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %211 = llvm.mlir.constant(2 : index) : i64
    %212 = llvm.mul %34, %211  : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mul %185, %213  : i64
    %215 = llvm.add %212, %214  : i64
    %216 = llvm.add %215, %190  : i64
    %217 = llvm.getelementptr %210[%216] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %218 = llvm.load %217 : !llvm.ptr<i32>
    %219 = llvm.select %203, %209, %218 : i1, i32
    %220 = llvm.extractvalue %171[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.mlir.constant(4 : index) : i64
    %222 = llvm.mul %175, %221  : i64
    %223 = llvm.mlir.constant(2 : index) : i64
    %224 = llvm.mul %180, %223  : i64
    %225 = llvm.add %222, %224  : i64
    %226 = llvm.mlir.constant(2 : index) : i64
    %227 = llvm.mul %185, %226  : i64
    %228 = llvm.add %225, %227  : i64
    %229 = llvm.add %228, %190  : i64
    %230 = llvm.getelementptr %220[%229] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %219, %230 : !llvm.ptr<i32>
    %231 = llvm.add %190, %189  : i64
    llvm.br ^bb28(%231 : i64)
  ^bb30:  // pred: ^bb28
    %232 = llvm.add %185, %184  : i64
    llvm.br ^bb26(%232 : i64)
  ^bb31:  // pred: ^bb26
    %233 = llvm.add %180, %179  : i64
    llvm.br ^bb24(%233 : i64)
  ^bb32:  // pred: ^bb24
    %234 = llvm.add %175, %174  : i64
    llvm.br ^bb22(%234 : i64)
  ^bb33:  // pred: ^bb22
    %235 = llvm.mlir.constant(2 : index) : i64
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.constant(2 : index) : i64
    %241 = llvm.mlir.constant(4 : index) : i64
    %242 = llvm.mlir.constant(8 : index) : i64
    %243 = llvm.mlir.null : !llvm.ptr<i1>
    %244 = llvm.getelementptr %243[%242] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %245 = llvm.ptrtoint %244 : !llvm.ptr<i1> to i64
    %246 = llvm.mlir.constant(16 : index) : i64
    %247 = llvm.add %245, %246  : i64
    %248 = llvm.call @malloc(%247) : (i64) -> !llvm.ptr<i8>
    %249 = llvm.bitcast %248 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %250 = llvm.ptrtoint %249 : !llvm.ptr<i1> to i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.sub %246, %251  : i64
    %253 = llvm.add %250, %252  : i64
    %254 = llvm.urem %253, %246  : i64
    %255 = llvm.sub %253, %254  : i64
    %256 = llvm.inttoptr %255 : i64 to !llvm.ptr<i1>
    %257 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %258 = llvm.insertvalue %249, %257[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.insertvalue %256, %258[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.mlir.constant(0 : index) : i64
    %261 = llvm.insertvalue %260, %259[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.insertvalue %235, %261[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.insertvalue %236, %262[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.insertvalue %237, %263[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.insertvalue %238, %264[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.insertvalue %241, %265[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.insertvalue %240, %266[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.insertvalue %238, %267[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.insertvalue %239, %268[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.mlir.constant(0 : index) : i64
    %271 = llvm.mlir.constant(2 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%270 : i64)
  ^bb34(%273: i64):  // 2 preds: ^bb33, ^bb44
    %274 = llvm.icmp "slt" %273, %271 : i64
    llvm.cond_br %274, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %275 = llvm.mlir.constant(0 : index) : i64
    %276 = llvm.mlir.constant(2 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%275 : i64)
  ^bb36(%278: i64):  // 2 preds: ^bb35, ^bb43
    %279 = llvm.icmp "slt" %278, %276 : i64
    llvm.cond_br %279, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%280 : i64)
  ^bb38(%283: i64):  // 2 preds: ^bb37, ^bb42
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(2 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%285 : i64)
  ^bb40(%288: i64):  // 2 preds: ^bb39, ^bb41
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %290 = llvm.extractvalue %171[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.mlir.constant(4 : index) : i64
    %292 = llvm.mul %273, %291  : i64
    %293 = llvm.mlir.constant(2 : index) : i64
    %294 = llvm.mul %278, %293  : i64
    %295 = llvm.add %292, %294  : i64
    %296 = llvm.mlir.constant(2 : index) : i64
    %297 = llvm.mul %283, %296  : i64
    %298 = llvm.add %295, %297  : i64
    %299 = llvm.add %298, %288  : i64
    %300 = llvm.getelementptr %290[%299] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %301 = llvm.load %300 : !llvm.ptr<i32>
    %302 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mul %34, %303  : i64
    %305 = llvm.mlir.constant(2 : index) : i64
    %306 = llvm.mul %283, %305  : i64
    %307 = llvm.add %304, %306  : i64
    %308 = llvm.add %307, %288  : i64
    %309 = llvm.getelementptr %302[%308] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %310 = llvm.load %309 : !llvm.ptr<i32>
    %311 = llvm.icmp "slt" %301, %310 : i32
    %312 = llvm.extractvalue %269[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.mlir.constant(4 : index) : i64
    %314 = llvm.mul %273, %313  : i64
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mul %278, %315  : i64
    %317 = llvm.add %314, %316  : i64
    %318 = llvm.mlir.constant(2 : index) : i64
    %319 = llvm.mul %283, %318  : i64
    %320 = llvm.add %317, %319  : i64
    %321 = llvm.add %320, %288  : i64
    %322 = llvm.getelementptr %312[%321] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %311, %322 : !llvm.ptr<i1>
    %323 = llvm.add %288, %287  : i64
    llvm.br ^bb40(%323 : i64)
  ^bb42:  // pred: ^bb40
    %324 = llvm.add %283, %282  : i64
    llvm.br ^bb38(%324 : i64)
  ^bb43:  // pred: ^bb38
    %325 = llvm.add %278, %277  : i64
    llvm.br ^bb36(%325 : i64)
  ^bb44:  // pred: ^bb36
    %326 = llvm.add %273, %272  : i64
    llvm.br ^bb34(%326 : i64)
  ^bb45:  // pred: ^bb34
    %327 = llvm.mlir.constant(2 : index) : i64
    %328 = llvm.mlir.constant(2 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(2 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.mlir.constant(2 : index) : i64
    %333 = llvm.mlir.constant(4 : index) : i64
    %334 = llvm.mlir.constant(8 : index) : i64
    %335 = llvm.mlir.null : !llvm.ptr<i32>
    %336 = llvm.getelementptr %335[%334] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %337 = llvm.ptrtoint %336 : !llvm.ptr<i32> to i64
    %338 = llvm.mlir.constant(16 : index) : i64
    %339 = llvm.add %337, %338  : i64
    %340 = llvm.call @malloc(%339) : (i64) -> !llvm.ptr<i8>
    %341 = llvm.bitcast %340 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %342 = llvm.ptrtoint %341 : !llvm.ptr<i32> to i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.sub %338, %343  : i64
    %345 = llvm.add %342, %344  : i64
    %346 = llvm.urem %345, %338  : i64
    %347 = llvm.sub %345, %346  : i64
    %348 = llvm.inttoptr %347 : i64 to !llvm.ptr<i32>
    %349 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %350 = llvm.insertvalue %341, %349[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.insertvalue %348, %350[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.insertvalue %352, %351[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.insertvalue %327, %353[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.insertvalue %328, %354[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.insertvalue %329, %355[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.insertvalue %330, %356[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.insertvalue %333, %357[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.insertvalue %332, %358[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.insertvalue %330, %359[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.insertvalue %331, %360[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.mlir.constant(2 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%362 : i64)
  ^bb46(%365: i64):  // 2 preds: ^bb45, ^bb56
    %366 = llvm.icmp "slt" %365, %363 : i64
    llvm.cond_br %366, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %367 = llvm.mlir.constant(0 : index) : i64
    %368 = llvm.mlir.constant(2 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%367 : i64)
  ^bb48(%370: i64):  // 2 preds: ^bb47, ^bb55
    %371 = llvm.icmp "slt" %370, %368 : i64
    llvm.cond_br %371, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %372 = llvm.mlir.constant(0 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%372 : i64)
  ^bb50(%375: i64):  // 2 preds: ^bb49, ^bb54
    %376 = llvm.icmp "slt" %375, %373 : i64
    llvm.cond_br %376, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.mlir.constant(2 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%377 : i64)
  ^bb52(%380: i64):  // 2 preds: ^bb51, ^bb53
    %381 = llvm.icmp "slt" %380, %378 : i64
    llvm.cond_br %381, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %382 = llvm.extractvalue %171[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.mlir.constant(4 : index) : i64
    %384 = llvm.mul %365, %383  : i64
    %385 = llvm.mlir.constant(2 : index) : i64
    %386 = llvm.mul %370, %385  : i64
    %387 = llvm.add %384, %386  : i64
    %388 = llvm.mlir.constant(2 : index) : i64
    %389 = llvm.mul %375, %388  : i64
    %390 = llvm.add %387, %389  : i64
    %391 = llvm.add %390, %380  : i64
    %392 = llvm.getelementptr %382[%391] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %393 = llvm.load %392 : !llvm.ptr<i32>
    %394 = llvm.extractvalue %171[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.mlir.constant(4 : index) : i64
    %396 = llvm.mul %365, %395  : i64
    %397 = llvm.mlir.constant(2 : index) : i64
    %398 = llvm.mul %370, %397  : i64
    %399 = llvm.add %396, %398  : i64
    %400 = llvm.mlir.constant(2 : index) : i64
    %401 = llvm.mul %375, %400  : i64
    %402 = llvm.add %399, %401  : i64
    %403 = llvm.add %402, %380  : i64
    %404 = llvm.getelementptr %394[%403] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %405 = llvm.load %404 : !llvm.ptr<i32>
    %406 = llvm.add %393, %405  : i32
    %407 = llvm.extractvalue %361[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.mlir.constant(4 : index) : i64
    %409 = llvm.mul %365, %408  : i64
    %410 = llvm.mlir.constant(2 : index) : i64
    %411 = llvm.mul %370, %410  : i64
    %412 = llvm.add %409, %411  : i64
    %413 = llvm.mlir.constant(2 : index) : i64
    %414 = llvm.mul %375, %413  : i64
    %415 = llvm.add %412, %414  : i64
    %416 = llvm.add %415, %380  : i64
    %417 = llvm.getelementptr %407[%416] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %406, %417 : !llvm.ptr<i32>
    %418 = llvm.add %380, %379  : i64
    llvm.br ^bb52(%418 : i64)
  ^bb54:  // pred: ^bb52
    %419 = llvm.add %375, %374  : i64
    llvm.br ^bb50(%419 : i64)
  ^bb55:  // pred: ^bb50
    %420 = llvm.add %370, %369  : i64
    llvm.br ^bb48(%420 : i64)
  ^bb56:  // pred: ^bb48
    %421 = llvm.add %365, %364  : i64
    llvm.br ^bb46(%421 : i64)
  ^bb57:  // pred: ^bb46
    %422 = llvm.mlir.constant(2 : index) : i64
    %423 = llvm.mlir.constant(2 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.mlir.constant(2 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    %427 = llvm.mlir.constant(2 : index) : i64
    %428 = llvm.mlir.constant(4 : index) : i64
    %429 = llvm.mlir.constant(8 : index) : i64
    %430 = llvm.mlir.null : !llvm.ptr<i1>
    %431 = llvm.getelementptr %430[%429] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %432 = llvm.ptrtoint %431 : !llvm.ptr<i1> to i64
    %433 = llvm.mlir.constant(16 : index) : i64
    %434 = llvm.add %432, %433  : i64
    %435 = llvm.call @malloc(%434) : (i64) -> !llvm.ptr<i8>
    %436 = llvm.bitcast %435 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %437 = llvm.ptrtoint %436 : !llvm.ptr<i1> to i64
    %438 = llvm.mlir.constant(1 : index) : i64
    %439 = llvm.sub %433, %438  : i64
    %440 = llvm.add %437, %439  : i64
    %441 = llvm.urem %440, %433  : i64
    %442 = llvm.sub %440, %441  : i64
    %443 = llvm.inttoptr %442 : i64 to !llvm.ptr<i1>
    %444 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %445 = llvm.insertvalue %436, %444[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.insertvalue %443, %445[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.mlir.constant(0 : index) : i64
    %448 = llvm.insertvalue %447, %446[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.insertvalue %422, %448[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.insertvalue %423, %449[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.insertvalue %424, %450[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %452 = llvm.insertvalue %425, %451[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.insertvalue %428, %452[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.insertvalue %427, %453[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.insertvalue %425, %454[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %456 = llvm.insertvalue %426, %455[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.mlir.constant(0 : index) : i64
    %458 = llvm.mlir.constant(2 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%457 : i64)
  ^bb58(%460: i64):  // 2 preds: ^bb57, ^bb68
    %461 = llvm.icmp "slt" %460, %458 : i64
    llvm.cond_br %461, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %462 = llvm.mlir.constant(0 : index) : i64
    %463 = llvm.mlir.constant(2 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%462 : i64)
  ^bb60(%465: i64):  // 2 preds: ^bb59, ^bb67
    %466 = llvm.icmp "slt" %465, %463 : i64
    llvm.cond_br %466, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %467 = llvm.mlir.constant(0 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    %469 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%467 : i64)
  ^bb62(%470: i64):  // 2 preds: ^bb61, ^bb66
    %471 = llvm.icmp "slt" %470, %468 : i64
    llvm.cond_br %471, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %472 = llvm.mlir.constant(0 : index) : i64
    %473 = llvm.mlir.constant(2 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%472 : i64)
  ^bb64(%475: i64):  // 2 preds: ^bb63, ^bb65
    %476 = llvm.icmp "slt" %475, %473 : i64
    llvm.cond_br %476, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %477 = llvm.extractvalue %361[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.mlir.constant(4 : index) : i64
    %479 = llvm.mul %460, %478  : i64
    %480 = llvm.mlir.constant(2 : index) : i64
    %481 = llvm.mul %465, %480  : i64
    %482 = llvm.add %479, %481  : i64
    %483 = llvm.mlir.constant(2 : index) : i64
    %484 = llvm.mul %470, %483  : i64
    %485 = llvm.add %482, %484  : i64
    %486 = llvm.add %485, %475  : i64
    %487 = llvm.getelementptr %477[%486] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %488 = llvm.load %487 : !llvm.ptr<i32>
    %489 = llvm.extractvalue %361[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.mlir.constant(4 : index) : i64
    %491 = llvm.mul %460, %490  : i64
    %492 = llvm.mlir.constant(2 : index) : i64
    %493 = llvm.mul %465, %492  : i64
    %494 = llvm.add %491, %493  : i64
    %495 = llvm.mlir.constant(2 : index) : i64
    %496 = llvm.mul %470, %495  : i64
    %497 = llvm.add %494, %496  : i64
    %498 = llvm.add %497, %475  : i64
    %499 = llvm.getelementptr %489[%498] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %500 = llvm.load %499 : !llvm.ptr<i32>
    %501 = llvm.icmp "slt" %488, %500 : i32
    %502 = llvm.extractvalue %456[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.mlir.constant(4 : index) : i64
    %504 = llvm.mul %460, %503  : i64
    %505 = llvm.mlir.constant(2 : index) : i64
    %506 = llvm.mul %465, %505  : i64
    %507 = llvm.add %504, %506  : i64
    %508 = llvm.mlir.constant(2 : index) : i64
    %509 = llvm.mul %470, %508  : i64
    %510 = llvm.add %507, %509  : i64
    %511 = llvm.add %510, %475  : i64
    %512 = llvm.getelementptr %502[%511] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %501, %512 : !llvm.ptr<i1>
    %513 = llvm.add %475, %474  : i64
    llvm.br ^bb64(%513 : i64)
  ^bb66:  // pred: ^bb64
    %514 = llvm.add %470, %469  : i64
    llvm.br ^bb62(%514 : i64)
  ^bb67:  // pred: ^bb62
    %515 = llvm.add %465, %464  : i64
    llvm.br ^bb60(%515 : i64)
  ^bb68:  // pred: ^bb60
    %516 = llvm.add %460, %459  : i64
    llvm.br ^bb58(%516 : i64)
  ^bb69:  // pred: ^bb58
    %517 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %518 = llvm.insertvalue %65, %517[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %519 = llvm.insertvalue %269, %518[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %520 = llvm.insertvalue %456, %519[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %520 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0", "v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v7_0", "v0_0", "v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %11 = llvm.extractvalue %10[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %10[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %10[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %10[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %10[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %10[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %10[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %10[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %10[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %23 = llvm.extractvalue %22[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.extractvalue %22[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.extractvalue %22[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.extractvalue %22[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.extractvalue %22[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.extractvalue %22[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.extractvalue %22[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.extractvalue %22[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.extractvalue %22[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.extractvalue %22[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.extractvalue %22[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i1>, !llvm.ptr<i1>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %34, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %36, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %37 = llvm.mlir.constant(1 : i64) : i64
    %38 = llvm.getelementptr %0[%37] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %39 = llvm.load %38 : !llvm.ptr<ptr<i8>>
    %40 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %42 = llvm.call @omTensorGetDataPtr(%39) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %43 = llvm.bitcast %42 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %44 = llvm.insertvalue %43, %41[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %43, %44[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(0 : i64) : i64
    %47 = llvm.insertvalue %46, %45[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.call @omTensorGetShape(%39) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %49 = llvm.call @omTensorGetStrides(%39) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %50 = llvm.mlir.constant(0 : i64) : i64
    %51 = llvm.getelementptr %48[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %49[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(1 : i64) : i64
    %58 = llvm.getelementptr %48[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %49[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(2 : i64) : i64
    %65 = llvm.getelementptr %48[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %49[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(3 : i64) : i64
    %72 = llvm.getelementptr %48[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %49[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %77, %40 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.getelementptr %0[%78] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %80 = llvm.load %79 : !llvm.ptr<ptr<i8>>
    %81 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %82 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %83 = llvm.call @omTensorGetDataPtr(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %84 = llvm.bitcast %83 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %85 = llvm.insertvalue %84, %82[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.insertvalue %84, %85[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.mlir.constant(0 : i64) : i64
    %88 = llvm.insertvalue %87, %86[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.call @omTensorGetShape(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %90 = llvm.call @omTensorGetStrides(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %91 = llvm.mlir.constant(0 : i64) : i64
    %92 = llvm.getelementptr %89[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %93 = llvm.load %92 : !llvm.ptr<i64>
    %94 = llvm.insertvalue %93, %88[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %90[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %96 = llvm.load %95 : !llvm.ptr<i64>
    %97 = llvm.insertvalue %96, %94[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.getelementptr %89[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %97[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %90[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(2 : i64) : i64
    %106 = llvm.getelementptr %89[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %107 = llvm.load %106 : !llvm.ptr<i64>
    %108 = llvm.insertvalue %107, %104[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %90[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %110 = llvm.load %109 : !llvm.ptr<i64>
    %111 = llvm.insertvalue %110, %108[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.mlir.constant(3 : i64) : i64
    %113 = llvm.getelementptr %89[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %114 = llvm.load %113 : !llvm.ptr<i64>
    %115 = llvm.insertvalue %114, %111[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %90[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %117 = llvm.load %116 : !llvm.ptr<i64>
    %118 = llvm.insertvalue %117, %115[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %118, %81 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %40, %81) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %119 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %120 = llvm.extractvalue %119[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %121 = llvm.extractvalue %119[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %122 = llvm.extractvalue %119[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %123 = llvm.mlir.constant(3 : i64) : i64
    %124 = llvm.mlir.constant(24 : i64) : i64
    %125 = llvm.call @malloc(%124) : (i64) -> !llvm.ptr<i8>
    %126 = llvm.bitcast %125 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %127 = llvm.mlir.constant(3 : i64) : i64
    %128 = llvm.call @omTensorCreateUntyped(%127) : (i64) -> !llvm.ptr<i8>
    %129 = llvm.mlir.constant(1 : i64) : i64
    %130 = llvm.extractvalue %120[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %131 = llvm.bitcast %130 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %132 = llvm.extractvalue %120[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %133 = llvm.bitcast %132 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%128, %129, %131, %133) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %134 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%128, %134) : (!llvm.ptr<i8>, i64) -> ()
    %135 = llvm.call @omTensorGetShape(%128) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %136 = llvm.call @omTensorGetStrides(%128) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %137 = llvm.mlir.constant(0 : i64) : i64
    %138 = llvm.extractvalue %120[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %139 = llvm.getelementptr %135[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.extractvalue %120[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %141 = llvm.getelementptr %136[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.mlir.constant(1 : i64) : i64
    %143 = llvm.extractvalue %120[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %144 = llvm.getelementptr %135[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %143, %144 : !llvm.ptr<i64>
    %145 = llvm.extractvalue %120[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %146 = llvm.getelementptr %136[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.mlir.constant(2 : i64) : i64
    %148 = llvm.extractvalue %120[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %149 = llvm.getelementptr %135[%147] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %148, %149 : !llvm.ptr<i64>
    %150 = llvm.extractvalue %120[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %151 = llvm.getelementptr %136[%147] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.mlir.constant(0 : i64) : i64
    %153 = llvm.getelementptr %126[%152] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %128, %153 : !llvm.ptr<ptr<i8>>
    %154 = llvm.mlir.constant(4 : i64) : i64
    %155 = llvm.call @omTensorCreateUntyped(%154) : (i64) -> !llvm.ptr<i8>
    %156 = llvm.mlir.constant(1 : i64) : i64
    %157 = llvm.extractvalue %121[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.bitcast %157 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %159 = llvm.extractvalue %121[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.bitcast %159 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%155, %156, %158, %160) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %161 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%155, %161) : (!llvm.ptr<i8>, i64) -> ()
    %162 = llvm.call @omTensorGetShape(%155) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %163 = llvm.call @omTensorGetStrides(%155) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %164 = llvm.mlir.constant(0 : i64) : i64
    %165 = llvm.extractvalue %121[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.getelementptr %162[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %165, %166 : !llvm.ptr<i64>
    %167 = llvm.extractvalue %121[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.getelementptr %163[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %167, %168 : !llvm.ptr<i64>
    %169 = llvm.mlir.constant(1 : i64) : i64
    %170 = llvm.extractvalue %121[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.getelementptr %162[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %170, %171 : !llvm.ptr<i64>
    %172 = llvm.extractvalue %121[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.getelementptr %163[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %172, %173 : !llvm.ptr<i64>
    %174 = llvm.mlir.constant(2 : i64) : i64
    %175 = llvm.extractvalue %121[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.getelementptr %162[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %175, %176 : !llvm.ptr<i64>
    %177 = llvm.extractvalue %121[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.getelementptr %163[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %177, %178 : !llvm.ptr<i64>
    %179 = llvm.mlir.constant(3 : i64) : i64
    %180 = llvm.extractvalue %121[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.getelementptr %162[%179] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %180, %181 : !llvm.ptr<i64>
    %182 = llvm.extractvalue %121[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.getelementptr %163[%179] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %182, %183 : !llvm.ptr<i64>
    %184 = llvm.mlir.constant(1 : i64) : i64
    %185 = llvm.getelementptr %126[%184] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %155, %185 : !llvm.ptr<ptr<i8>>
    %186 = llvm.mlir.constant(4 : i64) : i64
    %187 = llvm.call @omTensorCreateUntyped(%186) : (i64) -> !llvm.ptr<i8>
    %188 = llvm.mlir.constant(1 : i64) : i64
    %189 = llvm.extractvalue %122[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.bitcast %189 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %191 = llvm.extractvalue %122[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.bitcast %191 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%187, %188, %190, %192) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %193 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%187, %193) : (!llvm.ptr<i8>, i64) -> ()
    %194 = llvm.call @omTensorGetShape(%187) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %195 = llvm.call @omTensorGetStrides(%187) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %196 = llvm.mlir.constant(0 : i64) : i64
    %197 = llvm.extractvalue %122[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.getelementptr %194[%196] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %197, %198 : !llvm.ptr<i64>
    %199 = llvm.extractvalue %122[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.getelementptr %195[%196] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %199, %200 : !llvm.ptr<i64>
    %201 = llvm.mlir.constant(1 : i64) : i64
    %202 = llvm.extractvalue %122[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.getelementptr %194[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %202, %203 : !llvm.ptr<i64>
    %204 = llvm.extractvalue %122[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.getelementptr %195[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %204, %205 : !llvm.ptr<i64>
    %206 = llvm.mlir.constant(2 : i64) : i64
    %207 = llvm.extractvalue %122[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.getelementptr %194[%206] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %207, %208 : !llvm.ptr<i64>
    %209 = llvm.extractvalue %122[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.getelementptr %195[%206] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %209, %210 : !llvm.ptr<i64>
    %211 = llvm.mlir.constant(3 : i64) : i64
    %212 = llvm.extractvalue %122[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.getelementptr %194[%211] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %212, %213 : !llvm.ptr<i64>
    %214 = llvm.extractvalue %122[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.getelementptr %195[%211] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %214, %215 : !llvm.ptr<i64>
    %216 = llvm.mlir.constant(2 : i64) : i64
    %217 = llvm.getelementptr %126[%216] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %187, %217 : !llvm.ptr<ptr<i8>>
    %218 = llvm.call @omTensorListCreate(%126, %123, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %218 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<207 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<207 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<205 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<205 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

