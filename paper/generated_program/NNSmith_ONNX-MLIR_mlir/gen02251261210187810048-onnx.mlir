module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [2 , 2 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0", "v2_0"], llvm.emit_c_interface, output_names = ["v6_0", "v5_0", "v0_0", "v1_0"]} {
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
    %24 = llvm.mlir.constant(0 : i32) : i32
    %25 = llvm.mlir.constant(-2147483648 : i32) : i32
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.mlir.constant(0 : i64) : i64
    %28 = llvm.mlir.constant(-1 : i64) : i64
    %29 = llvm.mlir.constant(2 : index) : i64
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.mlir.constant(4 : index) : i64
    %34 = llvm.mlir.null : !llvm.ptr<i64>
    %35 = llvm.getelementptr %34[%33] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %36 = llvm.ptrtoint %35 : !llvm.ptr<i64> to i64
    %37 = llvm.mlir.constant(16 : index) : i64
    %38 = llvm.add %36, %37  : i64
    %39 = llvm.call @malloc(%38) : (i64) -> !llvm.ptr<i8>
    %40 = llvm.bitcast %39 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %41 = llvm.ptrtoint %40 : !llvm.ptr<i64> to i64
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.sub %37, %42  : i64
    %44 = llvm.add %41, %43  : i64
    %45 = llvm.urem %44, %37  : i64
    %46 = llvm.sub %44, %45  : i64
    %47 = llvm.inttoptr %46 : i64 to !llvm.ptr<i64>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %49 = llvm.insertvalue %40, %48[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %50 = llvm.insertvalue %47, %49[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.insertvalue %51, %50[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %53 = llvm.insertvalue %29, %52[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %54 = llvm.insertvalue %30, %53[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.insertvalue %31, %54[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.insertvalue %30, %55[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.insertvalue %31, %56[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %58 = llvm.insertvalue %32, %57[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.mlir.constant(2 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%59 : i64)
  ^bb1(%62: i64):  // 2 preds: ^bb0, ^bb8
    %63 = llvm.icmp "slt" %62, %60 : i64
    llvm.cond_br %63, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.mlir.constant(2 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%64 : i64)
  ^bb3(%67: i64):  // 2 preds: ^bb2, ^bb7
    %68 = llvm.icmp "slt" %67, %65 : i64
    llvm.cond_br %68, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%69 : i64)
  ^bb5(%72: i64):  // 2 preds: ^bb4, ^bb6
    %73 = llvm.icmp "slt" %72, %70 : i64
    llvm.cond_br %73, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %74 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.mlir.constant(2 : index) : i64
    %76 = llvm.mul %62, %75  : i64
    %77 = llvm.add %76, %67  : i64
    %78 = llvm.add %77, %72  : i64
    %79 = llvm.getelementptr %74[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %28, %79 : !llvm.ptr<i64>
    %80 = llvm.add %72, %71  : i64
    llvm.br ^bb5(%80 : i64)
  ^bb7:  // pred: ^bb5
    %81 = llvm.add %67, %66  : i64
    llvm.br ^bb3(%81 : i64)
  ^bb8:  // pred: ^bb3
    %82 = llvm.add %62, %61  : i64
    llvm.br ^bb1(%82 : i64)
  ^bb9:  // pred: ^bb1
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%83 : i64)
  ^bb10(%86: i64):  // 2 preds: ^bb9, ^bb20
    %87 = llvm.icmp "slt" %86, %84 : i64
    llvm.cond_br %87, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%88 : i64)
  ^bb12(%91: i64):  // 2 preds: ^bb11, ^bb19
    %92 = llvm.icmp "slt" %91, %89 : i64
    llvm.cond_br %92, ^bb13, ^bb20
  ^bb13:  // pred: ^bb12
    %93 = llvm.mlir.constant(0 : index) : i64
    %94 = llvm.mlir.constant(2 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%93 : i64)
  ^bb14(%96: i64):  // 2 preds: ^bb13, ^bb18
    %97 = llvm.icmp "slt" %96, %94 : i64
    llvm.cond_br %97, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%98 : i64)
  ^bb16(%101: i64):  // 2 preds: ^bb15, ^bb17
    %102 = llvm.icmp "slt" %101, %99 : i64
    llvm.cond_br %102, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %103 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.mlir.constant(4 : index) : i64
    %105 = llvm.mul %86, %104  : i64
    %106 = llvm.mlir.constant(2 : index) : i64
    %107 = llvm.mul %91, %106  : i64
    %108 = llvm.add %105, %107  : i64
    %109 = llvm.add %108, %96  : i64
    %110 = llvm.add %109, %101  : i64
    %111 = llvm.getelementptr %103[%110] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %112 = llvm.load %111 : !llvm.ptr<i32>
    %113 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mul %86, %114  : i64
    %116 = llvm.add %115, %96  : i64
    %117 = llvm.add %116, %101  : i64
    %118 = llvm.getelementptr %113[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %119 = llvm.load %118 : !llvm.ptr<i64>
    %120 = llvm.icmp "slt" %119, %27 : i64
    %121 = llvm.select %120, %27, %119 : i1, i64
    %122 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.mlir.constant(4 : index) : i64
    %124 = llvm.mul %86, %123  : i64
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mul %121, %125  : i64
    %127 = llvm.add %124, %126  : i64
    %128 = llvm.add %127, %96  : i64
    %129 = llvm.add %128, %101  : i64
    %130 = llvm.getelementptr %122[%129] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %131 = llvm.load %130 : !llvm.ptr<i32>
    %132 = llvm.icmp "sgt" %112, %131 : i32
    %133 = llvm.select %132, %91, %121 : i1, i64
    %134 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %135 = llvm.mlir.constant(2 : index) : i64
    %136 = llvm.mul %86, %135  : i64
    %137 = llvm.add %136, %96  : i64
    %138 = llvm.add %137, %101  : i64
    %139 = llvm.getelementptr %134[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %139 : !llvm.ptr<i64>
    %140 = llvm.add %101, %100  : i64
    llvm.br ^bb16(%140 : i64)
  ^bb18:  // pred: ^bb16
    %141 = llvm.add %96, %95  : i64
    llvm.br ^bb14(%141 : i64)
  ^bb19:  // pred: ^bb14
    %142 = llvm.add %91, %90  : i64
    llvm.br ^bb12(%142 : i64)
  ^bb20:  // pred: ^bb12
    %143 = llvm.add %86, %85  : i64
    llvm.br ^bb10(%143 : i64)
  ^bb21:  // pred: ^bb10
    %144 = llvm.mlir.constant(2 : index) : i64
    %145 = llvm.mlir.constant(2 : index) : i64
    %146 = llvm.mlir.constant(2 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.constant(4 : index) : i64
    %149 = llvm.mlir.constant(8 : index) : i64
    %150 = llvm.mlir.null : !llvm.ptr<i32>
    %151 = llvm.getelementptr %150[%149] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %152 = llvm.ptrtoint %151 : !llvm.ptr<i32> to i64
    %153 = llvm.mlir.constant(16 : index) : i64
    %154 = llvm.add %152, %153  : i64
    %155 = llvm.call @malloc(%154) : (i64) -> !llvm.ptr<i8>
    %156 = llvm.bitcast %155 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %157 = llvm.ptrtoint %156 : !llvm.ptr<i32> to i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.sub %153, %158  : i64
    %160 = llvm.add %157, %159  : i64
    %161 = llvm.urem %160, %153  : i64
    %162 = llvm.sub %160, %161  : i64
    %163 = llvm.inttoptr %162 : i64 to !llvm.ptr<i32>
    %164 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %165 = llvm.insertvalue %156, %164[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %166 = llvm.insertvalue %163, %165[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.insertvalue %167, %166[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %169 = llvm.insertvalue %144, %168[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %170 = llvm.insertvalue %145, %169[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %171 = llvm.insertvalue %146, %170[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %172 = llvm.insertvalue %148, %171[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %173 = llvm.insertvalue %146, %172[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %174 = llvm.insertvalue %147, %173[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(2 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%175 : i64)
  ^bb22(%178: i64):  // 2 preds: ^bb21, ^bb29
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb23, ^bb30
  ^bb23:  // pred: ^bb22
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.mlir.constant(2 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%180 : i64)
  ^bb24(%183: i64):  // 2 preds: ^bb23, ^bb28
    %184 = llvm.icmp "slt" %183, %181 : i64
    llvm.cond_br %184, ^bb25, ^bb29
  ^bb25:  // pred: ^bb24
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(2 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%185 : i64)
  ^bb26(%188: i64):  // 2 preds: ^bb25, ^bb27
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb27, ^bb28
  ^bb27:  // pred: ^bb26
    %190 = llvm.extractvalue %174[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %191 = llvm.mlir.constant(4 : index) : i64
    %192 = llvm.mul %178, %191  : i64
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mul %183, %193  : i64
    %195 = llvm.add %192, %194  : i64
    %196 = llvm.add %195, %188  : i64
    %197 = llvm.getelementptr %190[%196] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %25, %197 : !llvm.ptr<i32>
    %198 = llvm.add %188, %187  : i64
    llvm.br ^bb26(%198 : i64)
  ^bb28:  // pred: ^bb26
    %199 = llvm.add %183, %182  : i64
    llvm.br ^bb24(%199 : i64)
  ^bb29:  // pred: ^bb24
    %200 = llvm.add %178, %177  : i64
    llvm.br ^bb22(%200 : i64)
  ^bb30:  // pred: ^bb22
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.mlir.constant(2 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%201 : i64)
  ^bb31(%204: i64):  // 2 preds: ^bb30, ^bb41
    %205 = llvm.icmp "slt" %204, %202 : i64
    llvm.cond_br %205, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    %206 = llvm.mlir.constant(0 : index) : i64
    %207 = llvm.mlir.constant(2 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%206 : i64)
  ^bb33(%209: i64):  // 2 preds: ^bb32, ^bb40
    %210 = llvm.icmp "slt" %209, %207 : i64
    llvm.cond_br %210, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.mlir.constant(2 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%211 : i64)
  ^bb35(%214: i64):  // 2 preds: ^bb34, ^bb39
    %215 = llvm.icmp "slt" %214, %212 : i64
    llvm.cond_br %215, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%216 : i64)
  ^bb37(%219: i64):  // 2 preds: ^bb36, ^bb38
    %220 = llvm.icmp "slt" %219, %217 : i64
    llvm.cond_br %220, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %221 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.mlir.constant(4 : index) : i64
    %223 = llvm.mul %204, %222  : i64
    %224 = llvm.mlir.constant(2 : index) : i64
    %225 = llvm.mul %209, %224  : i64
    %226 = llvm.add %223, %225  : i64
    %227 = llvm.add %226, %214  : i64
    %228 = llvm.add %227, %219  : i64
    %229 = llvm.getelementptr %221[%228] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %230 = llvm.load %229 : !llvm.ptr<i32>
    %231 = llvm.extractvalue %174[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %232 = llvm.mlir.constant(4 : index) : i64
    %233 = llvm.mul %204, %232  : i64
    %234 = llvm.mlir.constant(2 : index) : i64
    %235 = llvm.mul %209, %234  : i64
    %236 = llvm.add %233, %235  : i64
    %237 = llvm.add %236, %214  : i64
    %238 = llvm.getelementptr %231[%237] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %239 = llvm.load %238 : !llvm.ptr<i32>
    %240 = llvm.icmp "sgt" %239, %230 : i32
    %241 = llvm.select %240, %239, %230 : i1, i32
    %242 = llvm.extractvalue %174[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %243 = llvm.mlir.constant(4 : index) : i64
    %244 = llvm.mul %204, %243  : i64
    %245 = llvm.mlir.constant(2 : index) : i64
    %246 = llvm.mul %209, %245  : i64
    %247 = llvm.add %244, %246  : i64
    %248 = llvm.add %247, %214  : i64
    %249 = llvm.getelementptr %242[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %241, %249 : !llvm.ptr<i32>
    %250 = llvm.add %219, %218  : i64
    llvm.br ^bb37(%250 : i64)
  ^bb39:  // pred: ^bb37
    %251 = llvm.add %214, %213  : i64
    llvm.br ^bb35(%251 : i64)
  ^bb40:  // pred: ^bb35
    %252 = llvm.add %209, %208  : i64
    llvm.br ^bb33(%252 : i64)
  ^bb41:  // pred: ^bb33
    %253 = llvm.add %204, %203  : i64
    llvm.br ^bb31(%253 : i64)
  ^bb42:  // pred: ^bb31
    %254 = llvm.mlir.constant(2 : index) : i64
    %255 = llvm.mlir.constant(2 : index) : i64
    %256 = llvm.mlir.constant(2 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mlir.constant(4 : index) : i64
    %260 = llvm.mlir.constant(8 : index) : i64
    %261 = llvm.mlir.null : !llvm.ptr<i32>
    %262 = llvm.getelementptr %261[%260] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %263 = llvm.ptrtoint %262 : !llvm.ptr<i32> to i64
    %264 = llvm.mlir.constant(16 : index) : i64
    %265 = llvm.add %263, %264  : i64
    %266 = llvm.call @malloc(%265) : (i64) -> !llvm.ptr<i8>
    %267 = llvm.bitcast %266 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %268 = llvm.ptrtoint %267 : !llvm.ptr<i32> to i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.sub %264, %269  : i64
    %271 = llvm.add %268, %270  : i64
    %272 = llvm.urem %271, %264  : i64
    %273 = llvm.sub %271, %272  : i64
    %274 = llvm.inttoptr %273 : i64 to !llvm.ptr<i32>
    %275 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %276 = llvm.insertvalue %267, %275[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %274, %276[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.insertvalue %278, %277[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.insertvalue %254, %279[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %255, %280[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.insertvalue %256, %281[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.insertvalue %257, %282[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.insertvalue %259, %283[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.insertvalue %256, %284[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %286 = llvm.insertvalue %257, %285[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %287 = llvm.insertvalue %258, %286[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %288 = llvm.mlir.constant(0 : index) : i64
    %289 = llvm.mlir.constant(2 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%288 : i64)
  ^bb43(%291: i64):  // 2 preds: ^bb42, ^bb53
    %292 = llvm.icmp "slt" %291, %289 : i64
    llvm.cond_br %292, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %293 = llvm.mlir.constant(0 : index) : i64
    %294 = llvm.mlir.constant(2 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%293 : i64)
  ^bb45(%296: i64):  // 2 preds: ^bb44, ^bb52
    %297 = llvm.icmp "slt" %296, %294 : i64
    llvm.cond_br %297, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.mlir.constant(2 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%298 : i64)
  ^bb47(%301: i64):  // 2 preds: ^bb46, ^bb51
    %302 = llvm.icmp "slt" %301, %299 : i64
    llvm.cond_br %302, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%303 : i64)
  ^bb49(%306: i64):  // 2 preds: ^bb48, ^bb50
    %307 = llvm.icmp "slt" %306, %304 : i64
    llvm.cond_br %307, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %308 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.mlir.constant(4 : index) : i64
    %310 = llvm.mul %291, %309  : i64
    %311 = llvm.mlir.constant(2 : index) : i64
    %312 = llvm.mul %296, %311  : i64
    %313 = llvm.add %310, %312  : i64
    %314 = llvm.add %313, %301  : i64
    %315 = llvm.add %314, %306  : i64
    %316 = llvm.getelementptr %308[%315] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %317 = llvm.load %316 : !llvm.ptr<i32>
    %318 = llvm.sub %24, %317  : i32
    %319 = llvm.extractvalue %287[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.mlir.constant(4 : index) : i64
    %321 = llvm.mul %291, %320  : i64
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mul %296, %322  : i64
    %324 = llvm.add %321, %323  : i64
    %325 = llvm.add %324, %301  : i64
    %326 = llvm.add %325, %306  : i64
    %327 = llvm.getelementptr %319[%326] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %318, %327 : !llvm.ptr<i32>
    %328 = llvm.add %306, %305  : i64
    llvm.br ^bb49(%328 : i64)
  ^bb51:  // pred: ^bb49
    %329 = llvm.add %301, %300  : i64
    llvm.br ^bb47(%329 : i64)
  ^bb52:  // pred: ^bb47
    %330 = llvm.add %296, %295  : i64
    llvm.br ^bb45(%330 : i64)
  ^bb53:  // pred: ^bb45
    %331 = llvm.add %291, %290  : i64
    llvm.br ^bb43(%331 : i64)
  ^bb54:  // pred: ^bb43
    %332 = llvm.mlir.constant(2 : index) : i64
    %333 = llvm.mlir.constant(2 : index) : i64
    %334 = llvm.mlir.constant(2 : index) : i64
    %335 = llvm.mlir.constant(2 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.mlir.constant(4 : index) : i64
    %338 = llvm.mlir.constant(8 : index) : i64
    %339 = llvm.mlir.constant(16 : index) : i64
    %340 = llvm.mlir.null : !llvm.ptr<i32>
    %341 = llvm.getelementptr %340[%339] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %359 = llvm.insertvalue %332, %358[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.insertvalue %333, %359[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.insertvalue %334, %360[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.insertvalue %335, %361[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.insertvalue %338, %362[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.insertvalue %337, %363[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.insertvalue %335, %364[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %366 = llvm.insertvalue %336, %365[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.mlir.constant(0 : index) : i64
    %368 = llvm.mlir.constant(2 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%367 : i64)
  ^bb55(%370: i64):  // 2 preds: ^bb54, ^bb65
    %371 = llvm.icmp "slt" %370, %368 : i64
    llvm.cond_br %371, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %372 = llvm.mlir.constant(0 : index) : i64
    %373 = llvm.mlir.constant(2 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%372 : i64)
  ^bb57(%375: i64):  // 2 preds: ^bb56, ^bb64
    %376 = llvm.icmp "slt" %375, %373 : i64
    llvm.cond_br %376, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.mlir.constant(2 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%377 : i64)
  ^bb59(%380: i64):  // 2 preds: ^bb58, ^bb63
    %381 = llvm.icmp "slt" %380, %378 : i64
    llvm.cond_br %381, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %382 = llvm.mlir.constant(0 : index) : i64
    %383 = llvm.mlir.constant(2 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%382 : i64)
  ^bb61(%385: i64):  // 2 preds: ^bb60, ^bb62
    %386 = llvm.icmp "slt" %385, %383 : i64
    llvm.cond_br %386, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %387 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.mlir.constant(4 : index) : i64
    %389 = llvm.mul %370, %388  : i64
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mul %375, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.add %392, %380  : i64
    %394 = llvm.add %393, %26  : i64
    %395 = llvm.getelementptr %387[%394] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %396 = llvm.load %395 : !llvm.ptr<i32>
    %397 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.mlir.constant(2 : index) : i64
    %399 = llvm.mul %370, %398  : i64
    %400 = llvm.mlir.constant(2 : index) : i64
    %401 = llvm.mul %26, %400  : i64
    %402 = llvm.add %399, %401  : i64
    %403 = llvm.mlir.constant(2 : index) : i64
    %404 = llvm.mul %26, %403  : i64
    %405 = llvm.add %402, %404  : i64
    %406 = llvm.add %405, %385  : i64
    %407 = llvm.getelementptr %397[%406] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %408 = llvm.load %407 : !llvm.ptr<i32>
    %409 = llvm.mul %396, %408  : i32
    %410 = llvm.extractvalue %366[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.mlir.constant(8 : index) : i64
    %412 = llvm.mul %370, %411  : i64
    %413 = llvm.mlir.constant(4 : index) : i64
    %414 = llvm.mul %375, %413  : i64
    %415 = llvm.add %412, %414  : i64
    %416 = llvm.mlir.constant(2 : index) : i64
    %417 = llvm.mul %380, %416  : i64
    %418 = llvm.add %415, %417  : i64
    %419 = llvm.add %418, %385  : i64
    %420 = llvm.getelementptr %410[%419] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %409, %420 : !llvm.ptr<i32>
    %421 = llvm.add %385, %384  : i64
    llvm.br ^bb61(%421 : i64)
  ^bb63:  // pred: ^bb61
    %422 = llvm.add %380, %379  : i64
    llvm.br ^bb59(%422 : i64)
  ^bb64:  // pred: ^bb59
    %423 = llvm.add %375, %374  : i64
    llvm.br ^bb57(%423 : i64)
  ^bb65:  // pred: ^bb57
    %424 = llvm.add %370, %369  : i64
    llvm.br ^bb55(%424 : i64)
  ^bb66:  // pred: ^bb55
    %425 = llvm.mlir.constant(2 : index) : i64
    %426 = llvm.mlir.constant(2 : index) : i64
    %427 = llvm.mlir.constant(2 : index) : i64
    %428 = llvm.mlir.constant(2 : index) : i64
    %429 = llvm.mlir.constant(1 : index) : i64
    %430 = llvm.mlir.constant(4 : index) : i64
    %431 = llvm.mlir.constant(8 : index) : i64
    %432 = llvm.mlir.constant(16 : index) : i64
    %433 = llvm.mlir.null : !llvm.ptr<i32>
    %434 = llvm.getelementptr %433[%432] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %435 = llvm.ptrtoint %434 : !llvm.ptr<i32> to i64
    %436 = llvm.mlir.constant(16 : index) : i64
    %437 = llvm.add %435, %436  : i64
    %438 = llvm.call @malloc(%437) : (i64) -> !llvm.ptr<i8>
    %439 = llvm.bitcast %438 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %440 = llvm.ptrtoint %439 : !llvm.ptr<i32> to i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.sub %436, %441  : i64
    %443 = llvm.add %440, %442  : i64
    %444 = llvm.urem %443, %436  : i64
    %445 = llvm.sub %443, %444  : i64
    %446 = llvm.inttoptr %445 : i64 to !llvm.ptr<i32>
    %447 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %448 = llvm.insertvalue %439, %447[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.insertvalue %446, %448[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.insertvalue %450, %449[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %452 = llvm.insertvalue %425, %451[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.insertvalue %426, %452[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.insertvalue %427, %453[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.insertvalue %428, %454[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %456 = llvm.insertvalue %431, %455[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.insertvalue %430, %456[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %458 = llvm.insertvalue %428, %457[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.insertvalue %429, %458[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %460 = llvm.mlir.constant(0 : index) : i64
    %461 = llvm.mlir.constant(2 : index) : i64
    %462 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%460 : i64)
  ^bb67(%463: i64):  // 2 preds: ^bb66, ^bb77
    %464 = llvm.icmp "slt" %463, %461 : i64
    llvm.cond_br %464, ^bb68, ^bb78
  ^bb68:  // pred: ^bb67
    %465 = llvm.mlir.constant(0 : index) : i64
    %466 = llvm.mlir.constant(2 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%465 : i64)
  ^bb69(%468: i64):  // 2 preds: ^bb68, ^bb76
    %469 = llvm.icmp "slt" %468, %466 : i64
    llvm.cond_br %469, ^bb70, ^bb77
  ^bb70:  // pred: ^bb69
    %470 = llvm.mlir.constant(0 : index) : i64
    %471 = llvm.mlir.constant(2 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%470 : i64)
  ^bb71(%473: i64):  // 2 preds: ^bb70, ^bb75
    %474 = llvm.icmp "slt" %473, %471 : i64
    llvm.cond_br %474, ^bb72, ^bb76
  ^bb72:  // pred: ^bb71
    %475 = llvm.mlir.constant(0 : index) : i64
    %476 = llvm.mlir.constant(2 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%475 : i64)
  ^bb73(%478: i64):  // 2 preds: ^bb72, ^bb74
    %479 = llvm.icmp "slt" %478, %476 : i64
    llvm.cond_br %479, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %480 = llvm.extractvalue %366[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.mlir.constant(8 : index) : i64
    %482 = llvm.mul %463, %481  : i64
    %483 = llvm.mlir.constant(4 : index) : i64
    %484 = llvm.mul %468, %483  : i64
    %485 = llvm.add %482, %484  : i64
    %486 = llvm.mlir.constant(2 : index) : i64
    %487 = llvm.mul %473, %486  : i64
    %488 = llvm.add %485, %487  : i64
    %489 = llvm.add %488, %478  : i64
    %490 = llvm.getelementptr %480[%489] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %491 = llvm.load %490 : !llvm.ptr<i32>
    %492 = llvm.extractvalue %366[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.mlir.constant(8 : index) : i64
    %494 = llvm.mul %463, %493  : i64
    %495 = llvm.mlir.constant(4 : index) : i64
    %496 = llvm.mul %468, %495  : i64
    %497 = llvm.add %494, %496  : i64
    %498 = llvm.mlir.constant(2 : index) : i64
    %499 = llvm.mul %473, %498  : i64
    %500 = llvm.add %497, %499  : i64
    %501 = llvm.add %500, %478  : i64
    %502 = llvm.getelementptr %492[%501] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %503 = llvm.load %502 : !llvm.ptr<i32>
    %504 = llvm.mul %491, %503  : i32
    %505 = llvm.extractvalue %459[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %506 = llvm.mlir.constant(8 : index) : i64
    %507 = llvm.mul %463, %506  : i64
    %508 = llvm.mlir.constant(4 : index) : i64
    %509 = llvm.mul %468, %508  : i64
    %510 = llvm.add %507, %509  : i64
    %511 = llvm.mlir.constant(2 : index) : i64
    %512 = llvm.mul %473, %511  : i64
    %513 = llvm.add %510, %512  : i64
    %514 = llvm.add %513, %478  : i64
    %515 = llvm.getelementptr %505[%514] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %504, %515 : !llvm.ptr<i32>
    %516 = llvm.add %478, %477  : i64
    llvm.br ^bb73(%516 : i64)
  ^bb75:  // pred: ^bb73
    %517 = llvm.add %473, %472  : i64
    llvm.br ^bb71(%517 : i64)
  ^bb76:  // pred: ^bb71
    %518 = llvm.add %468, %467  : i64
    llvm.br ^bb69(%518 : i64)
  ^bb77:  // pred: ^bb69
    %519 = llvm.add %463, %462  : i64
    llvm.br ^bb67(%519 : i64)
  ^bb78:  // pred: ^bb67
    %520 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %521 = llvm.insertvalue %58, %520[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %522 = llvm.insertvalue %174, %521[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %523 = llvm.insertvalue %287, %522[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %524 = llvm.insertvalue %459, %523[3] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %524 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0", "v2_0"], llvm.emit_c_interface, output_names = ["v6_0", "v5_0", "v0_0", "v1_0"]} {
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
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.extractvalue %85[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %89 = llvm.extractvalue %85[3] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %90 = llvm.mlir.constant(4 : i64) : i64
    %91 = llvm.mlir.constant(32 : i64) : i64
    %92 = llvm.call @malloc(%91) : (i64) -> !llvm.ptr<i8>
    %93 = llvm.bitcast %92 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %94 = llvm.mlir.constant(3 : i64) : i64
    %95 = llvm.call @omTensorCreateUntyped(%94) : (i64) -> !llvm.ptr<i8>
    %96 = llvm.mlir.constant(1 : i64) : i64
    %97 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %99 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.bitcast %99 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%95, %96, %98, %100) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %101 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%95, %101) : (!llvm.ptr<i8>, i64) -> ()
    %102 = llvm.call @omTensorGetShape(%95) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %103 = llvm.call @omTensorGetStrides(%95) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %104 = llvm.mlir.constant(0 : i64) : i64
    %105 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %106 = llvm.getelementptr %102[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %108 = llvm.getelementptr %103[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(1 : i64) : i64
    %110 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %111 = llvm.getelementptr %102[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %113 = llvm.getelementptr %103[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(2 : i64) : i64
    %115 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %116 = llvm.getelementptr %102[%114] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %118 = llvm.getelementptr %103[%114] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.mlir.constant(0 : i64) : i64
    %120 = llvm.getelementptr %93[%119] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %95, %120 : !llvm.ptr<ptr<i8>>
    %121 = llvm.mlir.constant(3 : i64) : i64
    %122 = llvm.call @omTensorCreateUntyped(%121) : (i64) -> !llvm.ptr<i8>
    %123 = llvm.mlir.constant(1 : i64) : i64
    %124 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %125 = llvm.bitcast %124 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %126 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %127 = llvm.bitcast %126 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%122, %123, %125, %127) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %128 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%122, %128) : (!llvm.ptr<i8>, i64) -> ()
    %129 = llvm.call @omTensorGetShape(%122) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %130 = llvm.call @omTensorGetStrides(%122) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %131 = llvm.mlir.constant(0 : i64) : i64
    %132 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %133 = llvm.getelementptr %129[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %135 = llvm.getelementptr %130[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(1 : i64) : i64
    %137 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %138 = llvm.getelementptr %129[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %140 = llvm.getelementptr %130[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(2 : i64) : i64
    %142 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %143 = llvm.getelementptr %129[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %145 = llvm.getelementptr %130[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.mlir.constant(1 : i64) : i64
    %147 = llvm.getelementptr %93[%146] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %122, %147 : !llvm.ptr<ptr<i8>>
    %148 = llvm.mlir.constant(4 : i64) : i64
    %149 = llvm.call @omTensorCreateUntyped(%148) : (i64) -> !llvm.ptr<i8>
    %150 = llvm.mlir.constant(1 : i64) : i64
    %151 = llvm.extractvalue %88[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.bitcast %151 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %153 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.bitcast %153 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%149, %150, %152, %154) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %155 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%149, %155) : (!llvm.ptr<i8>, i64) -> ()
    %156 = llvm.call @omTensorGetShape(%149) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %157 = llvm.call @omTensorGetStrides(%149) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %158 = llvm.mlir.constant(0 : i64) : i64
    %159 = llvm.extractvalue %88[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.getelementptr %156[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %159, %160 : !llvm.ptr<i64>
    %161 = llvm.extractvalue %88[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.getelementptr %157[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %161, %162 : !llvm.ptr<i64>
    %163 = llvm.mlir.constant(1 : i64) : i64
    %164 = llvm.extractvalue %88[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.getelementptr %156[%163] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %164, %165 : !llvm.ptr<i64>
    %166 = llvm.extractvalue %88[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.getelementptr %157[%163] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %166, %167 : !llvm.ptr<i64>
    %168 = llvm.mlir.constant(2 : i64) : i64
    %169 = llvm.extractvalue %88[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.getelementptr %156[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %169, %170 : !llvm.ptr<i64>
    %171 = llvm.extractvalue %88[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.getelementptr %157[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %171, %172 : !llvm.ptr<i64>
    %173 = llvm.mlir.constant(3 : i64) : i64
    %174 = llvm.extractvalue %88[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.getelementptr %156[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %174, %175 : !llvm.ptr<i64>
    %176 = llvm.extractvalue %88[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.getelementptr %157[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %176, %177 : !llvm.ptr<i64>
    %178 = llvm.mlir.constant(2 : i64) : i64
    %179 = llvm.getelementptr %93[%178] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %149, %179 : !llvm.ptr<ptr<i8>>
    %180 = llvm.mlir.constant(4 : i64) : i64
    %181 = llvm.call @omTensorCreateUntyped(%180) : (i64) -> !llvm.ptr<i8>
    %182 = llvm.mlir.constant(1 : i64) : i64
    %183 = llvm.extractvalue %89[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.bitcast %183 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %185 = llvm.extractvalue %89[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.bitcast %185 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%181, %182, %184, %186) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %187 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%181, %187) : (!llvm.ptr<i8>, i64) -> ()
    %188 = llvm.call @omTensorGetShape(%181) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %189 = llvm.call @omTensorGetStrides(%181) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %190 = llvm.mlir.constant(0 : i64) : i64
    %191 = llvm.extractvalue %89[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.getelementptr %188[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %191, %192 : !llvm.ptr<i64>
    %193 = llvm.extractvalue %89[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.getelementptr %189[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %193, %194 : !llvm.ptr<i64>
    %195 = llvm.mlir.constant(1 : i64) : i64
    %196 = llvm.extractvalue %89[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.getelementptr %188[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %196, %197 : !llvm.ptr<i64>
    %198 = llvm.extractvalue %89[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.getelementptr %189[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %198, %199 : !llvm.ptr<i64>
    %200 = llvm.mlir.constant(2 : i64) : i64
    %201 = llvm.extractvalue %89[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.getelementptr %188[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %201, %202 : !llvm.ptr<i64>
    %203 = llvm.extractvalue %89[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.getelementptr %189[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %203, %204 : !llvm.ptr<i64>
    %205 = llvm.mlir.constant(3 : i64) : i64
    %206 = llvm.extractvalue %89[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.getelementptr %188[%205] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %206, %207 : !llvm.ptr<i64>
    %208 = llvm.extractvalue %89[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.getelementptr %189[%205] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %208, %209 : !llvm.ptr<i64>
    %210 = llvm.mlir.constant(3 : i64) : i64
    %211 = llvm.getelementptr %93[%210] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %181, %211 : !llvm.ptr<ptr<i8>>
    %212 = llvm.call @omTensorListCreate(%93, %90, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %212 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<273 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<273 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

