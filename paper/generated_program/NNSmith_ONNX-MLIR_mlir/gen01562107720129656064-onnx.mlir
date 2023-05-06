module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 4] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: !llvm.ptr<i32>, %arg4: !llvm.ptr<i32>, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>)> attributes {input_names = ["v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v2_0", "v0_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %5 = llvm.insertvalue %arg3, %4[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg5, %6[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg11, %8[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg7, %9[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg12, %10[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg8, %11[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg13, %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.insertvalue %arg9, %13[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %15 = llvm.insertvalue %arg14, %14[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %16 = llvm.insertvalue %arg10, %15[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %18 = llvm.mlir.constant(-2147483648 : i32) : i32
    %19 = llvm.mlir.constant(2147483647 : i32) : i32
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.mlir.null : !llvm.ptr<i32>
    %27 = llvm.getelementptr %26[%20] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %28 = llvm.ptrtoint %27 : !llvm.ptr<i32> to i64
    %29 = llvm.mlir.constant(16 : index) : i64
    %30 = llvm.add %28, %29  : i64
    %31 = llvm.call @malloc(%30) : (i64) -> !llvm.ptr<i8>
    %32 = llvm.bitcast %31 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %33 = llvm.ptrtoint %32 : !llvm.ptr<i32> to i64
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.sub %29, %34  : i64
    %36 = llvm.add %33, %35  : i64
    %37 = llvm.urem %36, %29  : i64
    %38 = llvm.sub %36, %37  : i64
    %39 = llvm.inttoptr %38 : i64 to !llvm.ptr<i32>
    %40 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %41 = llvm.insertvalue %32, %40[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %42 = llvm.insertvalue %39, %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %43 = llvm.mlir.constant(0 : index) : i64
    %44 = llvm.insertvalue %43, %42[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %45 = llvm.insertvalue %20, %44[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %46 = llvm.insertvalue %21, %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %47 = llvm.insertvalue %22, %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.insertvalue %23, %47[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %49 = llvm.insertvalue %24, %48[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %50 = llvm.insertvalue %21, %49[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %51 = llvm.insertvalue %22, %50[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %52 = llvm.insertvalue %23, %51[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %53 = llvm.insertvalue %24, %52[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %54 = llvm.insertvalue %25, %53[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%55 : i64)
  ^bb1(%58: i64):  // 2 preds: ^bb0, ^bb14
    %59 = llvm.icmp "slt" %58, %56 : i64
    llvm.cond_br %59, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%60 : i64)
  ^bb3(%63: i64):  // 2 preds: ^bb2, ^bb13
    %64 = llvm.icmp "slt" %63, %61 : i64
    llvm.cond_br %64, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%65 : i64)
  ^bb5(%68: i64):  // 2 preds: ^bb4, ^bb12
    %69 = llvm.icmp "slt" %68, %66 : i64
    llvm.cond_br %69, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%70 : i64)
  ^bb7(%73: i64):  // 2 preds: ^bb6, ^bb11
    %74 = llvm.icmp "slt" %73, %71 : i64
    llvm.cond_br %74, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%75 : i64)
  ^bb9(%78: i64):  // 2 preds: ^bb8, ^bb10
    %79 = llvm.icmp "slt" %78, %76 : i64
    llvm.cond_br %79, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %80 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %81 = llvm.add %58, %63  : i64
    %82 = llvm.add %81, %68  : i64
    %83 = llvm.add %82, %73  : i64
    %84 = llvm.add %83, %78  : i64
    %85 = llvm.getelementptr %80[%84] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %86 = llvm.load %85 : !llvm.ptr<i32>
    %87 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %88 = llvm.load %87 : !llvm.ptr<i32>
    %89 = llvm.icmp "slt" %86, %88 : i32
    %90 = llvm.select %89, %86, %88 : i1, i32
    %91 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %92 = llvm.add %58, %63  : i64
    %93 = llvm.add %92, %68  : i64
    %94 = llvm.add %93, %73  : i64
    %95 = llvm.add %94, %78  : i64
    %96 = llvm.getelementptr %91[%95] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %90, %96 : !llvm.ptr<i32>
    %97 = llvm.add %78, %77  : i64
    llvm.br ^bb9(%97 : i64)
  ^bb11:  // pred: ^bb9
    %98 = llvm.add %73, %72  : i64
    llvm.br ^bb7(%98 : i64)
  ^bb12:  // pred: ^bb7
    %99 = llvm.add %68, %67  : i64
    llvm.br ^bb5(%99 : i64)
  ^bb13:  // pred: ^bb5
    %100 = llvm.add %63, %62  : i64
    llvm.br ^bb3(%100 : i64)
  ^bb14:  // pred: ^bb3
    %101 = llvm.add %58, %57  : i64
    llvm.br ^bb1(%101 : i64)
  ^bb15:  // pred: ^bb1
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.null : !llvm.ptr<i32>
    %108 = llvm.getelementptr %107[%102] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %109 = llvm.ptrtoint %108 : !llvm.ptr<i32> to i64
    %110 = llvm.mlir.constant(16 : index) : i64
    %111 = llvm.add %109, %110  : i64
    %112 = llvm.call @malloc(%111) : (i64) -> !llvm.ptr<i8>
    %113 = llvm.bitcast %112 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %114 = llvm.ptrtoint %113 : !llvm.ptr<i32> to i64
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.sub %110, %115  : i64
    %117 = llvm.add %114, %116  : i64
    %118 = llvm.urem %117, %110  : i64
    %119 = llvm.sub %117, %118  : i64
    %120 = llvm.inttoptr %119 : i64 to !llvm.ptr<i32>
    %121 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %122 = llvm.insertvalue %113, %121[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.insertvalue %120, %122[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.mlir.constant(0 : index) : i64
    %125 = llvm.insertvalue %124, %123[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %102, %125[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.insertvalue %103, %126[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.insertvalue %104, %127[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.insertvalue %105, %128[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %103, %129[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.insertvalue %104, %130[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.insertvalue %105, %131[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.insertvalue %106, %132[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.mlir.constant(0 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%134 : i64)
  ^bb16(%137: i64):  // 2 preds: ^bb15, ^bb26
    %138 = llvm.icmp "slt" %137, %135 : i64
    llvm.cond_br %138, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %139 = llvm.mlir.constant(0 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%139 : i64)
  ^bb18(%142: i64):  // 2 preds: ^bb17, ^bb25
    %143 = llvm.icmp "slt" %142, %140 : i64
    llvm.cond_br %143, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %144 = llvm.mlir.constant(0 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%144 : i64)
  ^bb20(%147: i64):  // 2 preds: ^bb19, ^bb24
    %148 = llvm.icmp "slt" %147, %145 : i64
    llvm.cond_br %148, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %149 = llvm.mlir.constant(0 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%149 : i64)
  ^bb22(%152: i64):  // 2 preds: ^bb21, ^bb23
    %153 = llvm.icmp "slt" %152, %150 : i64
    llvm.cond_br %153, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %154 = llvm.extractvalue %133[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.add %137, %142  : i64
    %156 = llvm.add %155, %147  : i64
    %157 = llvm.add %156, %152  : i64
    %158 = llvm.getelementptr %154[%157] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %19, %158 : !llvm.ptr<i32>
    %159 = llvm.add %152, %151  : i64
    llvm.br ^bb22(%159 : i64)
  ^bb24:  // pred: ^bb22
    %160 = llvm.add %147, %146  : i64
    llvm.br ^bb20(%160 : i64)
  ^bb25:  // pred: ^bb20
    %161 = llvm.add %142, %141  : i64
    llvm.br ^bb18(%161 : i64)
  ^bb26:  // pred: ^bb18
    %162 = llvm.add %137, %136  : i64
    llvm.br ^bb16(%162 : i64)
  ^bb27:  // pred: ^bb16
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%163 : i64)
  ^bb28(%166: i64):  // 2 preds: ^bb27, ^bb41
    %167 = llvm.icmp "slt" %166, %164 : i64
    llvm.cond_br %167, ^bb29, ^bb42
  ^bb29:  // pred: ^bb28
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%168 : i64)
  ^bb30(%171: i64):  // 2 preds: ^bb29, ^bb40
    %172 = llvm.icmp "slt" %171, %169 : i64
    llvm.cond_br %172, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %173 = llvm.mlir.constant(0 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%173 : i64)
  ^bb32(%176: i64):  // 2 preds: ^bb31, ^bb39
    %177 = llvm.icmp "slt" %176, %174 : i64
    llvm.cond_br %177, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%178 : i64)
  ^bb34(%181: i64):  // 2 preds: ^bb33, ^bb38
    %182 = llvm.icmp "slt" %181, %179 : i64
    llvm.cond_br %182, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%183 : i64)
  ^bb36(%186: i64):  // 2 preds: ^bb35, ^bb37
    %187 = llvm.icmp "slt" %186, %184 : i64
    llvm.cond_br %187, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %188 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %189 = llvm.add %166, %171  : i64
    %190 = llvm.add %189, %176  : i64
    %191 = llvm.add %190, %181  : i64
    %192 = llvm.add %191, %186  : i64
    %193 = llvm.getelementptr %188[%192] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %194 = llvm.load %193 : !llvm.ptr<i32>
    %195 = llvm.extractvalue %133[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.add %166, %171  : i64
    %197 = llvm.add %196, %181  : i64
    %198 = llvm.add %197, %186  : i64
    %199 = llvm.getelementptr %195[%198] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %200 = llvm.load %199 : !llvm.ptr<i32>
    %201 = llvm.icmp "slt" %200, %194 : i32
    %202 = llvm.select %201, %200, %194 : i1, i32
    %203 = llvm.extractvalue %133[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.add %166, %171  : i64
    %205 = llvm.add %204, %181  : i64
    %206 = llvm.add %205, %186  : i64
    %207 = llvm.getelementptr %203[%206] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %202, %207 : !llvm.ptr<i32>
    %208 = llvm.add %186, %185  : i64
    llvm.br ^bb36(%208 : i64)
  ^bb38:  // pred: ^bb36
    %209 = llvm.add %181, %180  : i64
    llvm.br ^bb34(%209 : i64)
  ^bb39:  // pred: ^bb34
    %210 = llvm.add %176, %175  : i64
    llvm.br ^bb32(%210 : i64)
  ^bb40:  // pred: ^bb32
    %211 = llvm.add %171, %170  : i64
    llvm.br ^bb30(%211 : i64)
  ^bb41:  // pred: ^bb30
    %212 = llvm.add %166, %165  : i64
    llvm.br ^bb28(%212 : i64)
  ^bb42:  // pred: ^bb28
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.mlir.constant(4 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(4 : index) : i64
    %219 = llvm.mlir.constant(4 : index) : i64
    %220 = llvm.mlir.constant(4 : index) : i64
    %221 = llvm.mlir.null : !llvm.ptr<i32>
    %222 = llvm.getelementptr %221[%220] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %223 = llvm.ptrtoint %222 : !llvm.ptr<i32> to i64
    %224 = llvm.mlir.constant(16 : index) : i64
    %225 = llvm.add %223, %224  : i64
    %226 = llvm.call @malloc(%225) : (i64) -> !llvm.ptr<i8>
    %227 = llvm.bitcast %226 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %228 = llvm.ptrtoint %227 : !llvm.ptr<i32> to i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.sub %224, %229  : i64
    %231 = llvm.add %228, %230  : i64
    %232 = llvm.urem %231, %224  : i64
    %233 = llvm.sub %231, %232  : i64
    %234 = llvm.inttoptr %233 : i64 to !llvm.ptr<i32>
    %235 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %236 = llvm.insertvalue %227, %235[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.insertvalue %234, %236[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.insertvalue %238, %237[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.insertvalue %213, %239[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.insertvalue %214, %240[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.insertvalue %215, %241[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.insertvalue %216, %242[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.insertvalue %219, %243[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.insertvalue %218, %244[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.insertvalue %216, %245[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.insertvalue %217, %246[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%248 : i64)
  ^bb43(%251: i64):  // 2 preds: ^bb42, ^bb53
    %252 = llvm.icmp "slt" %251, %249 : i64
    llvm.cond_br %252, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%253 : i64)
  ^bb45(%256: i64):  // 2 preds: ^bb44, ^bb52
    %257 = llvm.icmp "slt" %256, %254 : i64
    llvm.cond_br %257, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%258 : i64)
  ^bb47(%261: i64):  // 2 preds: ^bb46, ^bb51
    %262 = llvm.icmp "slt" %261, %259 : i64
    llvm.cond_br %262, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %263 = llvm.mlir.constant(0 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%263 : i64)
  ^bb49(%266: i64):  // 2 preds: ^bb48, ^bb50
    %267 = llvm.icmp "slt" %266, %264 : i64
    llvm.cond_br %267, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %268 = llvm.extractvalue %133[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.add %251, %256  : i64
    %270 = llvm.add %269, %261  : i64
    %271 = llvm.add %270, %266  : i64
    %272 = llvm.getelementptr %268[%271] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %273 = llvm.load %272 : !llvm.ptr<i32>
    %274 = llvm.extractvalue %247[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.mlir.constant(4 : index) : i64
    %276 = llvm.mul %251, %275  : i64
    %277 = llvm.mlir.constant(4 : index) : i64
    %278 = llvm.mul %256, %277  : i64
    %279 = llvm.add %276, %278  : i64
    %280 = llvm.mlir.constant(4 : index) : i64
    %281 = llvm.mul %261, %280  : i64
    %282 = llvm.add %279, %281  : i64
    %283 = llvm.add %282, %266  : i64
    %284 = llvm.getelementptr %274[%283] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %273, %284 : !llvm.ptr<i32>
    %285 = llvm.add %266, %265  : i64
    llvm.br ^bb49(%285 : i64)
  ^bb51:  // pred: ^bb49
    %286 = llvm.add %261, %260  : i64
    llvm.br ^bb47(%286 : i64)
  ^bb52:  // pred: ^bb47
    %287 = llvm.add %256, %255  : i64
    llvm.br ^bb45(%287 : i64)
  ^bb53:  // pred: ^bb45
    %288 = llvm.add %251, %250  : i64
    llvm.br ^bb43(%288 : i64)
  ^bb54:  // pred: ^bb43
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%289 : i64)
  ^bb55(%292: i64):  // 2 preds: ^bb54, ^bb65
    %293 = llvm.icmp "slt" %292, %290 : i64
    llvm.cond_br %293, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%294 : i64)
  ^bb57(%297: i64):  // 2 preds: ^bb56, ^bb64
    %298 = llvm.icmp "slt" %297, %295 : i64
    llvm.cond_br %298, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %299 = llvm.mlir.constant(0 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%299 : i64)
  ^bb59(%302: i64):  // 2 preds: ^bb58, ^bb63
    %303 = llvm.icmp "slt" %302, %300 : i64
    llvm.cond_br %303, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%304 : i64)
  ^bb61(%307: i64):  // 2 preds: ^bb60, ^bb62
    %308 = llvm.icmp "slt" %307, %305 : i64
    llvm.cond_br %308, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.add %307, %309  : i64
    %311 = llvm.extractvalue %133[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.add %292, %297  : i64
    %313 = llvm.add %312, %302  : i64
    %314 = llvm.add %313, %307  : i64
    %315 = llvm.getelementptr %311[%314] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %316 = llvm.load %315 : !llvm.ptr<i32>
    %317 = llvm.extractvalue %247[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.mlir.constant(4 : index) : i64
    %319 = llvm.mul %292, %318  : i64
    %320 = llvm.mlir.constant(4 : index) : i64
    %321 = llvm.mul %297, %320  : i64
    %322 = llvm.add %319, %321  : i64
    %323 = llvm.mlir.constant(4 : index) : i64
    %324 = llvm.mul %302, %323  : i64
    %325 = llvm.add %322, %324  : i64
    %326 = llvm.add %325, %310  : i64
    %327 = llvm.getelementptr %317[%326] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %316, %327 : !llvm.ptr<i32>
    %328 = llvm.add %307, %306  : i64
    llvm.br ^bb61(%328 : i64)
  ^bb63:  // pred: ^bb61
    %329 = llvm.add %302, %301  : i64
    llvm.br ^bb59(%329 : i64)
  ^bb64:  // pred: ^bb59
    %330 = llvm.add %297, %296  : i64
    llvm.br ^bb57(%330 : i64)
  ^bb65:  // pred: ^bb57
    %331 = llvm.add %292, %291  : i64
    llvm.br ^bb55(%331 : i64)
  ^bb66:  // pred: ^bb55
    %332 = llvm.mlir.constant(0 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%332 : i64)
  ^bb67(%335: i64):  // 2 preds: ^bb66, ^bb77
    %336 = llvm.icmp "slt" %335, %333 : i64
    llvm.cond_br %336, ^bb68, ^bb78
  ^bb68:  // pred: ^bb67
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%337 : i64)
  ^bb69(%340: i64):  // 2 preds: ^bb68, ^bb76
    %341 = llvm.icmp "slt" %340, %338 : i64
    llvm.cond_br %341, ^bb70, ^bb77
  ^bb70:  // pred: ^bb69
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%342 : i64)
  ^bb71(%345: i64):  // 2 preds: ^bb70, ^bb75
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb72, ^bb76
  ^bb72:  // pred: ^bb71
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%347 : i64)
  ^bb73(%350: i64):  // 2 preds: ^bb72, ^bb74
    %351 = llvm.icmp "slt" %350, %348 : i64
    llvm.cond_br %351, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %352 = llvm.mlir.constant(2 : index) : i64
    %353 = llvm.add %350, %352  : i64
    %354 = llvm.extractvalue %133[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.add %335, %340  : i64
    %356 = llvm.add %355, %345  : i64
    %357 = llvm.add %356, %350  : i64
    %358 = llvm.getelementptr %354[%357] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %359 = llvm.load %358 : !llvm.ptr<i32>
    %360 = llvm.extractvalue %247[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.mlir.constant(4 : index) : i64
    %362 = llvm.mul %335, %361  : i64
    %363 = llvm.mlir.constant(4 : index) : i64
    %364 = llvm.mul %340, %363  : i64
    %365 = llvm.add %362, %364  : i64
    %366 = llvm.mlir.constant(4 : index) : i64
    %367 = llvm.mul %345, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.add %368, %353  : i64
    %370 = llvm.getelementptr %360[%369] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %359, %370 : !llvm.ptr<i32>
    %371 = llvm.add %350, %349  : i64
    llvm.br ^bb73(%371 : i64)
  ^bb75:  // pred: ^bb73
    %372 = llvm.add %345, %344  : i64
    llvm.br ^bb71(%372 : i64)
  ^bb76:  // pred: ^bb71
    %373 = llvm.add %340, %339  : i64
    llvm.br ^bb69(%373 : i64)
  ^bb77:  // pred: ^bb69
    %374 = llvm.add %335, %334  : i64
    llvm.br ^bb67(%374 : i64)
  ^bb78:  // pred: ^bb67
    %375 = llvm.mlir.constant(0 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%375 : i64)
  ^bb79(%378: i64):  // 2 preds: ^bb78, ^bb89
    %379 = llvm.icmp "slt" %378, %376 : i64
    llvm.cond_br %379, ^bb80, ^bb90
  ^bb80:  // pred: ^bb79
    %380 = llvm.mlir.constant(0 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%380 : i64)
  ^bb81(%383: i64):  // 2 preds: ^bb80, ^bb88
    %384 = llvm.icmp "slt" %383, %381 : i64
    llvm.cond_br %384, ^bb82, ^bb89
  ^bb82:  // pred: ^bb81
    %385 = llvm.mlir.constant(0 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb83(%385 : i64)
  ^bb83(%388: i64):  // 2 preds: ^bb82, ^bb87
    %389 = llvm.icmp "slt" %388, %386 : i64
    llvm.cond_br %389, ^bb84, ^bb88
  ^bb84:  // pred: ^bb83
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%390 : i64)
  ^bb85(%393: i64):  // 2 preds: ^bb84, ^bb86
    %394 = llvm.icmp "slt" %393, %391 : i64
    llvm.cond_br %394, ^bb86, ^bb87
  ^bb86:  // pred: ^bb85
    %395 = llvm.mlir.constant(3 : index) : i64
    %396 = llvm.add %393, %395  : i64
    %397 = llvm.extractvalue %133[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.add %378, %383  : i64
    %399 = llvm.add %398, %388  : i64
    %400 = llvm.add %399, %393  : i64
    %401 = llvm.getelementptr %397[%400] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %402 = llvm.load %401 : !llvm.ptr<i32>
    %403 = llvm.extractvalue %247[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.mlir.constant(4 : index) : i64
    %405 = llvm.mul %378, %404  : i64
    %406 = llvm.mlir.constant(4 : index) : i64
    %407 = llvm.mul %383, %406  : i64
    %408 = llvm.add %405, %407  : i64
    %409 = llvm.mlir.constant(4 : index) : i64
    %410 = llvm.mul %388, %409  : i64
    %411 = llvm.add %408, %410  : i64
    %412 = llvm.add %411, %396  : i64
    %413 = llvm.getelementptr %403[%412] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %402, %413 : !llvm.ptr<i32>
    %414 = llvm.add %393, %392  : i64
    llvm.br ^bb85(%414 : i64)
  ^bb87:  // pred: ^bb85
    %415 = llvm.add %388, %387  : i64
    llvm.br ^bb83(%415 : i64)
  ^bb88:  // pred: ^bb83
    %416 = llvm.add %383, %382  : i64
    llvm.br ^bb81(%416 : i64)
  ^bb89:  // pred: ^bb81
    %417 = llvm.add %378, %377  : i64
    llvm.br ^bb79(%417 : i64)
  ^bb90:  // pred: ^bb79
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.mlir.null : !llvm.ptr<i32>
    %423 = llvm.getelementptr %422[%418] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %424 = llvm.ptrtoint %423 : !llvm.ptr<i32> to i64
    %425 = llvm.mlir.constant(16 : index) : i64
    %426 = llvm.add %424, %425  : i64
    %427 = llvm.call @malloc(%426) : (i64) -> !llvm.ptr<i8>
    %428 = llvm.bitcast %427 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %429 = llvm.ptrtoint %428 : !llvm.ptr<i32> to i64
    %430 = llvm.mlir.constant(1 : index) : i64
    %431 = llvm.sub %425, %430  : i64
    %432 = llvm.add %429, %431  : i64
    %433 = llvm.urem %432, %425  : i64
    %434 = llvm.sub %432, %433  : i64
    %435 = llvm.inttoptr %434 : i64 to !llvm.ptr<i32>
    %436 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %437 = llvm.insertvalue %428, %436[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %438 = llvm.insertvalue %435, %437[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %439 = llvm.mlir.constant(0 : index) : i64
    %440 = llvm.insertvalue %439, %438[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %441 = llvm.insertvalue %418, %440[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %442 = llvm.insertvalue %419, %441[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %443 = llvm.insertvalue %420, %442[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %444 = llvm.insertvalue %419, %443[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %445 = llvm.insertvalue %420, %444[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %446 = llvm.insertvalue %421, %445[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %447 = llvm.mlir.constant(0 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%447 : i64)
  ^bb91(%450: i64):  // 2 preds: ^bb90, ^bb98
    %451 = llvm.icmp "slt" %450, %448 : i64
    llvm.cond_br %451, ^bb92, ^bb99
  ^bb92:  // pred: ^bb91
    %452 = llvm.mlir.constant(0 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb93(%452 : i64)
  ^bb93(%455: i64):  // 2 preds: ^bb92, ^bb97
    %456 = llvm.icmp "slt" %455, %453 : i64
    llvm.cond_br %456, ^bb94, ^bb98
  ^bb94:  // pred: ^bb93
    %457 = llvm.mlir.constant(0 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb95(%457 : i64)
  ^bb95(%460: i64):  // 2 preds: ^bb94, ^bb96
    %461 = llvm.icmp "slt" %460, %458 : i64
    llvm.cond_br %461, ^bb96, ^bb97
  ^bb96:  // pred: ^bb95
    %462 = llvm.extractvalue %446[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %463 = llvm.add %450, %455  : i64
    %464 = llvm.add %463, %460  : i64
    %465 = llvm.getelementptr %462[%464] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %18, %465 : !llvm.ptr<i32>
    %466 = llvm.add %460, %459  : i64
    llvm.br ^bb95(%466 : i64)
  ^bb97:  // pred: ^bb95
    %467 = llvm.add %455, %454  : i64
    llvm.br ^bb93(%467 : i64)
  ^bb98:  // pred: ^bb93
    %468 = llvm.add %450, %449  : i64
    llvm.br ^bb91(%468 : i64)
  ^bb99:  // pred: ^bb91
    %469 = llvm.mlir.constant(0 : index) : i64
    %470 = llvm.mlir.constant(1 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb100(%469 : i64)
  ^bb100(%472: i64):  // 2 preds: ^bb99, ^bb110
    %473 = llvm.icmp "slt" %472, %470 : i64
    llvm.cond_br %473, ^bb101, ^bb111
  ^bb101:  // pred: ^bb100
    %474 = llvm.mlir.constant(0 : index) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    %476 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb102(%474 : i64)
  ^bb102(%477: i64):  // 2 preds: ^bb101, ^bb109
    %478 = llvm.icmp "slt" %477, %475 : i64
    llvm.cond_br %478, ^bb103, ^bb110
  ^bb103:  // pred: ^bb102
    %479 = llvm.mlir.constant(0 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    %481 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb104(%479 : i64)
  ^bb104(%482: i64):  // 2 preds: ^bb103, ^bb108
    %483 = llvm.icmp "slt" %482, %480 : i64
    llvm.cond_br %483, ^bb105, ^bb109
  ^bb105:  // pred: ^bb104
    %484 = llvm.mlir.constant(0 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    %486 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb106(%484 : i64)
  ^bb106(%487: i64):  // 2 preds: ^bb105, ^bb107
    %488 = llvm.icmp "slt" %487, %485 : i64
    llvm.cond_br %488, ^bb107, ^bb108
  ^bb107:  // pred: ^bb106
    %489 = llvm.extractvalue %133[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.add %472, %477  : i64
    %491 = llvm.add %490, %482  : i64
    %492 = llvm.add %491, %487  : i64
    %493 = llvm.getelementptr %489[%492] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %494 = llvm.load %493 : !llvm.ptr<i32>
    %495 = llvm.extractvalue %446[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %496 = llvm.add %472, %477  : i64
    %497 = llvm.add %496, %487  : i64
    %498 = llvm.getelementptr %495[%497] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %499 = llvm.load %498 : !llvm.ptr<i32>
    %500 = llvm.icmp "sgt" %499, %494 : i32
    %501 = llvm.select %500, %499, %494 : i1, i32
    %502 = llvm.extractvalue %446[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %503 = llvm.add %472, %477  : i64
    %504 = llvm.add %503, %487  : i64
    %505 = llvm.getelementptr %502[%504] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %501, %505 : !llvm.ptr<i32>
    %506 = llvm.add %487, %486  : i64
    llvm.br ^bb106(%506 : i64)
  ^bb108:  // pred: ^bb106
    %507 = llvm.add %482, %481  : i64
    llvm.br ^bb104(%507 : i64)
  ^bb109:  // pred: ^bb104
    %508 = llvm.add %477, %476  : i64
    llvm.br ^bb102(%508 : i64)
  ^bb110:  // pred: ^bb102
    %509 = llvm.add %472, %471  : i64
    llvm.br ^bb100(%509 : i64)
  ^bb111:  // pred: ^bb100
    %510 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %511 = llvm.extractvalue %446[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %512 = llvm.extractvalue %446[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %513 = llvm.insertvalue %511, %510[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %514 = llvm.insertvalue %512, %513[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %515 = llvm.mlir.constant(0 : index) : i64
    %516 = llvm.insertvalue %515, %514[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %517 = llvm.mlir.constant(1 : index) : i64
    %518 = llvm.insertvalue %517, %516[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %519 = llvm.mlir.constant(1 : index) : i64
    %520 = llvm.insertvalue %519, %518[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %521 = llvm.mlir.constant(1 : index) : i64
    %522 = llvm.insertvalue %521, %520[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %523 = llvm.mlir.constant(1 : index) : i64
    %524 = llvm.insertvalue %523, %522[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %525 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>)>
    %526 = llvm.insertvalue %247, %525[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %527 = llvm.insertvalue %524, %526[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>)> 
    llvm.return %527 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v2_0", "v0_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %5 = llvm.extractvalue %4[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %4[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %4[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %4[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %4[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %4[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %4[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %4[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.extractvalue %4[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %15 = llvm.extractvalue %4[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %16 = llvm.extractvalue %4[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %17 = llvm.extractvalue %4[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %18 = llvm.call @main_graph(%1, %2, %3, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>)>
    llvm.store %18, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %13, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %16 = llvm.mlir.constant(1 : i64) : i64
    %17 = llvm.getelementptr %0[%16] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<i8>>
    %19 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %21 = llvm.call @omTensorGetDataPtr(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %22 = llvm.bitcast %21 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %23 = llvm.insertvalue %22, %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %24 = llvm.insertvalue %22, %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %25 = llvm.mlir.constant(0 : i64) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.call @omTensorGetShape(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %28 = llvm.call @omTensorGetStrides(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %29 = llvm.mlir.constant(0 : i64) : i64
    %30 = llvm.getelementptr %27[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %31 = llvm.load %30 : !llvm.ptr<i64>
    %32 = llvm.insertvalue %31, %26[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %33 = llvm.getelementptr %28[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %34 = llvm.load %33 : !llvm.ptr<i64>
    %35 = llvm.insertvalue %34, %32[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %36 = llvm.mlir.constant(1 : i64) : i64
    %37 = llvm.getelementptr %27[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %38 = llvm.load %37 : !llvm.ptr<i64>
    %39 = llvm.insertvalue %38, %35[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %40 = llvm.getelementptr %28[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %41 = llvm.load %40 : !llvm.ptr<i64>
    %42 = llvm.insertvalue %41, %39[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %43 = llvm.mlir.constant(2 : i64) : i64
    %44 = llvm.getelementptr %27[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %42[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %47 = llvm.getelementptr %28[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %50 = llvm.mlir.constant(3 : i64) : i64
    %51 = llvm.getelementptr %27[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %54 = llvm.getelementptr %28[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %57 = llvm.mlir.constant(4 : i64) : i64
    %58 = llvm.getelementptr %27[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %61 = llvm.getelementptr %28[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %63, %19 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %19) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %64 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>)>>
    %65 = llvm.extractvalue %64[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %66 = llvm.extractvalue %64[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %67 = llvm.mlir.constant(2 : i64) : i64
    %68 = llvm.mlir.constant(16 : i64) : i64
    %69 = llvm.call @malloc(%68) : (i64) -> !llvm.ptr<i8>
    %70 = llvm.bitcast %69 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %71 = llvm.mlir.constant(4 : i64) : i64
    %72 = llvm.call @omTensorCreateUntyped(%71) : (i64) -> !llvm.ptr<i8>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %65[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.bitcast %74 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %76 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.bitcast %76 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%72, %73, %75, %77) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %78 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%72, %78) : (!llvm.ptr<i8>, i64) -> ()
    %79 = llvm.call @omTensorGetShape(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %80 = llvm.call @omTensorGetStrides(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.extractvalue %65[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %79[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.extractvalue %65[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %80[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %65[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %79[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.extractvalue %65[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %80[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.mlir.constant(2 : i64) : i64
    %92 = llvm.extractvalue %65[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.getelementptr %79[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.extractvalue %65[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %80[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.mlir.constant(3 : i64) : i64
    %97 = llvm.extractvalue %65[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %79[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.extractvalue %65[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %80[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.mlir.constant(0 : i64) : i64
    %102 = llvm.getelementptr %70[%101] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %72, %102 : !llvm.ptr<ptr<i8>>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.call @omTensorCreateUntyped(%103) : (i64) -> !llvm.ptr<i8>
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.extractvalue %66[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.bitcast %106 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %108 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.bitcast %108 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%104, %105, %107, %109) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %110 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%104, %110) : (!llvm.ptr<i8>, i64) -> ()
    %111 = llvm.call @omTensorGetShape(%104) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %112 = llvm.call @omTensorGetStrides(%104) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %113 = llvm.mlir.constant(0 : i64) : i64
    %114 = llvm.extractvalue %66[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.getelementptr %111[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %66[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %117 = llvm.getelementptr %112[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %66[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %120 = llvm.getelementptr %111[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.extractvalue %66[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %122 = llvm.getelementptr %112[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.mlir.constant(1 : i64) : i64
    %124 = llvm.getelementptr %70[%123] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %104, %124 : !llvm.ptr<ptr<i8>>
    %125 = llvm.call @omTensorListCreate(%70, %67, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %125 : !llvm.ptr<i8>
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

