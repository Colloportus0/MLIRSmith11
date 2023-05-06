module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 5] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v2_0", "v4_0", "v5_0"]} {
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
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(2147483647 : i32) : i32
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.null : !llvm.ptr<i1>
    %20 = llvm.getelementptr %19[%14] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %21 = llvm.ptrtoint %20 : !llvm.ptr<i1> to i64
    %22 = llvm.mlir.constant(16 : index) : i64
    %23 = llvm.add %21, %22  : i64
    %24 = llvm.call @malloc(%23) : (i64) -> !llvm.ptr<i8>
    %25 = llvm.bitcast %24 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %26 = llvm.ptrtoint %25 : !llvm.ptr<i1> to i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.sub %22, %27  : i64
    %29 = llvm.add %26, %28  : i64
    %30 = llvm.urem %29, %22  : i64
    %31 = llvm.sub %29, %30  : i64
    %32 = llvm.inttoptr %31 : i64 to !llvm.ptr<i1>
    %33 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %34 = llvm.insertvalue %25, %33[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %14, %37[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %15, %38[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %16, %39[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %17, %40[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %15, %41[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %16, %42[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %17, %43[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %18, %44[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(0 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%46 : i64)
  ^bb1(%49: i64):  // 2 preds: ^bb0, ^bb11
    %50 = llvm.icmp "slt" %49, %47 : i64
    llvm.cond_br %50, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%51 : i64)
  ^bb3(%54: i64):  // 2 preds: ^bb2, ^bb10
    %55 = llvm.icmp "slt" %54, %52 : i64
    llvm.cond_br %55, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%56 : i64)
  ^bb5(%59: i64):  // 2 preds: ^bb4, ^bb9
    %60 = llvm.icmp "slt" %59, %57 : i64
    llvm.cond_br %60, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%61 : i64)
  ^bb7(%64: i64):  // 2 preds: ^bb6, ^bb8
    %65 = llvm.icmp "slt" %64, %62 : i64
    llvm.cond_br %65, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %66 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.add %49, %54  : i64
    %68 = llvm.add %67, %59  : i64
    %69 = llvm.add %68, %64  : i64
    %70 = llvm.getelementptr %66[%69] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %71 = llvm.load %70 : !llvm.ptr<i32>
    %72 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.add %49, %54  : i64
    %74 = llvm.add %73, %59  : i64
    %75 = llvm.add %74, %64  : i64
    %76 = llvm.getelementptr %72[%75] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %77 = llvm.load %76 : !llvm.ptr<i32>
    %78 = llvm.icmp "eq" %71, %77 : i32
    %79 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.add %49, %54  : i64
    %81 = llvm.add %80, %59  : i64
    %82 = llvm.add %81, %64  : i64
    %83 = llvm.getelementptr %79[%82] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %78, %83 : !llvm.ptr<i1>
    %84 = llvm.add %64, %63  : i64
    llvm.br ^bb7(%84 : i64)
  ^bb9:  // pred: ^bb7
    %85 = llvm.add %59, %58  : i64
    llvm.br ^bb5(%85 : i64)
  ^bb10:  // pred: ^bb5
    %86 = llvm.add %54, %53  : i64
    llvm.br ^bb3(%86 : i64)
  ^bb11:  // pred: ^bb3
    %87 = llvm.add %49, %48  : i64
    llvm.br ^bb1(%87 : i64)
  ^bb12:  // pred: ^bb1
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.null : !llvm.ptr<i32>
    %93 = llvm.getelementptr %92[%88] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %94 = llvm.ptrtoint %93 : !llvm.ptr<i32> to i64
    %95 = llvm.mlir.constant(16 : index) : i64
    %96 = llvm.add %94, %95  : i64
    %97 = llvm.call @malloc(%96) : (i64) -> !llvm.ptr<i8>
    %98 = llvm.bitcast %97 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %99 = llvm.ptrtoint %98 : !llvm.ptr<i32> to i64
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.sub %95, %100  : i64
    %102 = llvm.add %99, %101  : i64
    %103 = llvm.urem %102, %95  : i64
    %104 = llvm.sub %102, %103  : i64
    %105 = llvm.inttoptr %104 : i64 to !llvm.ptr<i32>
    %106 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %107 = llvm.insertvalue %98, %106[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %108 = llvm.insertvalue %105, %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.insertvalue %109, %108[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %111 = llvm.insertvalue %88, %110[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %112 = llvm.insertvalue %89, %111[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %113 = llvm.insertvalue %90, %112[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %114 = llvm.insertvalue %89, %113[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %115 = llvm.insertvalue %90, %114[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %116 = llvm.insertvalue %91, %115[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%117 : i64)
  ^bb13(%120: i64):  // 2 preds: ^bb12, ^bb20
    %121 = llvm.icmp "slt" %120, %118 : i64
    llvm.cond_br %121, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %122 = llvm.mlir.constant(0 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%122 : i64)
  ^bb15(%125: i64):  // 2 preds: ^bb14, ^bb19
    %126 = llvm.icmp "slt" %125, %123 : i64
    llvm.cond_br %126, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%127 : i64)
  ^bb17(%130: i64):  // 2 preds: ^bb16, ^bb18
    %131 = llvm.icmp "slt" %130, %128 : i64
    llvm.cond_br %131, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %132 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %133 = llvm.add %120, %125  : i64
    %134 = llvm.add %133, %130  : i64
    %135 = llvm.getelementptr %132[%134] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %13, %135 : !llvm.ptr<i32>
    %136 = llvm.add %130, %129  : i64
    llvm.br ^bb17(%136 : i64)
  ^bb19:  // pred: ^bb17
    %137 = llvm.add %125, %124  : i64
    llvm.br ^bb15(%137 : i64)
  ^bb20:  // pred: ^bb15
    %138 = llvm.add %120, %119  : i64
    llvm.br ^bb13(%138 : i64)
  ^bb21:  // pred: ^bb13
    %139 = llvm.mlir.constant(0 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%139 : i64)
  ^bb22(%142: i64):  // 2 preds: ^bb21, ^bb32
    %143 = llvm.icmp "slt" %142, %140 : i64
    llvm.cond_br %143, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %144 = llvm.mlir.constant(0 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%144 : i64)
  ^bb24(%147: i64):  // 2 preds: ^bb23, ^bb31
    %148 = llvm.icmp "slt" %147, %145 : i64
    llvm.cond_br %148, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %149 = llvm.mlir.constant(0 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%149 : i64)
  ^bb26(%152: i64):  // 2 preds: ^bb25, ^bb30
    %153 = llvm.icmp "slt" %152, %150 : i64
    llvm.cond_br %153, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%154 : i64)
  ^bb28(%157: i64):  // 2 preds: ^bb27, ^bb29
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %159 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.add %142, %147  : i64
    %161 = llvm.add %160, %152  : i64
    %162 = llvm.add %161, %157  : i64
    %163 = llvm.getelementptr %159[%162] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %164 = llvm.load %163 : !llvm.ptr<i32>
    %165 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %166 = llvm.add %142, %147  : i64
    %167 = llvm.add %166, %152  : i64
    %168 = llvm.getelementptr %165[%167] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %169 = llvm.load %168 : !llvm.ptr<i32>
    %170 = llvm.icmp "slt" %169, %164 : i32
    %171 = llvm.select %170, %169, %164 : i1, i32
    %172 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %173 = llvm.add %142, %147  : i64
    %174 = llvm.add %173, %152  : i64
    %175 = llvm.getelementptr %172[%174] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %171, %175 : !llvm.ptr<i32>
    %176 = llvm.add %157, %156  : i64
    llvm.br ^bb28(%176 : i64)
  ^bb30:  // pred: ^bb28
    %177 = llvm.add %152, %151  : i64
    llvm.br ^bb26(%177 : i64)
  ^bb31:  // pred: ^bb26
    %178 = llvm.add %147, %146  : i64
    llvm.br ^bb24(%178 : i64)
  ^bb32:  // pred: ^bb24
    %179 = llvm.add %142, %141  : i64
    llvm.br ^bb22(%179 : i64)
  ^bb33:  // pred: ^bb22
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.constant(5 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.constant(5 : index) : i64
    %185 = llvm.mlir.constant(5 : index) : i64
    %186 = llvm.mlir.null : !llvm.ptr<i32>
    %187 = llvm.getelementptr %186[%185] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %188 = llvm.ptrtoint %187 : !llvm.ptr<i32> to i64
    %189 = llvm.mlir.constant(16 : index) : i64
    %190 = llvm.add %188, %189  : i64
    %191 = llvm.call @malloc(%190) : (i64) -> !llvm.ptr<i8>
    %192 = llvm.bitcast %191 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %193 = llvm.ptrtoint %192 : !llvm.ptr<i32> to i64
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.sub %189, %194  : i64
    %196 = llvm.add %193, %195  : i64
    %197 = llvm.urem %196, %189  : i64
    %198 = llvm.sub %196, %197  : i64
    %199 = llvm.inttoptr %198 : i64 to !llvm.ptr<i32>
    %200 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %201 = llvm.insertvalue %192, %200[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %202 = llvm.insertvalue %199, %201[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.insertvalue %203, %202[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %205 = llvm.insertvalue %180, %204[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %206 = llvm.insertvalue %181, %205[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %207 = llvm.insertvalue %182, %206[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %208 = llvm.insertvalue %184, %207[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %209 = llvm.insertvalue %182, %208[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %210 = llvm.insertvalue %183, %209[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%211 : i64)
  ^bb34(%214: i64):  // 2 preds: ^bb33, ^bb41
    %215 = llvm.icmp "slt" %214, %212 : i64
    llvm.cond_br %215, ^bb35, ^bb42
  ^bb35:  // pred: ^bb34
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%216 : i64)
  ^bb36(%219: i64):  // 2 preds: ^bb35, ^bb40
    %220 = llvm.icmp "slt" %219, %217 : i64
    llvm.cond_br %220, ^bb37, ^bb41
  ^bb37:  // pred: ^bb36
    %221 = llvm.mlir.constant(0 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%221 : i64)
  ^bb38(%224: i64):  // 2 preds: ^bb37, ^bb39
    %225 = llvm.icmp "slt" %224, %222 : i64
    llvm.cond_br %225, ^bb39, ^bb40
  ^bb39:  // pred: ^bb38
    %226 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %227 = llvm.add %214, %219  : i64
    %228 = llvm.add %227, %224  : i64
    %229 = llvm.getelementptr %226[%228] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %230 = llvm.load %229 : !llvm.ptr<i32>
    %231 = llvm.extractvalue %210[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %232 = llvm.mlir.constant(5 : index) : i64
    %233 = llvm.mul %214, %232  : i64
    %234 = llvm.mlir.constant(5 : index) : i64
    %235 = llvm.mul %219, %234  : i64
    %236 = llvm.add %233, %235  : i64
    %237 = llvm.add %236, %224  : i64
    %238 = llvm.getelementptr %231[%237] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %230, %238 : !llvm.ptr<i32>
    %239 = llvm.add %224, %223  : i64
    llvm.br ^bb38(%239 : i64)
  ^bb40:  // pred: ^bb38
    %240 = llvm.add %219, %218  : i64
    llvm.br ^bb36(%240 : i64)
  ^bb41:  // pred: ^bb36
    %241 = llvm.add %214, %213  : i64
    llvm.br ^bb34(%241 : i64)
  ^bb42:  // pred: ^bb34
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%242 : i64)
  ^bb43(%245: i64):  // 2 preds: ^bb42, ^bb50
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb44, ^bb51
  ^bb44:  // pred: ^bb43
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%247 : i64)
  ^bb45(%250: i64):  // 2 preds: ^bb44, ^bb49
    %251 = llvm.icmp "slt" %250, %248 : i64
    llvm.cond_br %251, ^bb46, ^bb50
  ^bb46:  // pred: ^bb45
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%252 : i64)
  ^bb47(%255: i64):  // 2 preds: ^bb46, ^bb48
    %256 = llvm.icmp "slt" %255, %253 : i64
    llvm.cond_br %256, ^bb48, ^bb49
  ^bb48:  // pred: ^bb47
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.add %255, %257  : i64
    %259 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %260 = llvm.add %245, %250  : i64
    %261 = llvm.add %260, %255  : i64
    %262 = llvm.getelementptr %259[%261] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %263 = llvm.load %262 : !llvm.ptr<i32>
    %264 = llvm.extractvalue %210[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %265 = llvm.mlir.constant(5 : index) : i64
    %266 = llvm.mul %245, %265  : i64
    %267 = llvm.mlir.constant(5 : index) : i64
    %268 = llvm.mul %250, %267  : i64
    %269 = llvm.add %266, %268  : i64
    %270 = llvm.add %269, %258  : i64
    %271 = llvm.getelementptr %264[%270] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %263, %271 : !llvm.ptr<i32>
    %272 = llvm.add %255, %254  : i64
    llvm.br ^bb47(%272 : i64)
  ^bb49:  // pred: ^bb47
    %273 = llvm.add %250, %249  : i64
    llvm.br ^bb45(%273 : i64)
  ^bb50:  // pred: ^bb45
    %274 = llvm.add %245, %244  : i64
    llvm.br ^bb43(%274 : i64)
  ^bb51:  // pred: ^bb43
    %275 = llvm.mlir.constant(0 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%275 : i64)
  ^bb52(%278: i64):  // 2 preds: ^bb51, ^bb59
    %279 = llvm.icmp "slt" %278, %276 : i64
    llvm.cond_br %279, ^bb53, ^bb60
  ^bb53:  // pred: ^bb52
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%280 : i64)
  ^bb54(%283: i64):  // 2 preds: ^bb53, ^bb58
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb55, ^bb59
  ^bb55:  // pred: ^bb54
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%285 : i64)
  ^bb56(%288: i64):  // 2 preds: ^bb55, ^bb57
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb57, ^bb58
  ^bb57:  // pred: ^bb56
    %290 = llvm.mlir.constant(2 : index) : i64
    %291 = llvm.add %288, %290  : i64
    %292 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %293 = llvm.add %278, %283  : i64
    %294 = llvm.add %293, %288  : i64
    %295 = llvm.getelementptr %292[%294] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %296 = llvm.load %295 : !llvm.ptr<i32>
    %297 = llvm.extractvalue %210[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %298 = llvm.mlir.constant(5 : index) : i64
    %299 = llvm.mul %278, %298  : i64
    %300 = llvm.mlir.constant(5 : index) : i64
    %301 = llvm.mul %283, %300  : i64
    %302 = llvm.add %299, %301  : i64
    %303 = llvm.add %302, %291  : i64
    %304 = llvm.getelementptr %297[%303] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %296, %304 : !llvm.ptr<i32>
    %305 = llvm.add %288, %287  : i64
    llvm.br ^bb56(%305 : i64)
  ^bb58:  // pred: ^bb56
    %306 = llvm.add %283, %282  : i64
    llvm.br ^bb54(%306 : i64)
  ^bb59:  // pred: ^bb54
    %307 = llvm.add %278, %277  : i64
    llvm.br ^bb52(%307 : i64)
  ^bb60:  // pred: ^bb52
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%308 : i64)
  ^bb61(%311: i64):  // 2 preds: ^bb60, ^bb68
    %312 = llvm.icmp "slt" %311, %309 : i64
    llvm.cond_br %312, ^bb62, ^bb69
  ^bb62:  // pred: ^bb61
    %313 = llvm.mlir.constant(0 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%313 : i64)
  ^bb63(%316: i64):  // 2 preds: ^bb62, ^bb67
    %317 = llvm.icmp "slt" %316, %314 : i64
    llvm.cond_br %317, ^bb64, ^bb68
  ^bb64:  // pred: ^bb63
    %318 = llvm.mlir.constant(0 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%318 : i64)
  ^bb65(%321: i64):  // 2 preds: ^bb64, ^bb66
    %322 = llvm.icmp "slt" %321, %319 : i64
    llvm.cond_br %322, ^bb66, ^bb67
  ^bb66:  // pred: ^bb65
    %323 = llvm.mlir.constant(3 : index) : i64
    %324 = llvm.add %321, %323  : i64
    %325 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %326 = llvm.add %311, %316  : i64
    %327 = llvm.add %326, %321  : i64
    %328 = llvm.getelementptr %325[%327] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %329 = llvm.load %328 : !llvm.ptr<i32>
    %330 = llvm.extractvalue %210[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %331 = llvm.mlir.constant(5 : index) : i64
    %332 = llvm.mul %311, %331  : i64
    %333 = llvm.mlir.constant(5 : index) : i64
    %334 = llvm.mul %316, %333  : i64
    %335 = llvm.add %332, %334  : i64
    %336 = llvm.add %335, %324  : i64
    %337 = llvm.getelementptr %330[%336] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %329, %337 : !llvm.ptr<i32>
    %338 = llvm.add %321, %320  : i64
    llvm.br ^bb65(%338 : i64)
  ^bb67:  // pred: ^bb65
    %339 = llvm.add %316, %315  : i64
    llvm.br ^bb63(%339 : i64)
  ^bb68:  // pred: ^bb63
    %340 = llvm.add %311, %310  : i64
    llvm.br ^bb61(%340 : i64)
  ^bb69:  // pred: ^bb61
    %341 = llvm.mlir.constant(0 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%341 : i64)
  ^bb70(%344: i64):  // 2 preds: ^bb69, ^bb77
    %345 = llvm.icmp "slt" %344, %342 : i64
    llvm.cond_br %345, ^bb71, ^bb78
  ^bb71:  // pred: ^bb70
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%346 : i64)
  ^bb72(%349: i64):  // 2 preds: ^bb71, ^bb76
    %350 = llvm.icmp "slt" %349, %347 : i64
    llvm.cond_br %350, ^bb73, ^bb77
  ^bb73:  // pred: ^bb72
    %351 = llvm.mlir.constant(0 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%351 : i64)
  ^bb74(%354: i64):  // 2 preds: ^bb73, ^bb75
    %355 = llvm.icmp "slt" %354, %352 : i64
    llvm.cond_br %355, ^bb75, ^bb76
  ^bb75:  // pred: ^bb74
    %356 = llvm.mlir.constant(4 : index) : i64
    %357 = llvm.add %354, %356  : i64
    %358 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %359 = llvm.add %344, %349  : i64
    %360 = llvm.add %359, %354  : i64
    %361 = llvm.getelementptr %358[%360] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %362 = llvm.load %361 : !llvm.ptr<i32>
    %363 = llvm.extractvalue %210[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %364 = llvm.mlir.constant(5 : index) : i64
    %365 = llvm.mul %344, %364  : i64
    %366 = llvm.mlir.constant(5 : index) : i64
    %367 = llvm.mul %349, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.add %368, %357  : i64
    %370 = llvm.getelementptr %363[%369] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %362, %370 : !llvm.ptr<i32>
    %371 = llvm.add %354, %353  : i64
    llvm.br ^bb74(%371 : i64)
  ^bb76:  // pred: ^bb74
    %372 = llvm.add %349, %348  : i64
    llvm.br ^bb72(%372 : i64)
  ^bb77:  // pred: ^bb72
    %373 = llvm.add %344, %343  : i64
    llvm.br ^bb70(%373 : i64)
  ^bb78:  // pred: ^bb70
    %374 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %375 = llvm.extractvalue %116[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %376 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %377 = llvm.insertvalue %375, %374[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %378 = llvm.insertvalue %376, %377[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.insertvalue %379, %378[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.insertvalue %381, %380[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.insertvalue %383, %382[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.insertvalue %385, %384[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.insertvalue %387, %386[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.mlir.null : !llvm.ptr<i1>
    %393 = llvm.getelementptr %392[%389] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %394 = llvm.ptrtoint %393 : !llvm.ptr<i1> to i64
    %395 = llvm.mlir.constant(16 : index) : i64
    %396 = llvm.add %394, %395  : i64
    %397 = llvm.call @malloc(%396) : (i64) -> !llvm.ptr<i8>
    %398 = llvm.bitcast %397 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %399 = llvm.ptrtoint %398 : !llvm.ptr<i1> to i64
    %400 = llvm.mlir.constant(1 : index) : i64
    %401 = llvm.sub %395, %400  : i64
    %402 = llvm.add %399, %401  : i64
    %403 = llvm.urem %402, %395  : i64
    %404 = llvm.sub %402, %403  : i64
    %405 = llvm.inttoptr %404 : i64 to !llvm.ptr<i1>
    %406 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>
    %407 = llvm.insertvalue %398, %406[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %408 = llvm.insertvalue %405, %407[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %409 = llvm.mlir.constant(0 : index) : i64
    %410 = llvm.insertvalue %409, %408[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %411 = llvm.insertvalue %389, %410[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %412 = llvm.insertvalue %390, %411[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %413 = llvm.insertvalue %390, %412[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %414 = llvm.insertvalue %391, %413[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%415 : i64)
  ^bb79(%418: i64):  // 2 preds: ^bb78, ^bb83
    %419 = llvm.icmp "slt" %418, %416 : i64
    llvm.cond_br %419, ^bb80, ^bb84
  ^bb80:  // pred: ^bb79
    %420 = llvm.mlir.constant(0 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%420 : i64)
  ^bb81(%423: i64):  // 2 preds: ^bb80, ^bb82
    %424 = llvm.icmp "slt" %423, %421 : i64
    llvm.cond_br %424, ^bb82, ^bb83
  ^bb82:  // pred: ^bb81
    %425 = llvm.extractvalue %388[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %426 = llvm.add %418, %423  : i64
    %427 = llvm.getelementptr %425[%426] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %428 = llvm.load %427 : !llvm.ptr<i32>
    %429 = llvm.icmp "ne" %428, %12 : i32
    %430 = llvm.extractvalue %414[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %431 = llvm.add %418, %423  : i64
    %432 = llvm.getelementptr %430[%431] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %429, %432 : !llvm.ptr<i1>
    %433 = llvm.add %423, %422  : i64
    llvm.br ^bb81(%433 : i64)
  ^bb83:  // pred: ^bb81
    %434 = llvm.add %418, %417  : i64
    llvm.br ^bb79(%434 : i64)
  ^bb84:  // pred: ^bb79
    %435 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)>
    %436 = llvm.insertvalue %45, %435[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %437 = llvm.insertvalue %210, %436[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %438 = llvm.insertvalue %414, %437[2] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)> 
    llvm.return %438 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v2_0", "v4_0", "v5_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %61[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %51[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(3 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(1 : i64) : i64
    %110 = llvm.getelementptr %51[%109] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %110 : !llvm.ptr<ptr<i8>>
    %111 = llvm.mlir.constant(2 : i64) : i64
    %112 = llvm.call @omTensorCreateUntyped(%111) : (i64) -> !llvm.ptr<i8>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.bitcast %114 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %116 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %117 = llvm.bitcast %116 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%112, %113, %115, %117) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %118 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%112, %118) : (!llvm.ptr<i8>, i64) -> ()
    %119 = llvm.call @omTensorGetShape(%112) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %120 = llvm.call @omTensorGetStrides(%112) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %121 = llvm.mlir.constant(0 : i64) : i64
    %122 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %123 = llvm.getelementptr %119[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %125 = llvm.getelementptr %120[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %128 = llvm.getelementptr %119[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %130 = llvm.getelementptr %120[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(2 : i64) : i64
    %132 = llvm.getelementptr %51[%131] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %112, %132 : !llvm.ptr<ptr<i8>>
    %133 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %133 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<197 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<197 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

