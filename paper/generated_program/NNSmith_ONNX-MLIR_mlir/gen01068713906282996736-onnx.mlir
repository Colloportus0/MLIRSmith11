module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 2 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 2 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [8] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: !llvm.ptr<i32>, %arg14: !llvm.ptr<i32>, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0", "v1_0"], llvm.emit_c_interface, output_names = ["v6_0", "v5_0", "v3_0"]} {
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
    %14 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %15 = llvm.insertvalue %arg13, %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg16, %17[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg18, %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg19, %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.mlir.constant(2147483647 : i32) : i32
    %23 = llvm.mlir.constant(0 : i32) : i32
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.mlir.constant(2 : index) : i64
    %26 = llvm.mlir.constant(2 : index) : i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.mlir.constant(2 : index) : i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.mlir.constant(2 : index) : i64
    %32 = llvm.mlir.constant(4 : index) : i64
    %33 = llvm.mlir.constant(8 : index) : i64
    %34 = llvm.mlir.null : !llvm.ptr<i32>
    %35 = llvm.getelementptr %34[%33] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %36 = llvm.ptrtoint %35 : !llvm.ptr<i32> to i64
    %37 = llvm.mlir.constant(16 : index) : i64
    %38 = llvm.add %36, %37  : i64
    %39 = llvm.call @malloc(%38) : (i64) -> !llvm.ptr<i8>
    %40 = llvm.bitcast %39 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %41 = llvm.ptrtoint %40 : !llvm.ptr<i32> to i64
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.sub %37, %42  : i64
    %44 = llvm.add %41, %43  : i64
    %45 = llvm.urem %44, %37  : i64
    %46 = llvm.sub %44, %45  : i64
    %47 = llvm.inttoptr %46 : i64 to !llvm.ptr<i32>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %49 = llvm.insertvalue %40, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %50 = llvm.insertvalue %47, %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.insertvalue %51, %50[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %53 = llvm.insertvalue %25, %52[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %54 = llvm.insertvalue %26, %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %55 = llvm.insertvalue %27, %54[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %56 = llvm.insertvalue %28, %55[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %57 = llvm.insertvalue %29, %56[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %58 = llvm.insertvalue %32, %57[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %59 = llvm.insertvalue %31, %58[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %60 = llvm.insertvalue %28, %59[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %61 = llvm.insertvalue %29, %60[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.insertvalue %30, %61[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.mlir.constant(2 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%63 : i64)
  ^bb1(%66: i64):  // 2 preds: ^bb0, ^bb14
    %67 = llvm.icmp "slt" %66, %64 : i64
    llvm.cond_br %67, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.mlir.constant(2 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%68 : i64)
  ^bb3(%71: i64):  // 2 preds: ^bb2, ^bb13
    %72 = llvm.icmp "slt" %71, %69 : i64
    llvm.cond_br %72, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%73 : i64)
  ^bb5(%76: i64):  // 2 preds: ^bb4, ^bb12
    %77 = llvm.icmp "slt" %76, %74 : i64
    llvm.cond_br %77, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%78 : i64)
  ^bb7(%81: i64):  // 2 preds: ^bb6, ^bb11
    %82 = llvm.icmp "slt" %81, %79 : i64
    llvm.cond_br %82, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%83 : i64)
  ^bb9(%86: i64):  // 2 preds: ^bb8, ^bb10
    %87 = llvm.icmp "slt" %86, %84 : i64
    llvm.cond_br %87, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %88 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %89 = llvm.mlir.constant(4 : index) : i64
    %90 = llvm.mul %66, %89  : i64
    %91 = llvm.mlir.constant(2 : index) : i64
    %92 = llvm.mul %71, %91  : i64
    %93 = llvm.add %90, %92  : i64
    %94 = llvm.mlir.constant(2 : index) : i64
    %95 = llvm.mul %76, %94  : i64
    %96 = llvm.add %93, %95  : i64
    %97 = llvm.add %96, %81  : i64
    %98 = llvm.add %97, %86  : i64
    %99 = llvm.getelementptr %88[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %100 = llvm.load %99 : !llvm.ptr<i32>
    %101 = llvm.sub %23, %100  : i32
    %102 = llvm.extractvalue %62[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %103 = llvm.mlir.constant(4 : index) : i64
    %104 = llvm.mul %66, %103  : i64
    %105 = llvm.mlir.constant(2 : index) : i64
    %106 = llvm.mul %71, %105  : i64
    %107 = llvm.add %104, %106  : i64
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mul %76, %108  : i64
    %110 = llvm.add %107, %109  : i64
    %111 = llvm.add %110, %81  : i64
    %112 = llvm.add %111, %86  : i64
    %113 = llvm.getelementptr %102[%112] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %101, %113 : !llvm.ptr<i32>
    %114 = llvm.add %86, %85  : i64
    llvm.br ^bb9(%114 : i64)
  ^bb11:  // pred: ^bb9
    %115 = llvm.add %81, %80  : i64
    llvm.br ^bb7(%115 : i64)
  ^bb12:  // pred: ^bb7
    %116 = llvm.add %76, %75  : i64
    llvm.br ^bb5(%116 : i64)
  ^bb13:  // pred: ^bb5
    %117 = llvm.add %71, %70  : i64
    llvm.br ^bb3(%117 : i64)
  ^bb14:  // pred: ^bb3
    %118 = llvm.add %66, %65  : i64
    llvm.br ^bb1(%118 : i64)
  ^bb15:  // pred: ^bb1
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mlir.constant(2 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(2 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mlir.constant(4 : index) : i64
    %127 = llvm.mlir.constant(8 : index) : i64
    %128 = llvm.mlir.null : !llvm.ptr<i32>
    %129 = llvm.getelementptr %128[%127] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %130 = llvm.ptrtoint %129 : !llvm.ptr<i32> to i64
    %131 = llvm.mlir.constant(16 : index) : i64
    %132 = llvm.add %130, %131  : i64
    %133 = llvm.call @malloc(%132) : (i64) -> !llvm.ptr<i8>
    %134 = llvm.bitcast %133 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %135 = llvm.ptrtoint %134 : !llvm.ptr<i32> to i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.sub %131, %136  : i64
    %138 = llvm.add %135, %137  : i64
    %139 = llvm.urem %138, %131  : i64
    %140 = llvm.sub %138, %139  : i64
    %141 = llvm.inttoptr %140 : i64 to !llvm.ptr<i32>
    %142 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %143 = llvm.insertvalue %134, %142[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %144 = llvm.insertvalue %141, %143[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.insertvalue %145, %144[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %147 = llvm.insertvalue %119, %146[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %148 = llvm.insertvalue %120, %147[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %149 = llvm.insertvalue %121, %148[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %150 = llvm.insertvalue %122, %149[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %151 = llvm.insertvalue %123, %150[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %152 = llvm.insertvalue %126, %151[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %153 = llvm.insertvalue %125, %152[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %154 = llvm.insertvalue %122, %153[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %155 = llvm.insertvalue %123, %154[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %156 = llvm.insertvalue %124, %155[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.mlir.constant(2 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%157 : i64)
  ^bb16(%160: i64):  // 2 preds: ^bb15, ^bb29
    %161 = llvm.icmp "slt" %160, %158 : i64
    llvm.cond_br %161, ^bb17, ^bb30
  ^bb17:  // pred: ^bb16
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.mlir.constant(2 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%162 : i64)
  ^bb18(%165: i64):  // 2 preds: ^bb17, ^bb28
    %166 = llvm.icmp "slt" %165, %163 : i64
    llvm.cond_br %166, ^bb19, ^bb29
  ^bb19:  // pred: ^bb18
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%167 : i64)
  ^bb20(%170: i64):  // 2 preds: ^bb19, ^bb27
    %171 = llvm.icmp "slt" %170, %168 : i64
    llvm.cond_br %171, ^bb21, ^bb28
  ^bb21:  // pred: ^bb20
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.mlir.constant(2 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%172 : i64)
  ^bb22(%175: i64):  // 2 preds: ^bb21, ^bb26
    %176 = llvm.icmp "slt" %175, %173 : i64
    llvm.cond_br %176, ^bb23, ^bb27
  ^bb23:  // pred: ^bb22
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%177 : i64)
  ^bb24(%180: i64):  // 2 preds: ^bb23, ^bb25
    %181 = llvm.icmp "slt" %180, %178 : i64
    llvm.cond_br %181, ^bb25, ^bb26
  ^bb25:  // pred: ^bb24
    %182 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %183 = llvm.mlir.constant(4 : index) : i64
    %184 = llvm.mul %160, %183  : i64
    %185 = llvm.mlir.constant(2 : index) : i64
    %186 = llvm.mul %165, %185  : i64
    %187 = llvm.add %184, %186  : i64
    %188 = llvm.mlir.constant(2 : index) : i64
    %189 = llvm.mul %170, %188  : i64
    %190 = llvm.add %187, %189  : i64
    %191 = llvm.add %190, %175  : i64
    %192 = llvm.add %191, %180  : i64
    %193 = llvm.getelementptr %182[%192] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %194 = llvm.load %193 : !llvm.ptr<i32>
    %195 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %196 = llvm.mlir.constant(4 : index) : i64
    %197 = llvm.mul %160, %196  : i64
    %198 = llvm.mlir.constant(2 : index) : i64
    %199 = llvm.mul %165, %198  : i64
    %200 = llvm.add %197, %199  : i64
    %201 = llvm.mlir.constant(2 : index) : i64
    %202 = llvm.mul %170, %201  : i64
    %203 = llvm.add %200, %202  : i64
    %204 = llvm.add %203, %175  : i64
    %205 = llvm.add %204, %180  : i64
    %206 = llvm.getelementptr %195[%205] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %207 = llvm.load %206 : !llvm.ptr<i32>
    %208 = llvm.mul %194, %207  : i32
    %209 = llvm.extractvalue %156[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %210 = llvm.mlir.constant(4 : index) : i64
    %211 = llvm.mul %160, %210  : i64
    %212 = llvm.mlir.constant(2 : index) : i64
    %213 = llvm.mul %165, %212  : i64
    %214 = llvm.add %211, %213  : i64
    %215 = llvm.mlir.constant(2 : index) : i64
    %216 = llvm.mul %170, %215  : i64
    %217 = llvm.add %214, %216  : i64
    %218 = llvm.add %217, %175  : i64
    %219 = llvm.add %218, %180  : i64
    %220 = llvm.getelementptr %209[%219] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %208, %220 : !llvm.ptr<i32>
    %221 = llvm.add %180, %179  : i64
    llvm.br ^bb24(%221 : i64)
  ^bb26:  // pred: ^bb24
    %222 = llvm.add %175, %174  : i64
    llvm.br ^bb22(%222 : i64)
  ^bb27:  // pred: ^bb22
    %223 = llvm.add %170, %169  : i64
    llvm.br ^bb20(%223 : i64)
  ^bb28:  // pred: ^bb20
    %224 = llvm.add %165, %164  : i64
    llvm.br ^bb18(%224 : i64)
  ^bb29:  // pred: ^bb18
    %225 = llvm.add %160, %159  : i64
    llvm.br ^bb16(%225 : i64)
  ^bb30:  // pred: ^bb16
    %226 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %227 = llvm.extractvalue %156[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %228 = llvm.extractvalue %156[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %229 = llvm.insertvalue %227, %226[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.insertvalue %228, %229[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.insertvalue %231, %230[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.mlir.constant(8 : index) : i64
    %234 = llvm.insertvalue %233, %232[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.insertvalue %235, %234[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %237 = llvm.mlir.constant(2 : index) : i64
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.constant(2 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mlir.constant(4 : index) : i64
    %244 = llvm.mlir.constant(8 : index) : i64
    %245 = llvm.mlir.null : !llvm.ptr<i32>
    %246 = llvm.getelementptr %245[%244] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %247 = llvm.ptrtoint %246 : !llvm.ptr<i32> to i64
    %248 = llvm.mlir.constant(16 : index) : i64
    %249 = llvm.add %247, %248  : i64
    %250 = llvm.call @malloc(%249) : (i64) -> !llvm.ptr<i8>
    %251 = llvm.bitcast %250 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %252 = llvm.ptrtoint %251 : !llvm.ptr<i32> to i64
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.sub %248, %253  : i64
    %255 = llvm.add %252, %254  : i64
    %256 = llvm.urem %255, %248  : i64
    %257 = llvm.sub %255, %256  : i64
    %258 = llvm.inttoptr %257 : i64 to !llvm.ptr<i32>
    %259 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %260 = llvm.insertvalue %251, %259[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.insertvalue %258, %260[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.mlir.constant(0 : index) : i64
    %263 = llvm.insertvalue %262, %261[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.insertvalue %237, %263[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.insertvalue %238, %264[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.insertvalue %239, %265[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.insertvalue %240, %266[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.insertvalue %243, %267[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.insertvalue %242, %268[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.insertvalue %240, %269[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.insertvalue %241, %270[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.mlir.constant(2 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%272 : i64)
  ^bb31(%275: i64):  // 2 preds: ^bb30, ^bb41
    %276 = llvm.icmp "slt" %275, %273 : i64
    llvm.cond_br %276, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.mlir.constant(2 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%277 : i64)
  ^bb33(%280: i64):  // 2 preds: ^bb32, ^bb40
    %281 = llvm.icmp "slt" %280, %278 : i64
    llvm.cond_br %281, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    %282 = llvm.mlir.constant(0 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%282 : i64)
  ^bb35(%285: i64):  // 2 preds: ^bb34, ^bb39
    %286 = llvm.icmp "slt" %285, %283 : i64
    llvm.cond_br %286, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.mlir.constant(2 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%287 : i64)
  ^bb37(%290: i64):  // 2 preds: ^bb36, ^bb38
    %291 = llvm.icmp "slt" %290, %288 : i64
    llvm.cond_br %291, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %292 = llvm.extractvalue %271[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %293 = llvm.mlir.constant(4 : index) : i64
    %294 = llvm.mul %275, %293  : i64
    %295 = llvm.mlir.constant(2 : index) : i64
    %296 = llvm.mul %280, %295  : i64
    %297 = llvm.add %294, %296  : i64
    %298 = llvm.mlir.constant(2 : index) : i64
    %299 = llvm.mul %285, %298  : i64
    %300 = llvm.add %297, %299  : i64
    %301 = llvm.add %300, %290  : i64
    %302 = llvm.getelementptr %292[%301] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %22, %302 : !llvm.ptr<i32>
    %303 = llvm.add %290, %289  : i64
    llvm.br ^bb37(%303 : i64)
  ^bb39:  // pred: ^bb37
    %304 = llvm.add %285, %284  : i64
    llvm.br ^bb35(%304 : i64)
  ^bb40:  // pred: ^bb35
    %305 = llvm.add %280, %279  : i64
    llvm.br ^bb33(%305 : i64)
  ^bb41:  // pred: ^bb33
    %306 = llvm.add %275, %274  : i64
    llvm.br ^bb31(%306 : i64)
  ^bb42:  // pred: ^bb31
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.mlir.constant(2 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%307 : i64)
  ^bb43(%310: i64):  // 2 preds: ^bb42, ^bb56
    %311 = llvm.icmp "slt" %310, %308 : i64
    llvm.cond_br %311, ^bb44, ^bb57
  ^bb44:  // pred: ^bb43
    %312 = llvm.mlir.constant(0 : index) : i64
    %313 = llvm.mlir.constant(2 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%312 : i64)
  ^bb45(%315: i64):  // 2 preds: ^bb44, ^bb55
    %316 = llvm.icmp "slt" %315, %313 : i64
    llvm.cond_br %316, ^bb46, ^bb56
  ^bb46:  // pred: ^bb45
    %317 = llvm.mlir.constant(0 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%317 : i64)
  ^bb47(%320: i64):  // 2 preds: ^bb46, ^bb54
    %321 = llvm.icmp "slt" %320, %318 : i64
    llvm.cond_br %321, ^bb48, ^bb55
  ^bb48:  // pred: ^bb47
    %322 = llvm.mlir.constant(0 : index) : i64
    %323 = llvm.mlir.constant(2 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%322 : i64)
  ^bb49(%325: i64):  // 2 preds: ^bb48, ^bb53
    %326 = llvm.icmp "slt" %325, %323 : i64
    llvm.cond_br %326, ^bb50, ^bb54
  ^bb50:  // pred: ^bb49
    %327 = llvm.mlir.constant(0 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%327 : i64)
  ^bb51(%330: i64):  // 2 preds: ^bb50, ^bb52
    %331 = llvm.icmp "slt" %330, %328 : i64
    llvm.cond_br %331, ^bb52, ^bb53
  ^bb52:  // pred: ^bb51
    %332 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %333 = llvm.mlir.constant(4 : index) : i64
    %334 = llvm.mul %310, %333  : i64
    %335 = llvm.mlir.constant(2 : index) : i64
    %336 = llvm.mul %315, %335  : i64
    %337 = llvm.add %334, %336  : i64
    %338 = llvm.mlir.constant(2 : index) : i64
    %339 = llvm.mul %320, %338  : i64
    %340 = llvm.add %337, %339  : i64
    %341 = llvm.add %340, %325  : i64
    %342 = llvm.add %341, %330  : i64
    %343 = llvm.getelementptr %332[%342] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %344 = llvm.load %343 : !llvm.ptr<i32>
    %345 = llvm.extractvalue %271[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.mlir.constant(4 : index) : i64
    %347 = llvm.mul %310, %346  : i64
    %348 = llvm.mlir.constant(2 : index) : i64
    %349 = llvm.mul %315, %348  : i64
    %350 = llvm.add %347, %349  : i64
    %351 = llvm.mlir.constant(2 : index) : i64
    %352 = llvm.mul %320, %351  : i64
    %353 = llvm.add %350, %352  : i64
    %354 = llvm.add %353, %325  : i64
    %355 = llvm.getelementptr %345[%354] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %356 = llvm.load %355 : !llvm.ptr<i32>
    %357 = llvm.icmp "slt" %356, %344 : i32
    %358 = llvm.select %357, %356, %344 : i1, i32
    %359 = llvm.extractvalue %271[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.mlir.constant(4 : index) : i64
    %361 = llvm.mul %310, %360  : i64
    %362 = llvm.mlir.constant(2 : index) : i64
    %363 = llvm.mul %315, %362  : i64
    %364 = llvm.add %361, %363  : i64
    %365 = llvm.mlir.constant(2 : index) : i64
    %366 = llvm.mul %320, %365  : i64
    %367 = llvm.add %364, %366  : i64
    %368 = llvm.add %367, %325  : i64
    %369 = llvm.getelementptr %359[%368] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %358, %369 : !llvm.ptr<i32>
    %370 = llvm.add %330, %329  : i64
    llvm.br ^bb51(%370 : i64)
  ^bb53:  // pred: ^bb51
    %371 = llvm.add %325, %324  : i64
    llvm.br ^bb49(%371 : i64)
  ^bb54:  // pred: ^bb49
    %372 = llvm.add %320, %319  : i64
    llvm.br ^bb47(%372 : i64)
  ^bb55:  // pred: ^bb47
    %373 = llvm.add %315, %314  : i64
    llvm.br ^bb45(%373 : i64)
  ^bb56:  // pred: ^bb45
    %374 = llvm.add %310, %309  : i64
    llvm.br ^bb43(%374 : i64)
  ^bb57:  // pred: ^bb43
    %375 = llvm.mlir.constant(2 : index) : i64
    %376 = llvm.mlir.constant(2 : index) : i64
    %377 = llvm.mlir.constant(2 : index) : i64
    %378 = llvm.mlir.constant(2 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mlir.constant(4 : index) : i64
    %381 = llvm.mlir.constant(8 : index) : i64
    %382 = llvm.mlir.constant(16 : index) : i64
    %383 = llvm.mlir.null : !llvm.ptr<i32>
    %384 = llvm.getelementptr %383[%382] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %385 = llvm.ptrtoint %384 : !llvm.ptr<i32> to i64
    %386 = llvm.mlir.constant(16 : index) : i64
    %387 = llvm.add %385, %386  : i64
    %388 = llvm.call @malloc(%387) : (i64) -> !llvm.ptr<i8>
    %389 = llvm.bitcast %388 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %390 = llvm.ptrtoint %389 : !llvm.ptr<i32> to i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.sub %386, %391  : i64
    %393 = llvm.add %390, %392  : i64
    %394 = llvm.urem %393, %386  : i64
    %395 = llvm.sub %393, %394  : i64
    %396 = llvm.inttoptr %395 : i64 to !llvm.ptr<i32>
    %397 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %398 = llvm.insertvalue %389, %397[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.insertvalue %396, %398[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.insertvalue %400, %399[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.insertvalue %375, %401[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.insertvalue %376, %402[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.insertvalue %377, %403[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.insertvalue %378, %404[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.insertvalue %381, %405[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.insertvalue %380, %406[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.insertvalue %378, %407[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.insertvalue %379, %408[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.mlir.constant(0 : index) : i64
    %411 = llvm.mlir.constant(2 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%410 : i64)
  ^bb58(%413: i64):  // 2 preds: ^bb57, ^bb68
    %414 = llvm.icmp "slt" %413, %411 : i64
    llvm.cond_br %414, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.mlir.constant(2 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%415 : i64)
  ^bb60(%418: i64):  // 2 preds: ^bb59, ^bb67
    %419 = llvm.icmp "slt" %418, %416 : i64
    llvm.cond_br %419, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %420 = llvm.mlir.constant(0 : index) : i64
    %421 = llvm.mlir.constant(2 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%420 : i64)
  ^bb62(%423: i64):  // 2 preds: ^bb61, ^bb66
    %424 = llvm.icmp "slt" %423, %421 : i64
    llvm.cond_br %424, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %425 = llvm.mlir.constant(0 : index) : i64
    %426 = llvm.mlir.constant(2 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%425 : i64)
  ^bb64(%428: i64):  // 2 preds: ^bb63, ^bb65
    %429 = llvm.icmp "slt" %428, %426 : i64
    llvm.cond_br %429, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %430 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %431 = llvm.add %423, %24  : i64
    %432 = llvm.getelementptr %430[%431] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %433 = llvm.load %432 : !llvm.ptr<i32>
    %434 = llvm.extractvalue %271[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.mlir.constant(4 : index) : i64
    %436 = llvm.mul %413, %435  : i64
    %437 = llvm.mlir.constant(2 : index) : i64
    %438 = llvm.mul %418, %437  : i64
    %439 = llvm.add %436, %438  : i64
    %440 = llvm.mlir.constant(2 : index) : i64
    %441 = llvm.mul %24, %440  : i64
    %442 = llvm.add %439, %441  : i64
    %443 = llvm.add %442, %428  : i64
    %444 = llvm.getelementptr %434[%443] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %445 = llvm.load %444 : !llvm.ptr<i32>
    %446 = llvm.sub %433, %445  : i32
    %447 = llvm.extractvalue %409[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.mlir.constant(8 : index) : i64
    %449 = llvm.mul %413, %448  : i64
    %450 = llvm.mlir.constant(4 : index) : i64
    %451 = llvm.mul %418, %450  : i64
    %452 = llvm.add %449, %451  : i64
    %453 = llvm.mlir.constant(2 : index) : i64
    %454 = llvm.mul %423, %453  : i64
    %455 = llvm.add %452, %454  : i64
    %456 = llvm.add %455, %428  : i64
    %457 = llvm.getelementptr %447[%456] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %446, %457 : !llvm.ptr<i32>
    %458 = llvm.add %428, %427  : i64
    llvm.br ^bb64(%458 : i64)
  ^bb66:  // pred: ^bb64
    %459 = llvm.add %423, %422  : i64
    llvm.br ^bb62(%459 : i64)
  ^bb67:  // pred: ^bb62
    %460 = llvm.add %418, %417  : i64
    llvm.br ^bb60(%460 : i64)
  ^bb68:  // pred: ^bb60
    %461 = llvm.add %413, %412  : i64
    llvm.br ^bb58(%461 : i64)
  ^bb69:  // pred: ^bb58
    %462 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %463 = llvm.insertvalue %62, %462[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %464 = llvm.insertvalue %236, %463[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %465 = llvm.insertvalue %409, %464[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %465 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>) attributes {input_names = ["v0_0", "v1_0"], llvm.emit_c_interface, output_names = ["v6_0", "v5_0", "v3_0"]} {
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
    %14 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %15 = llvm.extractvalue %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.extractvalue %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.extractvalue %14[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.extractvalue %14[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.extractvalue %14[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.extractvalue %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %15, %16, %17, %18, %19, %20, %21) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %22, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.getelementptr %0[%51] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %53 = llvm.load %52 : !llvm.ptr<ptr<i8>>
    %54 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %56 = llvm.call @omTensorGetDataPtr(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %58 = llvm.insertvalue %57, %55[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.insertvalue %57, %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mlir.constant(0 : i64) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %63 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %64 = llvm.mlir.constant(0 : i64) : i64
    %65 = llvm.getelementptr %62[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %61[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.getelementptr %63[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.getelementptr %62[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.getelementptr %63[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %77, %54 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %54) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>) -> ()
    %78 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %79 = llvm.extractvalue %78[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %80 = llvm.extractvalue %78[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %81 = llvm.extractvalue %78[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %82 = llvm.mlir.constant(3 : i64) : i64
    %83 = llvm.mlir.constant(24 : i64) : i64
    %84 = llvm.call @malloc(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.bitcast %84 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %86 = llvm.mlir.constant(5 : i64) : i64
    %87 = llvm.call @omTensorCreateUntyped(%86) : (i64) -> !llvm.ptr<i8>
    %88 = llvm.mlir.constant(1 : i64) : i64
    %89 = llvm.extractvalue %79[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %91 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %92 = llvm.bitcast %91 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%87, %88, %90, %92) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %93 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%87, %93) : (!llvm.ptr<i8>, i64) -> ()
    %94 = llvm.call @omTensorGetShape(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %95 = llvm.call @omTensorGetStrides(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %96 = llvm.mlir.constant(0 : i64) : i64
    %97 = llvm.extractvalue %79[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %98 = llvm.getelementptr %94[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.extractvalue %79[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %100 = llvm.getelementptr %95[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.mlir.constant(1 : i64) : i64
    %102 = llvm.extractvalue %79[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %103 = llvm.getelementptr %94[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.extractvalue %79[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %105 = llvm.getelementptr %95[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.mlir.constant(2 : i64) : i64
    %107 = llvm.extractvalue %79[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %108 = llvm.getelementptr %94[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.extractvalue %79[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %110 = llvm.getelementptr %95[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.mlir.constant(3 : i64) : i64
    %112 = llvm.extractvalue %79[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %113 = llvm.getelementptr %94[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.extractvalue %79[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %115 = llvm.getelementptr %95[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.mlir.constant(4 : i64) : i64
    %117 = llvm.extractvalue %79[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %118 = llvm.getelementptr %94[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.extractvalue %79[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %120 = llvm.getelementptr %95[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.mlir.constant(0 : i64) : i64
    %122 = llvm.getelementptr %85[%121] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %87, %122 : !llvm.ptr<ptr<i8>>
    %123 = llvm.mlir.constant(1 : i64) : i64
    %124 = llvm.call @omTensorCreateUntyped(%123) : (i64) -> !llvm.ptr<i8>
    %125 = llvm.mlir.constant(1 : i64) : i64
    %126 = llvm.extractvalue %80[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %127 = llvm.bitcast %126 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %128 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.bitcast %128 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%124, %125, %127, %129) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %130 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%124, %130) : (!llvm.ptr<i8>, i64) -> ()
    %131 = llvm.call @omTensorGetShape(%124) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %132 = llvm.call @omTensorGetStrides(%124) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %133 = llvm.mlir.constant(0 : i64) : i64
    %134 = llvm.extractvalue %80[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.getelementptr %131[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.extractvalue %80[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %137 = llvm.getelementptr %132[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.mlir.constant(1 : i64) : i64
    %139 = llvm.getelementptr %85[%138] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %124, %139 : !llvm.ptr<ptr<i8>>
    %140 = llvm.mlir.constant(4 : i64) : i64
    %141 = llvm.call @omTensorCreateUntyped(%140) : (i64) -> !llvm.ptr<i8>
    %142 = llvm.mlir.constant(1 : i64) : i64
    %143 = llvm.extractvalue %81[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.bitcast %143 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %145 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.bitcast %145 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%141, %142, %144, %146) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %147 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%141, %147) : (!llvm.ptr<i8>, i64) -> ()
    %148 = llvm.call @omTensorGetShape(%141) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %149 = llvm.call @omTensorGetStrides(%141) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %150 = llvm.mlir.constant(0 : i64) : i64
    %151 = llvm.extractvalue %81[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.getelementptr %148[%150] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.extractvalue %81[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.getelementptr %149[%150] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %153, %154 : !llvm.ptr<i64>
    %155 = llvm.mlir.constant(1 : i64) : i64
    %156 = llvm.extractvalue %81[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.getelementptr %148[%155] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %156, %157 : !llvm.ptr<i64>
    %158 = llvm.extractvalue %81[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.getelementptr %149[%155] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %158, %159 : !llvm.ptr<i64>
    %160 = llvm.mlir.constant(2 : i64) : i64
    %161 = llvm.extractvalue %81[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.getelementptr %148[%160] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %161, %162 : !llvm.ptr<i64>
    %163 = llvm.extractvalue %81[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.getelementptr %149[%160] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %163, %164 : !llvm.ptr<i64>
    %165 = llvm.mlir.constant(3 : i64) : i64
    %166 = llvm.extractvalue %81[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.getelementptr %148[%165] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %166, %167 : !llvm.ptr<i64>
    %168 = llvm.extractvalue %81[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.getelementptr %149[%165] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %168, %169 : !llvm.ptr<i64>
    %170 = llvm.mlir.constant(2 : i64) : i64
    %171 = llvm.getelementptr %85[%170] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %141, %171 : !llvm.ptr<ptr<i8>>
    %172 = llvm.call @omTensorListCreate(%85, %82, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %172 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<138 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<138 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<203 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<203 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

