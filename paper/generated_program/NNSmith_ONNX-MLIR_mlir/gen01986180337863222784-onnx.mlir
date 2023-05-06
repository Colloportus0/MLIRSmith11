module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
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
    %15 = llvm.mlir.constant(-2147483648 : i32) : i32
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.constant(2 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.mlir.constant(2 : index) : i64
    %24 = llvm.mlir.constant(2 : index) : i64
    %25 = llvm.mlir.null : !llvm.ptr<i32>
    %26 = llvm.getelementptr %25[%24] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %27 = llvm.ptrtoint %26 : !llvm.ptr<i32> to i64
    %28 = llvm.mlir.constant(16 : index) : i64
    %29 = llvm.add %27, %28  : i64
    %30 = llvm.call @malloc(%29) : (i64) -> !llvm.ptr<i8>
    %31 = llvm.bitcast %30 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %32 = llvm.ptrtoint %31 : !llvm.ptr<i32> to i64
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.sub %28, %33  : i64
    %35 = llvm.add %32, %34  : i64
    %36 = llvm.urem %35, %28  : i64
    %37 = llvm.sub %35, %36  : i64
    %38 = llvm.inttoptr %37 : i64 to !llvm.ptr<i32>
    %39 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %40 = llvm.insertvalue %31, %39[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.insertvalue %38, %40[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %42 = llvm.mlir.constant(0 : index) : i64
    %43 = llvm.insertvalue %42, %41[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.insertvalue %17, %43[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %45 = llvm.insertvalue %18, %44[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %46 = llvm.insertvalue %19, %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %47 = llvm.insertvalue %20, %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.insertvalue %21, %47[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %49 = llvm.insertvalue %23, %48[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %50 = llvm.insertvalue %19, %49[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %51 = llvm.insertvalue %20, %50[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %52 = llvm.insertvalue %21, %51[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %53 = llvm.insertvalue %22, %52[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%54 : i64)
  ^bb1(%57: i64):  // 2 preds: ^bb0, ^bb14
    %58 = llvm.icmp "slt" %57, %55 : i64
    llvm.cond_br %58, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%59 : i64)
  ^bb3(%62: i64):  // 2 preds: ^bb2, ^bb13
    %63 = llvm.icmp "slt" %62, %60 : i64
    llvm.cond_br %63, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.mlir.constant(2 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%64 : i64)
  ^bb5(%67: i64):  // 2 preds: ^bb4, ^bb12
    %68 = llvm.icmp "slt" %67, %65 : i64
    llvm.cond_br %68, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%69 : i64)
  ^bb7(%72: i64):  // 2 preds: ^bb6, ^bb11
    %73 = llvm.icmp "slt" %72, %70 : i64
    llvm.cond_br %73, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%74 : i64)
  ^bb9(%77: i64):  // 2 preds: ^bb8, ^bb10
    %78 = llvm.icmp "slt" %77, %75 : i64
    llvm.cond_br %78, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %79 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %80 = llvm.mlir.constant(2 : index) : i64
    %81 = llvm.mul %57, %80  : i64
    %82 = llvm.mlir.constant(2 : index) : i64
    %83 = llvm.mul %62, %82  : i64
    %84 = llvm.add %81, %83  : i64
    %85 = llvm.add %84, %67  : i64
    %86 = llvm.add %85, %72  : i64
    %87 = llvm.add %86, %77  : i64
    %88 = llvm.getelementptr %79[%87] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %89 = llvm.load %88 : !llvm.ptr<i32>
    %90 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %91 = llvm.mlir.constant(2 : index) : i64
    %92 = llvm.mul %57, %91  : i64
    %93 = llvm.mlir.constant(2 : index) : i64
    %94 = llvm.mul %62, %93  : i64
    %95 = llvm.add %92, %94  : i64
    %96 = llvm.add %95, %67  : i64
    %97 = llvm.add %96, %72  : i64
    %98 = llvm.add %97, %77  : i64
    %99 = llvm.getelementptr %90[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %89, %99 : !llvm.ptr<i32>
    %100 = llvm.add %77, %76  : i64
    llvm.br ^bb9(%100 : i64)
  ^bb11:  // pred: ^bb9
    %101 = llvm.add %72, %71  : i64
    llvm.br ^bb7(%101 : i64)
  ^bb12:  // pred: ^bb7
    %102 = llvm.add %67, %66  : i64
    llvm.br ^bb5(%102 : i64)
  ^bb13:  // pred: ^bb5
    %103 = llvm.add %62, %61  : i64
    llvm.br ^bb3(%103 : i64)
  ^bb14:  // pred: ^bb3
    %104 = llvm.add %57, %56  : i64
    llvm.br ^bb1(%104 : i64)
  ^bb15:  // pred: ^bb1
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(2 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.mlir.constant(2 : index) : i64
    %111 = llvm.mlir.constant(2 : index) : i64
    %112 = llvm.mlir.null : !llvm.ptr<i32>
    %113 = llvm.getelementptr %112[%111] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %114 = llvm.ptrtoint %113 : !llvm.ptr<i32> to i64
    %115 = llvm.mlir.constant(16 : index) : i64
    %116 = llvm.add %114, %115  : i64
    %117 = llvm.call @malloc(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.bitcast %117 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %119 = llvm.ptrtoint %118 : !llvm.ptr<i32> to i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.sub %115, %120  : i64
    %122 = llvm.add %119, %121  : i64
    %123 = llvm.urem %122, %115  : i64
    %124 = llvm.sub %122, %123  : i64
    %125 = llvm.inttoptr %124 : i64 to !llvm.ptr<i32>
    %126 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %127 = llvm.insertvalue %118, %126[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.insertvalue %125, %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.insertvalue %129, %128[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.insertvalue %105, %130[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.insertvalue %106, %131[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.insertvalue %107, %132[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %108, %133[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %110, %134[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.insertvalue %107, %135[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.insertvalue %108, %136[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.insertvalue %109, %137[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.mlir.constant(0 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%139 : i64)
  ^bb16(%142: i64):  // 2 preds: ^bb15, ^bb26
    %143 = llvm.icmp "slt" %142, %140 : i64
    llvm.cond_br %143, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %144 = llvm.mlir.constant(0 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%144 : i64)
  ^bb18(%147: i64):  // 2 preds: ^bb17, ^bb25
    %148 = llvm.icmp "slt" %147, %145 : i64
    llvm.cond_br %148, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %149 = llvm.mlir.constant(0 : index) : i64
    %150 = llvm.mlir.constant(2 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%149 : i64)
  ^bb20(%152: i64):  // 2 preds: ^bb19, ^bb24
    %153 = llvm.icmp "slt" %152, %150 : i64
    llvm.cond_br %153, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%154 : i64)
  ^bb22(%157: i64):  // 2 preds: ^bb21, ^bb23
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %159 = llvm.extractvalue %138[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.mlir.constant(2 : index) : i64
    %161 = llvm.mul %142, %160  : i64
    %162 = llvm.mlir.constant(2 : index) : i64
    %163 = llvm.mul %147, %162  : i64
    %164 = llvm.add %161, %163  : i64
    %165 = llvm.add %164, %152  : i64
    %166 = llvm.add %165, %157  : i64
    %167 = llvm.getelementptr %159[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %15, %167 : !llvm.ptr<i32>
    %168 = llvm.add %157, %156  : i64
    llvm.br ^bb22(%168 : i64)
  ^bb24:  // pred: ^bb22
    %169 = llvm.add %152, %151  : i64
    llvm.br ^bb20(%169 : i64)
  ^bb25:  // pred: ^bb20
    %170 = llvm.add %147, %146  : i64
    llvm.br ^bb18(%170 : i64)
  ^bb26:  // pred: ^bb18
    %171 = llvm.add %142, %141  : i64
    llvm.br ^bb16(%171 : i64)
  ^bb27:  // pred: ^bb16
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%172 : i64)
  ^bb28(%175: i64):  // 2 preds: ^bb27, ^bb41
    %176 = llvm.icmp "slt" %175, %173 : i64
    llvm.cond_br %176, ^bb29, ^bb42
  ^bb29:  // pred: ^bb28
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%177 : i64)
  ^bb30(%180: i64):  // 2 preds: ^bb29, ^bb40
    %181 = llvm.icmp "slt" %180, %178 : i64
    llvm.cond_br %181, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%182 : i64)
  ^bb32(%185: i64):  // 2 preds: ^bb31, ^bb39
    %186 = llvm.icmp "slt" %185, %183 : i64
    llvm.cond_br %186, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%187 : i64)
  ^bb34(%190: i64):  // 2 preds: ^bb33, ^bb38
    %191 = llvm.icmp "slt" %190, %188 : i64
    llvm.cond_br %191, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%192 : i64)
  ^bb36(%195: i64):  // 2 preds: ^bb35, ^bb37
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %197 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %198 = llvm.mlir.constant(2 : index) : i64
    %199 = llvm.mul %175, %198  : i64
    %200 = llvm.mlir.constant(2 : index) : i64
    %201 = llvm.mul %180, %200  : i64
    %202 = llvm.add %199, %201  : i64
    %203 = llvm.add %202, %185  : i64
    %204 = llvm.add %203, %190  : i64
    %205 = llvm.add %204, %195  : i64
    %206 = llvm.getelementptr %197[%205] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %207 = llvm.load %206 : !llvm.ptr<i32>
    %208 = llvm.extractvalue %138[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.mlir.constant(2 : index) : i64
    %210 = llvm.mul %175, %209  : i64
    %211 = llvm.mlir.constant(2 : index) : i64
    %212 = llvm.mul %180, %211  : i64
    %213 = llvm.add %210, %212  : i64
    %214 = llvm.add %213, %185  : i64
    %215 = llvm.add %214, %195  : i64
    %216 = llvm.getelementptr %208[%215] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %217 = llvm.load %216 : !llvm.ptr<i32>
    %218 = llvm.icmp "sgt" %217, %207 : i32
    %219 = llvm.select %218, %217, %207 : i1, i32
    %220 = llvm.extractvalue %138[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.mlir.constant(2 : index) : i64
    %222 = llvm.mul %175, %221  : i64
    %223 = llvm.mlir.constant(2 : index) : i64
    %224 = llvm.mul %180, %223  : i64
    %225 = llvm.add %222, %224  : i64
    %226 = llvm.add %225, %185  : i64
    %227 = llvm.add %226, %195  : i64
    %228 = llvm.getelementptr %220[%227] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %219, %228 : !llvm.ptr<i32>
    %229 = llvm.add %195, %194  : i64
    llvm.br ^bb36(%229 : i64)
  ^bb38:  // pred: ^bb36
    %230 = llvm.add %190, %189  : i64
    llvm.br ^bb34(%230 : i64)
  ^bb39:  // pred: ^bb34
    %231 = llvm.add %185, %184  : i64
    llvm.br ^bb32(%231 : i64)
  ^bb40:  // pred: ^bb32
    %232 = llvm.add %180, %179  : i64
    llvm.br ^bb30(%232 : i64)
  ^bb41:  // pred: ^bb30
    %233 = llvm.add %175, %174  : i64
    llvm.br ^bb28(%233 : i64)
  ^bb42:  // pred: ^bb28
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.mlir.constant(2 : index) : i64
    %240 = llvm.mlir.constant(2 : index) : i64
    %241 = llvm.mlir.null : !llvm.ptr<i32>
    %242 = llvm.getelementptr %241[%240] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %243 = llvm.ptrtoint %242 : !llvm.ptr<i32> to i64
    %244 = llvm.mlir.constant(16 : index) : i64
    %245 = llvm.add %243, %244  : i64
    %246 = llvm.call @malloc(%245) : (i64) -> !llvm.ptr<i8>
    %247 = llvm.bitcast %246 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %248 = llvm.ptrtoint %247 : !llvm.ptr<i32> to i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.sub %244, %249  : i64
    %251 = llvm.add %248, %250  : i64
    %252 = llvm.urem %251, %244  : i64
    %253 = llvm.sub %251, %252  : i64
    %254 = llvm.inttoptr %253 : i64 to !llvm.ptr<i32>
    %255 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %256 = llvm.insertvalue %247, %255[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.insertvalue %254, %256[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.insertvalue %258, %257[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.insertvalue %234, %259[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.insertvalue %235, %260[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.insertvalue %236, %261[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.insertvalue %237, %262[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.insertvalue %239, %263[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.insertvalue %236, %264[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.insertvalue %237, %265[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.insertvalue %238, %266[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%268 : i64)
  ^bb43(%271: i64):  // 2 preds: ^bb42, ^bb53
    %272 = llvm.icmp "slt" %271, %269 : i64
    llvm.cond_br %272, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%273 : i64)
  ^bb45(%276: i64):  // 2 preds: ^bb44, ^bb52
    %277 = llvm.icmp "slt" %276, %274 : i64
    llvm.cond_br %277, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(2 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%278 : i64)
  ^bb47(%281: i64):  // 2 preds: ^bb46, ^bb51
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%283 : i64)
  ^bb49(%286: i64):  // 2 preds: ^bb48, ^bb50
    %287 = llvm.icmp "slt" %286, %284 : i64
    llvm.cond_br %287, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %288 = llvm.extractvalue %138[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.mlir.constant(2 : index) : i64
    %290 = llvm.mul %271, %289  : i64
    %291 = llvm.mlir.constant(2 : index) : i64
    %292 = llvm.mul %276, %291  : i64
    %293 = llvm.add %290, %292  : i64
    %294 = llvm.add %293, %281  : i64
    %295 = llvm.add %294, %286  : i64
    %296 = llvm.getelementptr %288[%295] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %297 = llvm.load %296 : !llvm.ptr<i32>
    %298 = llvm.mlir.constant(false) : i1
    %299 = "llvm.intr.abs"(%297, %298) : (i32, i1) -> i32
    %300 = llvm.extractvalue %267[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.mlir.constant(2 : index) : i64
    %302 = llvm.mul %271, %301  : i64
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mul %276, %303  : i64
    %305 = llvm.add %302, %304  : i64
    %306 = llvm.add %305, %281  : i64
    %307 = llvm.add %306, %286  : i64
    %308 = llvm.getelementptr %300[%307] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %299, %308 : !llvm.ptr<i32>
    %309 = llvm.add %286, %285  : i64
    llvm.br ^bb49(%309 : i64)
  ^bb51:  // pred: ^bb49
    %310 = llvm.add %281, %280  : i64
    llvm.br ^bb47(%310 : i64)
  ^bb52:  // pred: ^bb47
    %311 = llvm.add %276, %275  : i64
    llvm.br ^bb45(%311 : i64)
  ^bb53:  // pred: ^bb45
    %312 = llvm.add %271, %270  : i64
    llvm.br ^bb43(%312 : i64)
  ^bb54:  // pred: ^bb43
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mlir.constant(2 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.mlir.constant(4 : index) : i64
    %320 = llvm.mlir.constant(4 : index) : i64
    %321 = llvm.mlir.constant(4 : index) : i64
    %322 = llvm.mlir.null : !llvm.ptr<i32>
    %323 = llvm.getelementptr %322[%321] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %324 = llvm.ptrtoint %323 : !llvm.ptr<i32> to i64
    %325 = llvm.mlir.constant(16 : index) : i64
    %326 = llvm.add %324, %325  : i64
    %327 = llvm.call @malloc(%326) : (i64) -> !llvm.ptr<i8>
    %328 = llvm.bitcast %327 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %329 = llvm.ptrtoint %328 : !llvm.ptr<i32> to i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.sub %325, %330  : i64
    %332 = llvm.add %329, %331  : i64
    %333 = llvm.urem %332, %325  : i64
    %334 = llvm.sub %332, %333  : i64
    %335 = llvm.inttoptr %334 : i64 to !llvm.ptr<i32>
    %336 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %337 = llvm.insertvalue %328, %336[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %338 = llvm.insertvalue %335, %337[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %339 = llvm.mlir.constant(0 : index) : i64
    %340 = llvm.insertvalue %339, %338[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %341 = llvm.insertvalue %313, %340[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %342 = llvm.insertvalue %314, %341[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %343 = llvm.insertvalue %315, %342[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %344 = llvm.insertvalue %316, %343[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %345 = llvm.insertvalue %317, %344[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %346 = llvm.insertvalue %320, %345[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %347 = llvm.insertvalue %319, %346[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %348 = llvm.insertvalue %316, %347[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %349 = llvm.insertvalue %317, %348[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %350 = llvm.insertvalue %318, %349[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %351 = llvm.mlir.constant(0 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%351 : i64)
  ^bb55(%354: i64):  // 2 preds: ^bb54, ^bb68
    %355 = llvm.icmp "slt" %354, %352 : i64
    llvm.cond_br %355, ^bb56, ^bb69
  ^bb56:  // pred: ^bb55
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%356 : i64)
  ^bb57(%359: i64):  // 2 preds: ^bb56, ^bb67
    %360 = llvm.icmp "slt" %359, %357 : i64
    llvm.cond_br %360, ^bb58, ^bb68
  ^bb58:  // pred: ^bb57
    %361 = llvm.mlir.constant(0 : index) : i64
    %362 = llvm.mlir.constant(2 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%361 : i64)
  ^bb59(%364: i64):  // 2 preds: ^bb58, ^bb66
    %365 = llvm.icmp "slt" %364, %362 : i64
    llvm.cond_br %365, ^bb60, ^bb67
  ^bb60:  // pred: ^bb59
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = llvm.mlir.constant(2 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%366 : i64)
  ^bb61(%369: i64):  // 2 preds: ^bb60, ^bb65
    %370 = llvm.icmp "slt" %369, %367 : i64
    llvm.cond_br %370, ^bb62, ^bb66
  ^bb62:  // pred: ^bb61
    %371 = llvm.mlir.constant(0 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%371 : i64)
  ^bb63(%374: i64):  // 2 preds: ^bb62, ^bb64
    %375 = llvm.icmp "slt" %374, %372 : i64
    llvm.cond_br %375, ^bb64, ^bb65
  ^bb64:  // pred: ^bb63
    %376 = llvm.extractvalue %267[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.mlir.constant(2 : index) : i64
    %378 = llvm.mul %359, %377  : i64
    %379 = llvm.mlir.constant(2 : index) : i64
    %380 = llvm.mul %16, %379  : i64
    %381 = llvm.add %378, %380  : i64
    %382 = llvm.add %381, %369  : i64
    %383 = llvm.add %382, %374  : i64
    %384 = llvm.getelementptr %376[%383] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %385 = llvm.load %384 : !llvm.ptr<i32>
    %386 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %387 = llvm.mlir.constant(2 : index) : i64
    %388 = llvm.mul %354, %387  : i64
    %389 = llvm.mlir.constant(2 : index) : i64
    %390 = llvm.mul %359, %389  : i64
    %391 = llvm.add %388, %390  : i64
    %392 = llvm.add %391, %364  : i64
    %393 = llvm.add %392, %16  : i64
    %394 = llvm.add %393, %374  : i64
    %395 = llvm.getelementptr %386[%394] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %396 = llvm.load %395 : !llvm.ptr<i32>
    %397 = llvm.add %385, %396  : i32
    %398 = llvm.extractvalue %350[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %399 = llvm.mlir.constant(4 : index) : i64
    %400 = llvm.mul %354, %399  : i64
    %401 = llvm.mlir.constant(4 : index) : i64
    %402 = llvm.mul %359, %401  : i64
    %403 = llvm.add %400, %402  : i64
    %404 = llvm.mlir.constant(2 : index) : i64
    %405 = llvm.mul %364, %404  : i64
    %406 = llvm.add %403, %405  : i64
    %407 = llvm.add %406, %369  : i64
    %408 = llvm.add %407, %374  : i64
    %409 = llvm.getelementptr %398[%408] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %397, %409 : !llvm.ptr<i32>
    %410 = llvm.add %374, %373  : i64
    llvm.br ^bb63(%410 : i64)
  ^bb65:  // pred: ^bb63
    %411 = llvm.add %369, %368  : i64
    llvm.br ^bb61(%411 : i64)
  ^bb66:  // pred: ^bb61
    %412 = llvm.add %364, %363  : i64
    llvm.br ^bb59(%412 : i64)
  ^bb67:  // pred: ^bb59
    %413 = llvm.add %359, %358  : i64
    llvm.br ^bb57(%413 : i64)
  ^bb68:  // pred: ^bb57
    %414 = llvm.add %354, %353  : i64
    llvm.br ^bb55(%414 : i64)
  ^bb69:  // pred: ^bb55
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.mlir.constant(2 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.mlir.constant(2 : index) : i64
    %421 = llvm.mlir.constant(2 : index) : i64
    %422 = llvm.mlir.null : !llvm.ptr<i1>
    %423 = llvm.getelementptr %422[%421] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %424 = llvm.ptrtoint %423 : !llvm.ptr<i1> to i64
    %425 = llvm.mlir.constant(16 : index) : i64
    %426 = llvm.add %424, %425  : i64
    %427 = llvm.call @malloc(%426) : (i64) -> !llvm.ptr<i8>
    %428 = llvm.bitcast %427 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %429 = llvm.ptrtoint %428 : !llvm.ptr<i1> to i64
    %430 = llvm.mlir.constant(1 : index) : i64
    %431 = llvm.sub %425, %430  : i64
    %432 = llvm.add %429, %431  : i64
    %433 = llvm.urem %432, %425  : i64
    %434 = llvm.sub %432, %433  : i64
    %435 = llvm.inttoptr %434 : i64 to !llvm.ptr<i1>
    %436 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %437 = llvm.insertvalue %428, %436[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %435, %437[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.mlir.constant(0 : index) : i64
    %440 = llvm.insertvalue %439, %438[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.insertvalue %415, %440[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.insertvalue %416, %441[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %417, %442[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.insertvalue %418, %443[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %420, %444[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.insertvalue %417, %445[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.insertvalue %418, %446[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.insertvalue %419, %447[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.mlir.constant(0 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%449 : i64)
  ^bb70(%452: i64):  // 2 preds: ^bb69, ^bb80
    %453 = llvm.icmp "slt" %452, %450 : i64
    llvm.cond_br %453, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %454 = llvm.mlir.constant(0 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%454 : i64)
  ^bb72(%457: i64):  // 2 preds: ^bb71, ^bb79
    %458 = llvm.icmp "slt" %457, %455 : i64
    llvm.cond_br %458, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %459 = llvm.mlir.constant(0 : index) : i64
    %460 = llvm.mlir.constant(2 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%459 : i64)
  ^bb74(%462: i64):  // 2 preds: ^bb73, ^bb78
    %463 = llvm.icmp "slt" %462, %460 : i64
    llvm.cond_br %463, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %464 = llvm.mlir.constant(0 : index) : i64
    %465 = llvm.mlir.constant(1 : index) : i64
    %466 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%464 : i64)
  ^bb76(%467: i64):  // 2 preds: ^bb75, ^bb77
    %468 = llvm.icmp "slt" %467, %465 : i64
    llvm.cond_br %468, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %469 = llvm.extractvalue %267[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.mlir.constant(2 : index) : i64
    %471 = llvm.mul %452, %470  : i64
    %472 = llvm.mlir.constant(2 : index) : i64
    %473 = llvm.mul %457, %472  : i64
    %474 = llvm.add %471, %473  : i64
    %475 = llvm.add %474, %462  : i64
    %476 = llvm.add %475, %467  : i64
    %477 = llvm.getelementptr %469[%476] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %478 = llvm.load %477 : !llvm.ptr<i32>
    %479 = llvm.icmp "ne" %478, %14 : i32
    %480 = llvm.extractvalue %448[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.mlir.constant(2 : index) : i64
    %482 = llvm.mul %452, %481  : i64
    %483 = llvm.mlir.constant(2 : index) : i64
    %484 = llvm.mul %457, %483  : i64
    %485 = llvm.add %482, %484  : i64
    %486 = llvm.add %485, %462  : i64
    %487 = llvm.add %486, %467  : i64
    %488 = llvm.getelementptr %480[%487] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %479, %488 : !llvm.ptr<i1>
    %489 = llvm.add %467, %466  : i64
    llvm.br ^bb76(%489 : i64)
  ^bb78:  // pred: ^bb76
    %490 = llvm.add %462, %461  : i64
    llvm.br ^bb74(%490 : i64)
  ^bb79:  // pred: ^bb74
    %491 = llvm.add %457, %456  : i64
    llvm.br ^bb72(%491 : i64)
  ^bb80:  // pred: ^bb72
    %492 = llvm.add %452, %451  : i64
    llvm.br ^bb70(%492 : i64)
  ^bb81:  // pred: ^bb70
    %493 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %494 = llvm.insertvalue %350, %493[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %495 = llvm.insertvalue %448, %494[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %495 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
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
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %52 = llvm.extractvalue %51[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %53 = llvm.extractvalue %51[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %54 = llvm.mlir.constant(2 : i64) : i64
    %55 = llvm.mlir.constant(16 : i64) : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %58 = llvm.mlir.constant(5 : i64) : i64
    %59 = llvm.call @omTensorCreateUntyped(%58) : (i64) -> !llvm.ptr<i8>
    %60 = llvm.mlir.constant(1 : i64) : i64
    %61 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %63 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.bitcast %63 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%59, %60, %62, %64) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %65 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%59, %65) : (!llvm.ptr<i8>, i64) -> ()
    %66 = llvm.call @omTensorGetShape(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %67 = llvm.call @omTensorGetStrides(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.mlir.constant(0 : i64) : i64
    %69 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %70 = llvm.getelementptr %66[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %72 = llvm.getelementptr %67[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %75 = llvm.getelementptr %66[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %77 = llvm.getelementptr %67[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %80 = llvm.getelementptr %66[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %82 = llvm.getelementptr %67[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.mlir.constant(3 : i64) : i64
    %84 = llvm.extractvalue %52[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %85 = llvm.getelementptr %66[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.extractvalue %52[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %87 = llvm.getelementptr %67[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.mlir.constant(4 : i64) : i64
    %89 = llvm.extractvalue %52[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %90 = llvm.getelementptr %66[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %52[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %92 = llvm.getelementptr %67[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.getelementptr %57[%93] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %59, %94 : !llvm.ptr<ptr<i8>>
    %95 = llvm.mlir.constant(4 : i64) : i64
    %96 = llvm.call @omTensorCreateUntyped(%95) : (i64) -> !llvm.ptr<i8>
    %97 = llvm.mlir.constant(1 : i64) : i64
    %98 = llvm.extractvalue %53[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.bitcast %98 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %100 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.bitcast %100 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%96, %97, %99, %101) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %102 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%96, %102) : (!llvm.ptr<i8>, i64) -> ()
    %103 = llvm.call @omTensorGetShape(%96) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %104 = llvm.call @omTensorGetStrides(%96) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %105 = llvm.mlir.constant(0 : i64) : i64
    %106 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %103[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %104[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(1 : i64) : i64
    %111 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %103[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %104[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(2 : i64) : i64
    %116 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %103[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %104[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.mlir.constant(3 : i64) : i64
    %121 = llvm.extractvalue %53[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %103[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.extractvalue %53[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %104[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.mlir.constant(1 : i64) : i64
    %126 = llvm.getelementptr %57[%125] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %96, %126 : !llvm.ptr<ptr<i8>>
    %127 = llvm.call @omTensorListCreate(%57, %54, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %127 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<144 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<144 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

