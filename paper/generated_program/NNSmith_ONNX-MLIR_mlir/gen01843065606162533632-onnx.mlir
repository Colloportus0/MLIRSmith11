module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v1_0", "v3_0"]} {
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
    %14 = llvm.mlir.constant(0 : i64) : i64
    %15 = llvm.mlir.constant(-1 : i64) : i64
    %16 = llvm.mlir.constant(-2147483648 : i32) : i32
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.mlir.null : !llvm.ptr<i32>
    %24 = llvm.getelementptr %23[%17] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %25 = llvm.ptrtoint %24 : !llvm.ptr<i32> to i64
    %26 = llvm.mlir.constant(16 : index) : i64
    %27 = llvm.add %25, %26  : i64
    %28 = llvm.call @malloc(%27) : (i64) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %30 = llvm.ptrtoint %29 : !llvm.ptr<i32> to i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.sub %26, %31  : i64
    %33 = llvm.add %30, %32  : i64
    %34 = llvm.urem %33, %26  : i64
    %35 = llvm.sub %33, %34  : i64
    %36 = llvm.inttoptr %35 : i64 to !llvm.ptr<i32>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %38 = llvm.insertvalue %29, %37[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %42 = llvm.insertvalue %17, %41[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %43 = llvm.insertvalue %18, %42[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.insertvalue %19, %43[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %45 = llvm.insertvalue %20, %44[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %46 = llvm.insertvalue %21, %45[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %47 = llvm.insertvalue %18, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.insertvalue %19, %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %49 = llvm.insertvalue %20, %48[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %50 = llvm.insertvalue %21, %49[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %51 = llvm.insertvalue %22, %50[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%52 : i64)
  ^bb1(%55: i64):  // 2 preds: ^bb0, ^bb14
    %56 = llvm.icmp "slt" %55, %53 : i64
    llvm.cond_br %56, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %57 = llvm.mlir.constant(0 : index) : i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%57 : i64)
  ^bb3(%60: i64):  // 2 preds: ^bb2, ^bb13
    %61 = llvm.icmp "slt" %60, %58 : i64
    llvm.cond_br %61, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%62 : i64)
  ^bb5(%65: i64):  // 2 preds: ^bb4, ^bb12
    %66 = llvm.icmp "slt" %65, %63 : i64
    llvm.cond_br %66, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%67 : i64)
  ^bb7(%70: i64):  // 2 preds: ^bb6, ^bb11
    %71 = llvm.icmp "slt" %70, %68 : i64
    llvm.cond_br %71, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%72 : i64)
  ^bb9(%75: i64):  // 2 preds: ^bb8, ^bb10
    %76 = llvm.icmp "slt" %75, %73 : i64
    llvm.cond_br %76, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %77 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %78 = llvm.add %55, %60  : i64
    %79 = llvm.add %78, %65  : i64
    %80 = llvm.add %79, %70  : i64
    %81 = llvm.add %80, %75  : i64
    %82 = llvm.getelementptr %77[%81] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %83 = llvm.load %82 : !llvm.ptr<i32>
    %84 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %85 = llvm.add %55, %60  : i64
    %86 = llvm.add %85, %65  : i64
    %87 = llvm.add %86, %70  : i64
    %88 = llvm.add %87, %75  : i64
    %89 = llvm.getelementptr %84[%88] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %83, %89 : !llvm.ptr<i32>
    %90 = llvm.add %75, %74  : i64
    llvm.br ^bb9(%90 : i64)
  ^bb11:  // pred: ^bb9
    %91 = llvm.add %70, %69  : i64
    llvm.br ^bb7(%91 : i64)
  ^bb12:  // pred: ^bb7
    %92 = llvm.add %65, %64  : i64
    llvm.br ^bb5(%92 : i64)
  ^bb13:  // pred: ^bb5
    %93 = llvm.add %60, %59  : i64
    llvm.br ^bb3(%93 : i64)
  ^bb14:  // pred: ^bb3
    %94 = llvm.add %55, %54  : i64
    llvm.br ^bb1(%94 : i64)
  ^bb15:  // pred: ^bb1
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.mlir.null : !llvm.ptr<i32>
    %101 = llvm.getelementptr %100[%95] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %102 = llvm.ptrtoint %101 : !llvm.ptr<i32> to i64
    %103 = llvm.mlir.constant(16 : index) : i64
    %104 = llvm.add %102, %103  : i64
    %105 = llvm.call @malloc(%104) : (i64) -> !llvm.ptr<i8>
    %106 = llvm.bitcast %105 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %107 = llvm.ptrtoint %106 : !llvm.ptr<i32> to i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.sub %103, %108  : i64
    %110 = llvm.add %107, %109  : i64
    %111 = llvm.urem %110, %103  : i64
    %112 = llvm.sub %110, %111  : i64
    %113 = llvm.inttoptr %112 : i64 to !llvm.ptr<i32>
    %114 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %115 = llvm.insertvalue %106, %114[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.insertvalue %113, %115[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.insertvalue %117, %116[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.insertvalue %95, %118[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.insertvalue %96, %119[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.insertvalue %97, %120[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.insertvalue %98, %121[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.insertvalue %96, %122[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.insertvalue %97, %123[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.insertvalue %98, %124[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %99, %125[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%127 : i64)
  ^bb16(%130: i64):  // 2 preds: ^bb15, ^bb26
    %131 = llvm.icmp "slt" %130, %128 : i64
    llvm.cond_br %131, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%132 : i64)
  ^bb18(%135: i64):  // 2 preds: ^bb17, ^bb25
    %136 = llvm.icmp "slt" %135, %133 : i64
    llvm.cond_br %136, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %137 = llvm.mlir.constant(0 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%137 : i64)
  ^bb20(%140: i64):  // 2 preds: ^bb19, ^bb24
    %141 = llvm.icmp "slt" %140, %138 : i64
    llvm.cond_br %141, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%142 : i64)
  ^bb22(%145: i64):  // 2 preds: ^bb21, ^bb23
    %146 = llvm.icmp "slt" %145, %143 : i64
    llvm.cond_br %146, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %147 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.add %130, %135  : i64
    %149 = llvm.add %148, %140  : i64
    %150 = llvm.add %149, %145  : i64
    %151 = llvm.getelementptr %147[%150] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %16, %151 : !llvm.ptr<i32>
    %152 = llvm.add %145, %144  : i64
    llvm.br ^bb22(%152 : i64)
  ^bb24:  // pred: ^bb22
    %153 = llvm.add %140, %139  : i64
    llvm.br ^bb20(%153 : i64)
  ^bb25:  // pred: ^bb20
    %154 = llvm.add %135, %134  : i64
    llvm.br ^bb18(%154 : i64)
  ^bb26:  // pred: ^bb18
    %155 = llvm.add %130, %129  : i64
    llvm.br ^bb16(%155 : i64)
  ^bb27:  // pred: ^bb16
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%156 : i64)
  ^bb28(%159: i64):  // 2 preds: ^bb27, ^bb41
    %160 = llvm.icmp "slt" %159, %157 : i64
    llvm.cond_br %160, ^bb29, ^bb42
  ^bb29:  // pred: ^bb28
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%161 : i64)
  ^bb30(%164: i64):  // 2 preds: ^bb29, ^bb40
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%166 : i64)
  ^bb32(%169: i64):  // 2 preds: ^bb31, ^bb39
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%171 : i64)
  ^bb34(%174: i64):  // 2 preds: ^bb33, ^bb38
    %175 = llvm.icmp "slt" %174, %172 : i64
    llvm.cond_br %175, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%176 : i64)
  ^bb36(%179: i64):  // 2 preds: ^bb35, ^bb37
    %180 = llvm.icmp "slt" %179, %177 : i64
    llvm.cond_br %180, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %181 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %182 = llvm.add %159, %164  : i64
    %183 = llvm.add %182, %169  : i64
    %184 = llvm.add %183, %174  : i64
    %185 = llvm.add %184, %179  : i64
    %186 = llvm.getelementptr %181[%185] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %187 = llvm.load %186 : !llvm.ptr<i32>
    %188 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.add %159, %164  : i64
    %190 = llvm.add %189, %174  : i64
    %191 = llvm.add %190, %179  : i64
    %192 = llvm.getelementptr %188[%191] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %193 = llvm.load %192 : !llvm.ptr<i32>
    %194 = llvm.icmp "sgt" %193, %187 : i32
    %195 = llvm.select %194, %193, %187 : i1, i32
    %196 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.add %159, %164  : i64
    %198 = llvm.add %197, %174  : i64
    %199 = llvm.add %198, %179  : i64
    %200 = llvm.getelementptr %196[%199] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %195, %200 : !llvm.ptr<i32>
    %201 = llvm.add %179, %178  : i64
    llvm.br ^bb36(%201 : i64)
  ^bb38:  // pred: ^bb36
    %202 = llvm.add %174, %173  : i64
    llvm.br ^bb34(%202 : i64)
  ^bb39:  // pred: ^bb34
    %203 = llvm.add %169, %168  : i64
    llvm.br ^bb32(%203 : i64)
  ^bb40:  // pred: ^bb32
    %204 = llvm.add %164, %163  : i64
    llvm.br ^bb30(%204 : i64)
  ^bb41:  // pred: ^bb30
    %205 = llvm.add %159, %158  : i64
    llvm.br ^bb28(%205 : i64)
  ^bb42:  // pred: ^bb28
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.null : !llvm.ptr<i64>
    %211 = llvm.getelementptr %210[%206] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %212 = llvm.ptrtoint %211 : !llvm.ptr<i64> to i64
    %213 = llvm.mlir.constant(16 : index) : i64
    %214 = llvm.add %212, %213  : i64
    %215 = llvm.call @malloc(%214) : (i64) -> !llvm.ptr<i8>
    %216 = llvm.bitcast %215 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %217 = llvm.ptrtoint %216 : !llvm.ptr<i64> to i64
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.sub %213, %218  : i64
    %220 = llvm.add %217, %219  : i64
    %221 = llvm.urem %220, %213  : i64
    %222 = llvm.sub %220, %221  : i64
    %223 = llvm.inttoptr %222 : i64 to !llvm.ptr<i64>
    %224 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %225 = llvm.insertvalue %216, %224[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %226 = llvm.insertvalue %223, %225[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %227 = llvm.mlir.constant(0 : index) : i64
    %228 = llvm.insertvalue %227, %226[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %229 = llvm.insertvalue %206, %228[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %230 = llvm.insertvalue %207, %229[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %231 = llvm.insertvalue %208, %230[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %232 = llvm.insertvalue %207, %231[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %233 = llvm.insertvalue %208, %232[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %234 = llvm.insertvalue %209, %233[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%235 : i64)
  ^bb43(%238: i64):  // 2 preds: ^bb42, ^bb50
    %239 = llvm.icmp "slt" %238, %236 : i64
    llvm.cond_br %239, ^bb44, ^bb51
  ^bb44:  // pred: ^bb43
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%240 : i64)
  ^bb45(%243: i64):  // 2 preds: ^bb44, ^bb49
    %244 = llvm.icmp "slt" %243, %241 : i64
    llvm.cond_br %244, ^bb46, ^bb50
  ^bb46:  // pred: ^bb45
    %245 = llvm.mlir.constant(0 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%245 : i64)
  ^bb47(%248: i64):  // 2 preds: ^bb46, ^bb48
    %249 = llvm.icmp "slt" %248, %246 : i64
    llvm.cond_br %249, ^bb48, ^bb49
  ^bb48:  // pred: ^bb47
    %250 = llvm.extractvalue %234[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %251 = llvm.add %238, %243  : i64
    %252 = llvm.add %251, %248  : i64
    %253 = llvm.getelementptr %250[%252] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %15, %253 : !llvm.ptr<i64>
    %254 = llvm.add %248, %247  : i64
    llvm.br ^bb47(%254 : i64)
  ^bb49:  // pred: ^bb47
    %255 = llvm.add %243, %242  : i64
    llvm.br ^bb45(%255 : i64)
  ^bb50:  // pred: ^bb45
    %256 = llvm.add %238, %237  : i64
    llvm.br ^bb43(%256 : i64)
  ^bb51:  // pred: ^bb43
    %257 = llvm.mlir.constant(0 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%257 : i64)
  ^bb52(%260: i64):  // 2 preds: ^bb51, ^bb62
    %261 = llvm.icmp "slt" %260, %258 : i64
    llvm.cond_br %261, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %262 = llvm.mlir.constant(0 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%262 : i64)
  ^bb54(%265: i64):  // 2 preds: ^bb53, ^bb61
    %266 = llvm.icmp "slt" %265, %263 : i64
    llvm.cond_br %266, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%267 : i64)
  ^bb56(%270: i64):  // 2 preds: ^bb55, ^bb60
    %271 = llvm.icmp "slt" %270, %268 : i64
    llvm.cond_br %271, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%272 : i64)
  ^bb58(%275: i64):  // 2 preds: ^bb57, ^bb59
    %276 = llvm.icmp "slt" %275, %273 : i64
    llvm.cond_br %276, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %277 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.add %260, %265  : i64
    %279 = llvm.add %278, %270  : i64
    %280 = llvm.add %279, %275  : i64
    %281 = llvm.getelementptr %277[%280] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %282 = llvm.load %281 : !llvm.ptr<i32>
    %283 = llvm.extractvalue %234[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %284 = llvm.add %260, %265  : i64
    %285 = llvm.add %284, %270  : i64
    %286 = llvm.getelementptr %283[%285] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %287 = llvm.load %286 : !llvm.ptr<i64>
    %288 = llvm.icmp "slt" %287, %14 : i64
    %289 = llvm.select %288, %14, %287 : i1, i64
    %290 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.add %260, %265  : i64
    %292 = llvm.add %291, %270  : i64
    %293 = llvm.add %292, %289  : i64
    %294 = llvm.getelementptr %290[%293] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %295 = llvm.load %294 : !llvm.ptr<i32>
    %296 = llvm.icmp "sgt" %282, %295 : i32
    %297 = llvm.select %296, %275, %289 : i1, i64
    %298 = llvm.extractvalue %234[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %299 = llvm.add %260, %265  : i64
    %300 = llvm.add %299, %270  : i64
    %301 = llvm.getelementptr %298[%300] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %297, %301 : !llvm.ptr<i64>
    %302 = llvm.add %275, %274  : i64
    llvm.br ^bb58(%302 : i64)
  ^bb60:  // pred: ^bb58
    %303 = llvm.add %270, %269  : i64
    llvm.br ^bb56(%303 : i64)
  ^bb61:  // pred: ^bb56
    %304 = llvm.add %265, %264  : i64
    llvm.br ^bb54(%304 : i64)
  ^bb62:  // pred: ^bb54
    %305 = llvm.add %260, %259  : i64
    llvm.br ^bb52(%305 : i64)
  ^bb63:  // pred: ^bb52
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.mlir.null : !llvm.ptr<i64>
    %311 = llvm.getelementptr %310[%306] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %312 = llvm.ptrtoint %311 : !llvm.ptr<i64> to i64
    %313 = llvm.mlir.constant(16 : index) : i64
    %314 = llvm.add %312, %313  : i64
    %315 = llvm.call @malloc(%314) : (i64) -> !llvm.ptr<i8>
    %316 = llvm.bitcast %315 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %317 = llvm.ptrtoint %316 : !llvm.ptr<i64> to i64
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.sub %313, %318  : i64
    %320 = llvm.add %317, %319  : i64
    %321 = llvm.urem %320, %313  : i64
    %322 = llvm.sub %320, %321  : i64
    %323 = llvm.inttoptr %322 : i64 to !llvm.ptr<i64>
    %324 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %325 = llvm.insertvalue %316, %324[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %326 = llvm.insertvalue %323, %325[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %327 = llvm.mlir.constant(0 : index) : i64
    %328 = llvm.insertvalue %327, %326[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %329 = llvm.insertvalue %306, %328[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %330 = llvm.insertvalue %307, %329[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %331 = llvm.insertvalue %308, %330[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %332 = llvm.insertvalue %307, %331[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %333 = llvm.insertvalue %308, %332[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %334 = llvm.insertvalue %309, %333[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%335 : i64)
  ^bb64(%338: i64):  // 2 preds: ^bb63, ^bb71
    %339 = llvm.icmp "slt" %338, %336 : i64
    llvm.cond_br %339, ^bb65, ^bb72
  ^bb65:  // pred: ^bb64
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%340 : i64)
  ^bb66(%343: i64):  // 2 preds: ^bb65, ^bb70
    %344 = llvm.icmp "slt" %343, %341 : i64
    llvm.cond_br %344, ^bb67, ^bb71
  ^bb67:  // pred: ^bb66
    %345 = llvm.mlir.constant(0 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%345 : i64)
  ^bb68(%348: i64):  // 2 preds: ^bb67, ^bb69
    %349 = llvm.icmp "slt" %348, %346 : i64
    llvm.cond_br %349, ^bb69, ^bb70
  ^bb69:  // pred: ^bb68
    %350 = llvm.extractvalue %234[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %351 = llvm.add %338, %343  : i64
    %352 = llvm.add %351, %348  : i64
    %353 = llvm.getelementptr %350[%352] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %354 = llvm.load %353 : !llvm.ptr<i64>
    %355 = llvm.extractvalue %234[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %356 = llvm.add %338, %343  : i64
    %357 = llvm.add %356, %348  : i64
    %358 = llvm.getelementptr %355[%357] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %359 = llvm.load %358 : !llvm.ptr<i64>
    %360 = llvm.sub %354, %359  : i64
    %361 = llvm.extractvalue %334[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %362 = llvm.add %338, %343  : i64
    %363 = llvm.add %362, %348  : i64
    %364 = llvm.getelementptr %361[%363] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %360, %364 : !llvm.ptr<i64>
    %365 = llvm.add %348, %347  : i64
    llvm.br ^bb68(%365 : i64)
  ^bb70:  // pred: ^bb68
    %366 = llvm.add %343, %342  : i64
    llvm.br ^bb66(%366 : i64)
  ^bb71:  // pred: ^bb66
    %367 = llvm.add %338, %337  : i64
    llvm.br ^bb64(%367 : i64)
  ^bb72:  // pred: ^bb64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.mlir.null : !llvm.ptr<i32>
    %373 = llvm.getelementptr %372[%368] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %374 = llvm.ptrtoint %373 : !llvm.ptr<i32> to i64
    %375 = llvm.mlir.constant(16 : index) : i64
    %376 = llvm.add %374, %375  : i64
    %377 = llvm.call @malloc(%376) : (i64) -> !llvm.ptr<i8>
    %378 = llvm.bitcast %377 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %379 = llvm.ptrtoint %378 : !llvm.ptr<i32> to i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.sub %375, %380  : i64
    %382 = llvm.add %379, %381  : i64
    %383 = llvm.urem %382, %375  : i64
    %384 = llvm.sub %382, %383  : i64
    %385 = llvm.inttoptr %384 : i64 to !llvm.ptr<i32>
    %386 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %387 = llvm.insertvalue %378, %386[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %388 = llvm.insertvalue %385, %387[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.insertvalue %389, %388[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %391 = llvm.insertvalue %368, %390[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %392 = llvm.insertvalue %369, %391[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %393 = llvm.insertvalue %370, %392[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %394 = llvm.insertvalue %369, %393[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %395 = llvm.insertvalue %370, %394[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %396 = llvm.insertvalue %371, %395[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.mlir.constant(1 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%397 : i64)
  ^bb73(%400: i64):  // 2 preds: ^bb72, ^bb80
    %401 = llvm.icmp "slt" %400, %398 : i64
    llvm.cond_br %401, ^bb74, ^bb81
  ^bb74:  // pred: ^bb73
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%402 : i64)
  ^bb75(%405: i64):  // 2 preds: ^bb74, ^bb79
    %406 = llvm.icmp "slt" %405, %403 : i64
    llvm.cond_br %406, ^bb76, ^bb80
  ^bb76:  // pred: ^bb75
    %407 = llvm.mlir.constant(0 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%407 : i64)
  ^bb77(%410: i64):  // 2 preds: ^bb76, ^bb78
    %411 = llvm.icmp "slt" %410, %408 : i64
    llvm.cond_br %411, ^bb78, ^bb79
  ^bb78:  // pred: ^bb77
    %412 = llvm.extractvalue %234[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %413 = llvm.add %400, %405  : i64
    %414 = llvm.add %413, %410  : i64
    %415 = llvm.getelementptr %412[%414] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %416 = llvm.load %415 : !llvm.ptr<i64>
    %417 = llvm.trunc %416 : i64 to i32
    %418 = llvm.extractvalue %396[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %419 = llvm.add %400, %405  : i64
    %420 = llvm.add %419, %410  : i64
    %421 = llvm.getelementptr %418[%420] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %417, %421 : !llvm.ptr<i32>
    %422 = llvm.add %410, %409  : i64
    llvm.br ^bb77(%422 : i64)
  ^bb79:  // pred: ^bb77
    %423 = llvm.add %405, %404  : i64
    llvm.br ^bb75(%423 : i64)
  ^bb80:  // pred: ^bb75
    %424 = llvm.add %400, %399  : i64
    llvm.br ^bb73(%424 : i64)
  ^bb81:  // pred: ^bb73
    %425 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %426 = llvm.insertvalue %334, %425[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %427 = llvm.insertvalue %396, %426[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %427 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v1_0", "v3_0"]} {
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
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %52 = llvm.extractvalue %51[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %53 = llvm.extractvalue %51[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %54 = llvm.mlir.constant(2 : i64) : i64
    %55 = llvm.mlir.constant(16 : i64) : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %58 = llvm.mlir.constant(3 : i64) : i64
    %59 = llvm.call @omTensorCreateUntyped(%58) : (i64) -> !llvm.ptr<i8>
    %60 = llvm.mlir.constant(1 : i64) : i64
    %61 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %63 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.bitcast %63 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%59, %60, %62, %64) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %65 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%59, %65) : (!llvm.ptr<i8>, i64) -> ()
    %66 = llvm.call @omTensorGetShape(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %67 = llvm.call @omTensorGetStrides(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.mlir.constant(0 : i64) : i64
    %69 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.getelementptr %66[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %72 = llvm.getelementptr %67[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %66[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %77 = llvm.getelementptr %67[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %80 = llvm.getelementptr %66[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.getelementptr %67[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.mlir.constant(0 : i64) : i64
    %84 = llvm.getelementptr %57[%83] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %59, %84 : !llvm.ptr<ptr<i8>>
    %85 = llvm.mlir.constant(3 : i64) : i64
    %86 = llvm.call @omTensorCreateUntyped(%85) : (i64) -> !llvm.ptr<i8>
    %87 = llvm.mlir.constant(1 : i64) : i64
    %88 = llvm.extractvalue %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %90 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %91 = llvm.bitcast %90 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%86, %87, %89, %91) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %92 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%86, %92) : (!llvm.ptr<i8>, i64) -> ()
    %93 = llvm.call @omTensorGetShape(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.call @omTensorGetStrides(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %95 = llvm.mlir.constant(0 : i64) : i64
    %96 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %93[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %99 = llvm.getelementptr %94[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %98, %99 : !llvm.ptr<i64>
    %100 = llvm.mlir.constant(1 : i64) : i64
    %101 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %93[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %104 = llvm.getelementptr %94[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(2 : i64) : i64
    %106 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.getelementptr %93[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.getelementptr %94[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(1 : i64) : i64
    %111 = llvm.getelementptr %57[%110] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %86, %111 : !llvm.ptr<ptr<i8>>
    %112 = llvm.call @omTensorListCreate(%57, %54, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %112 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<133 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<133 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

