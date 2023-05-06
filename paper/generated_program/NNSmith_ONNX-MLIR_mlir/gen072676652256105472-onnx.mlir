module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.constant(0 : i32) : i32
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.null : !llvm.ptr<i32>
    %22 = llvm.getelementptr %21[%15] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %23 = llvm.ptrtoint %22 : !llvm.ptr<i32> to i64
    %24 = llvm.mlir.constant(16 : index) : i64
    %25 = llvm.add %23, %24  : i64
    %26 = llvm.call @malloc(%25) : (i64) -> !llvm.ptr<i8>
    %27 = llvm.bitcast %26 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %28 = llvm.ptrtoint %27 : !llvm.ptr<i32> to i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.sub %24, %29  : i64
    %31 = llvm.add %28, %30  : i64
    %32 = llvm.urem %31, %24  : i64
    %33 = llvm.sub %31, %32  : i64
    %34 = llvm.inttoptr %33 : i64 to !llvm.ptr<i32>
    %35 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %36 = llvm.insertvalue %27, %35[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.insertvalue %34, %36[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %40 = llvm.insertvalue %15, %39[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.insertvalue %16, %40[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %42 = llvm.insertvalue %17, %41[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %43 = llvm.insertvalue %18, %42[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.insertvalue %19, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %45 = llvm.insertvalue %16, %44[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %46 = llvm.insertvalue %17, %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %47 = llvm.insertvalue %18, %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.insertvalue %19, %47[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %49 = llvm.insertvalue %20, %48[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%50 : i64)
  ^bb1(%53: i64):  // 2 preds: ^bb0, ^bb14
    %54 = llvm.icmp "slt" %53, %51 : i64
    llvm.cond_br %54, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%55 : i64)
  ^bb3(%58: i64):  // 2 preds: ^bb2, ^bb13
    %59 = llvm.icmp "slt" %58, %56 : i64
    llvm.cond_br %59, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%60 : i64)
  ^bb5(%63: i64):  // 2 preds: ^bb4, ^bb12
    %64 = llvm.icmp "slt" %63, %61 : i64
    llvm.cond_br %64, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%65 : i64)
  ^bb7(%68: i64):  // 2 preds: ^bb6, ^bb11
    %69 = llvm.icmp "slt" %68, %66 : i64
    llvm.cond_br %69, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%70 : i64)
  ^bb9(%73: i64):  // 2 preds: ^bb8, ^bb10
    %74 = llvm.icmp "slt" %73, %71 : i64
    llvm.cond_br %74, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %75 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %76 = llvm.add %53, %58  : i64
    %77 = llvm.add %76, %63  : i64
    %78 = llvm.add %77, %68  : i64
    %79 = llvm.add %78, %73  : i64
    %80 = llvm.getelementptr %75[%79] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %81 = llvm.load %80 : !llvm.ptr<i32>
    %82 = llvm.sub %14, %81  : i32
    %83 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %84 = llvm.add %53, %58  : i64
    %85 = llvm.add %84, %63  : i64
    %86 = llvm.add %85, %68  : i64
    %87 = llvm.add %86, %73  : i64
    %88 = llvm.getelementptr %83[%87] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %82, %88 : !llvm.ptr<i32>
    %89 = llvm.add %73, %72  : i64
    llvm.br ^bb9(%89 : i64)
  ^bb11:  // pred: ^bb9
    %90 = llvm.add %68, %67  : i64
    llvm.br ^bb7(%90 : i64)
  ^bb12:  // pred: ^bb7
    %91 = llvm.add %63, %62  : i64
    llvm.br ^bb5(%91 : i64)
  ^bb13:  // pred: ^bb5
    %92 = llvm.add %58, %57  : i64
    llvm.br ^bb3(%92 : i64)
  ^bb14:  // pred: ^bb3
    %93 = llvm.add %53, %52  : i64
    llvm.br ^bb1(%93 : i64)
  ^bb15:  // pred: ^bb1
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.mlir.constant(2 : index) : i64
    %102 = llvm.mlir.null : !llvm.ptr<i32>
    %103 = llvm.getelementptr %102[%101] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %104 = llvm.ptrtoint %103 : !llvm.ptr<i32> to i64
    %105 = llvm.mlir.constant(16 : index) : i64
    %106 = llvm.add %104, %105  : i64
    %107 = llvm.call @malloc(%106) : (i64) -> !llvm.ptr<i8>
    %108 = llvm.bitcast %107 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %109 = llvm.ptrtoint %108 : !llvm.ptr<i32> to i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.sub %105, %110  : i64
    %112 = llvm.add %109, %111  : i64
    %113 = llvm.urem %112, %105  : i64
    %114 = llvm.sub %112, %113  : i64
    %115 = llvm.inttoptr %114 : i64 to !llvm.ptr<i32>
    %116 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %117 = llvm.insertvalue %108, %116[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %118 = llvm.insertvalue %115, %117[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.insertvalue %119, %118[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %121 = llvm.insertvalue %94, %120[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %122 = llvm.insertvalue %95, %121[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %123 = llvm.insertvalue %96, %122[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %124 = llvm.insertvalue %97, %123[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %125 = llvm.insertvalue %98, %124[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %126 = llvm.insertvalue %100, %125[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %127 = llvm.insertvalue %96, %126[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %128 = llvm.insertvalue %97, %127[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %129 = llvm.insertvalue %98, %128[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %130 = llvm.insertvalue %99, %129[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%131 : i64)
  ^bb16(%134: i64):  // 2 preds: ^bb15, ^bb29
    %135 = llvm.icmp "slt" %134, %132 : i64
    llvm.cond_br %135, ^bb17, ^bb30
  ^bb17:  // pred: ^bb16
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%136 : i64)
  ^bb18(%139: i64):  // 2 preds: ^bb17, ^bb28
    %140 = llvm.icmp "slt" %139, %137 : i64
    llvm.cond_br %140, ^bb19, ^bb29
  ^bb19:  // pred: ^bb18
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%141 : i64)
  ^bb20(%144: i64):  // 2 preds: ^bb19, ^bb27
    %145 = llvm.icmp "slt" %144, %142 : i64
    llvm.cond_br %145, ^bb21, ^bb28
  ^bb21:  // pred: ^bb20
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%146 : i64)
  ^bb22(%149: i64):  // 2 preds: ^bb21, ^bb26
    %150 = llvm.icmp "slt" %149, %147 : i64
    llvm.cond_br %150, ^bb23, ^bb27
  ^bb23:  // pred: ^bb22
    %151 = llvm.mlir.constant(0 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%151 : i64)
  ^bb24(%154: i64):  // 2 preds: ^bb23, ^bb25
    %155 = llvm.icmp "slt" %154, %152 : i64
    llvm.cond_br %155, ^bb25, ^bb26
  ^bb25:  // pred: ^bb24
    %156 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %157 = llvm.add %134, %139  : i64
    %158 = llvm.add %157, %144  : i64
    %159 = llvm.add %158, %149  : i64
    %160 = llvm.add %159, %154  : i64
    %161 = llvm.getelementptr %156[%160] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %162 = llvm.load %161 : !llvm.ptr<i32>
    %163 = llvm.extractvalue %130[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %164 = llvm.mlir.constant(2 : index) : i64
    %165 = llvm.mul %134, %164  : i64
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mul %139, %166  : i64
    %168 = llvm.add %165, %167  : i64
    %169 = llvm.add %168, %144  : i64
    %170 = llvm.add %169, %149  : i64
    %171 = llvm.add %170, %154  : i64
    %172 = llvm.getelementptr %163[%171] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %162, %172 : !llvm.ptr<i32>
    %173 = llvm.add %154, %153  : i64
    llvm.br ^bb24(%173 : i64)
  ^bb26:  // pred: ^bb24
    %174 = llvm.add %149, %148  : i64
    llvm.br ^bb22(%174 : i64)
  ^bb27:  // pred: ^bb22
    %175 = llvm.add %144, %143  : i64
    llvm.br ^bb20(%175 : i64)
  ^bb28:  // pred: ^bb20
    %176 = llvm.add %139, %138  : i64
    llvm.br ^bb18(%176 : i64)
  ^bb29:  // pred: ^bb18
    %177 = llvm.add %134, %133  : i64
    llvm.br ^bb16(%177 : i64)
  ^bb30:  // pred: ^bb16
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%178 : i64)
  ^bb31(%181: i64):  // 2 preds: ^bb30, ^bb44
    %182 = llvm.icmp "slt" %181, %179 : i64
    llvm.cond_br %182, ^bb32, ^bb45
  ^bb32:  // pred: ^bb31
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%183 : i64)
  ^bb33(%186: i64):  // 2 preds: ^bb32, ^bb43
    %187 = llvm.icmp "slt" %186, %184 : i64
    llvm.cond_br %187, ^bb34, ^bb44
  ^bb34:  // pred: ^bb33
    %188 = llvm.mlir.constant(0 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%188 : i64)
  ^bb35(%191: i64):  // 2 preds: ^bb34, ^bb42
    %192 = llvm.icmp "slt" %191, %189 : i64
    llvm.cond_br %192, ^bb36, ^bb43
  ^bb36:  // pred: ^bb35
    %193 = llvm.mlir.constant(0 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%193 : i64)
  ^bb37(%196: i64):  // 2 preds: ^bb36, ^bb41
    %197 = llvm.icmp "slt" %196, %194 : i64
    llvm.cond_br %197, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%198 : i64)
  ^bb39(%201: i64):  // 2 preds: ^bb38, ^bb40
    %202 = llvm.icmp "slt" %201, %199 : i64
    llvm.cond_br %202, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.add %191, %203  : i64
    %205 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %206 = llvm.add %181, %186  : i64
    %207 = llvm.add %206, %191  : i64
    %208 = llvm.add %207, %196  : i64
    %209 = llvm.add %208, %201  : i64
    %210 = llvm.getelementptr %205[%209] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %211 = llvm.load %210 : !llvm.ptr<i32>
    %212 = llvm.extractvalue %130[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mul %181, %213  : i64
    %215 = llvm.mlir.constant(2 : index) : i64
    %216 = llvm.mul %186, %215  : i64
    %217 = llvm.add %214, %216  : i64
    %218 = llvm.add %217, %204  : i64
    %219 = llvm.add %218, %196  : i64
    %220 = llvm.add %219, %201  : i64
    %221 = llvm.getelementptr %212[%220] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %211, %221 : !llvm.ptr<i32>
    %222 = llvm.add %201, %200  : i64
    llvm.br ^bb39(%222 : i64)
  ^bb41:  // pred: ^bb39
    %223 = llvm.add %196, %195  : i64
    llvm.br ^bb37(%223 : i64)
  ^bb42:  // pred: ^bb37
    %224 = llvm.add %191, %190  : i64
    llvm.br ^bb35(%224 : i64)
  ^bb43:  // pred: ^bb35
    %225 = llvm.add %186, %185  : i64
    llvm.br ^bb33(%225 : i64)
  ^bb44:  // pred: ^bb33
    %226 = llvm.add %181, %180  : i64
    llvm.br ^bb31(%226 : i64)
  ^bb45:  // pred: ^bb31
    %227 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %228 = llvm.extractvalue %49[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %229 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %230 = llvm.insertvalue %228, %227[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.insertvalue %229, %230[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.insertvalue %232, %231[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.insertvalue %234, %233[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.insertvalue %236, %235[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.insertvalue %238, %237[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.insertvalue %240, %239[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.insertvalue %242, %241[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.insertvalue %244, %243[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.insertvalue %246, %245[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.insertvalue %248, %247[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.null : !llvm.ptr<i1>
    %256 = llvm.getelementptr %255[%250] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %257 = llvm.ptrtoint %256 : !llvm.ptr<i1> to i64
    %258 = llvm.mlir.constant(16 : index) : i64
    %259 = llvm.add %257, %258  : i64
    %260 = llvm.call @malloc(%259) : (i64) -> !llvm.ptr<i8>
    %261 = llvm.bitcast %260 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %262 = llvm.ptrtoint %261 : !llvm.ptr<i1> to i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.sub %258, %263  : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.urem %265, %258  : i64
    %267 = llvm.sub %265, %266  : i64
    %268 = llvm.inttoptr %267 : i64 to !llvm.ptr<i1>
    %269 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %270 = llvm.insertvalue %261, %269[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.insertvalue %268, %270[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.insertvalue %272, %271[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %250, %273[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.insertvalue %251, %274[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %252, %275[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %253, %276[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %251, %277[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %252, %278[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.insertvalue %253, %279[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %254, %280[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.mlir.constant(0 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%282 : i64)
  ^bb46(%285: i64):  // 2 preds: ^bb45, ^bb56
    %286 = llvm.icmp "slt" %285, %283 : i64
    llvm.cond_br %286, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%287 : i64)
  ^bb48(%290: i64):  // 2 preds: ^bb47, ^bb55
    %291 = llvm.icmp "slt" %290, %288 : i64
    llvm.cond_br %291, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%292 : i64)
  ^bb50(%295: i64):  // 2 preds: ^bb49, ^bb54
    %296 = llvm.icmp "slt" %295, %293 : i64
    llvm.cond_br %296, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %297 = llvm.mlir.constant(0 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%297 : i64)
  ^bb52(%300: i64):  // 2 preds: ^bb51, ^bb53
    %301 = llvm.icmp "slt" %300, %298 : i64
    llvm.cond_br %301, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %302 = llvm.extractvalue %249[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.add %285, %290  : i64
    %304 = llvm.add %303, %295  : i64
    %305 = llvm.add %304, %300  : i64
    %306 = llvm.getelementptr %302[%305] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %307 = llvm.load %306 : !llvm.ptr<i32>
    %308 = llvm.icmp "ne" %307, %14 : i32
    %309 = llvm.extractvalue %281[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.add %285, %290  : i64
    %311 = llvm.add %310, %295  : i64
    %312 = llvm.add %311, %300  : i64
    %313 = llvm.getelementptr %309[%312] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %308, %313 : !llvm.ptr<i1>
    %314 = llvm.add %300, %299  : i64
    llvm.br ^bb52(%314 : i64)
  ^bb54:  // pred: ^bb52
    %315 = llvm.add %295, %294  : i64
    llvm.br ^bb50(%315 : i64)
  ^bb55:  // pred: ^bb50
    %316 = llvm.add %290, %289  : i64
    llvm.br ^bb48(%316 : i64)
  ^bb56:  // pred: ^bb48
    %317 = llvm.add %285, %284  : i64
    llvm.br ^bb46(%317 : i64)
  ^bb57:  // pred: ^bb46
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.mlir.null : !llvm.ptr<i32>
    %324 = llvm.getelementptr %323[%318] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %325 = llvm.ptrtoint %324 : !llvm.ptr<i32> to i64
    %326 = llvm.mlir.constant(16 : index) : i64
    %327 = llvm.add %325, %326  : i64
    %328 = llvm.call @malloc(%327) : (i64) -> !llvm.ptr<i8>
    %329 = llvm.bitcast %328 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %330 = llvm.ptrtoint %329 : !llvm.ptr<i32> to i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.sub %326, %331  : i64
    %333 = llvm.add %330, %332  : i64
    %334 = llvm.urem %333, %326  : i64
    %335 = llvm.sub %333, %334  : i64
    %336 = llvm.inttoptr %335 : i64 to !llvm.ptr<i32>
    %337 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %338 = llvm.insertvalue %329, %337[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.insertvalue %336, %338[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.insertvalue %340, %339[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.insertvalue %318, %341[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.insertvalue %319, %342[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.insertvalue %320, %343[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %321, %344[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.insertvalue %319, %345[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.insertvalue %320, %346[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.insertvalue %321, %347[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.insertvalue %322, %348[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.mlir.constant(0 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%350 : i64)
  ^bb58(%353: i64):  // 2 preds: ^bb57, ^bb68
    %354 = llvm.icmp "slt" %353, %351 : i64
    llvm.cond_br %354, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %355 = llvm.mlir.constant(0 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%355 : i64)
  ^bb60(%358: i64):  // 2 preds: ^bb59, ^bb67
    %359 = llvm.icmp "slt" %358, %356 : i64
    llvm.cond_br %359, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%360 : i64)
  ^bb62(%363: i64):  // 2 preds: ^bb61, ^bb66
    %364 = llvm.icmp "slt" %363, %361 : i64
    llvm.cond_br %364, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %365 = llvm.mlir.constant(0 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%365 : i64)
  ^bb64(%368: i64):  // 2 preds: ^bb63, ^bb65
    %369 = llvm.icmp "slt" %368, %366 : i64
    llvm.cond_br %369, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %370 = llvm.extractvalue %249[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.add %353, %358  : i64
    %372 = llvm.add %371, %363  : i64
    %373 = llvm.add %372, %368  : i64
    %374 = llvm.getelementptr %370[%373] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %375 = llvm.load %374 : !llvm.ptr<i32>
    %376 = llvm.extractvalue %249[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.add %353, %358  : i64
    %378 = llvm.add %377, %363  : i64
    %379 = llvm.add %378, %368  : i64
    %380 = llvm.getelementptr %376[%379] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %381 = llvm.load %380 : !llvm.ptr<i32>
    %382 = llvm.add %375, %381  : i32
    %383 = llvm.extractvalue %349[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.add %353, %358  : i64
    %385 = llvm.add %384, %363  : i64
    %386 = llvm.add %385, %368  : i64
    %387 = llvm.getelementptr %383[%386] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %382, %387 : !llvm.ptr<i32>
    %388 = llvm.add %368, %367  : i64
    llvm.br ^bb64(%388 : i64)
  ^bb66:  // pred: ^bb64
    %389 = llvm.add %363, %362  : i64
    llvm.br ^bb62(%389 : i64)
  ^bb67:  // pred: ^bb62
    %390 = llvm.add %358, %357  : i64
    llvm.br ^bb60(%390 : i64)
  ^bb68:  // pred: ^bb60
    %391 = llvm.add %353, %352  : i64
    llvm.br ^bb58(%391 : i64)
  ^bb69:  // pred: ^bb58
    %392 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %393 = llvm.insertvalue %130, %392[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %394 = llvm.insertvalue %281, %393[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %395 = llvm.insertvalue %349, %394[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %395 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %52 = llvm.extractvalue %51[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %53 = llvm.extractvalue %51[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %54 = llvm.extractvalue %51[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %55 = llvm.mlir.constant(3 : i64) : i64
    %56 = llvm.mlir.constant(24 : i64) : i64
    %57 = llvm.call @malloc(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.bitcast %57 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %59 = llvm.mlir.constant(5 : i64) : i64
    %60 = llvm.call @omTensorCreateUntyped(%59) : (i64) -> !llvm.ptr<i8>
    %61 = llvm.mlir.constant(1 : i64) : i64
    %62 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %63 = llvm.bitcast %62 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %64 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.bitcast %64 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%60, %61, %63, %65) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %66 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%60, %66) : (!llvm.ptr<i8>, i64) -> ()
    %67 = llvm.call @omTensorGetShape(%60) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.call @omTensorGetStrides(%60) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %69 = llvm.mlir.constant(0 : i64) : i64
    %70 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %71 = llvm.getelementptr %67[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %73 = llvm.getelementptr %68[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(1 : i64) : i64
    %75 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %76 = llvm.getelementptr %67[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %78 = llvm.getelementptr %68[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(2 : i64) : i64
    %80 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %81 = llvm.getelementptr %67[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %83 = llvm.getelementptr %68[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.mlir.constant(3 : i64) : i64
    %85 = llvm.extractvalue %52[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %86 = llvm.getelementptr %67[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.extractvalue %52[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %88 = llvm.getelementptr %68[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.mlir.constant(4 : i64) : i64
    %90 = llvm.extractvalue %52[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %91 = llvm.getelementptr %67[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.extractvalue %52[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %93 = llvm.getelementptr %68[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.getelementptr %58[%94] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %60, %95 : !llvm.ptr<ptr<i8>>
    %96 = llvm.mlir.constant(4 : i64) : i64
    %97 = llvm.call @omTensorCreateUntyped(%96) : (i64) -> !llvm.ptr<i8>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %53[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.bitcast %99 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %101 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.bitcast %101 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%97, %98, %100, %102) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %103 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%97, %103) : (!llvm.ptr<i8>, i64) -> ()
    %104 = llvm.call @omTensorGetShape(%97) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %105 = llvm.call @omTensorGetStrides(%97) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %106 = llvm.mlir.constant(0 : i64) : i64
    %107 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %104[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %105[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.mlir.constant(1 : i64) : i64
    %112 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %104[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %105[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.mlir.constant(2 : i64) : i64
    %117 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %104[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %105[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.mlir.constant(3 : i64) : i64
    %122 = llvm.extractvalue %53[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %104[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %53[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.getelementptr %105[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.getelementptr %58[%126] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %97, %127 : !llvm.ptr<ptr<i8>>
    %128 = llvm.mlir.constant(4 : i64) : i64
    %129 = llvm.call @omTensorCreateUntyped(%128) : (i64) -> !llvm.ptr<i8>
    %130 = llvm.mlir.constant(1 : i64) : i64
    %131 = llvm.extractvalue %54[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.bitcast %131 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %133 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.bitcast %133 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%129, %130, %132, %134) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %135 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%129, %135) : (!llvm.ptr<i8>, i64) -> ()
    %136 = llvm.call @omTensorGetShape(%129) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %137 = llvm.call @omTensorGetStrides(%129) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %138 = llvm.mlir.constant(0 : i64) : i64
    %139 = llvm.extractvalue %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %136[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.extractvalue %54[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.getelementptr %137[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %141, %142 : !llvm.ptr<i64>
    %143 = llvm.mlir.constant(1 : i64) : i64
    %144 = llvm.extractvalue %54[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %136[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.extractvalue %54[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.getelementptr %137[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.mlir.constant(2 : i64) : i64
    %149 = llvm.extractvalue %54[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %136[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.extractvalue %54[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.getelementptr %137[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.mlir.constant(3 : i64) : i64
    %154 = llvm.extractvalue %54[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.getelementptr %136[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %154, %155 : !llvm.ptr<i64>
    %156 = llvm.extractvalue %54[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.getelementptr %137[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %156, %157 : !llvm.ptr<i64>
    %158 = llvm.mlir.constant(2 : i64) : i64
    %159 = llvm.getelementptr %58[%158] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %129, %159 : !llvm.ptr<ptr<i8>>
    %160 = llvm.call @omTensorListCreate(%58, %55, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %160 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<76 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<76 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<214 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<214 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

