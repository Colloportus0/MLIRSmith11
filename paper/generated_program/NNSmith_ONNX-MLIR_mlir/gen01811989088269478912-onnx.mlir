module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: !llvm.ptr<i32>, %arg14: !llvm.ptr<i32>, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v4_0", "v0_0"], llvm.emit_c_interface, output_names = ["v2_0", "v6_0", "v1_0"]} {
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
    %14 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %15 = llvm.insertvalue %arg13, %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg16, %17[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg20, %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg21, %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg18, %21[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg22, %22[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %arg19, %23[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.insertvalue %arg23, %24[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.constant(0 : i64) : i64
    %27 = llvm.mlir.constant(2147483647 : i32) : i32
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = llvm.mlir.constant(2 : index) : i64
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.mlir.constant(4 : index) : i64
    %36 = llvm.mlir.constant(4 : index) : i64
    %37 = llvm.mlir.constant(4 : index) : i64
    %38 = llvm.mlir.constant(4 : index) : i64
    %39 = llvm.mlir.null : !llvm.ptr<i32>
    %40 = llvm.getelementptr %39[%38] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %41 = llvm.ptrtoint %40 : !llvm.ptr<i32> to i64
    %42 = llvm.mlir.constant(16 : index) : i64
    %43 = llvm.add %41, %42  : i64
    %44 = llvm.call @malloc(%43) : (i64) -> !llvm.ptr<i8>
    %45 = llvm.bitcast %44 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %46 = llvm.ptrtoint %45 : !llvm.ptr<i32> to i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.sub %42, %47  : i64
    %49 = llvm.add %46, %48  : i64
    %50 = llvm.urem %49, %42  : i64
    %51 = llvm.sub %49, %50  : i64
    %52 = llvm.inttoptr %51 : i64 to !llvm.ptr<i32>
    %53 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %54 = llvm.insertvalue %45, %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.insertvalue %56, %55[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %58 = llvm.insertvalue %29, %57[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %59 = llvm.insertvalue %30, %58[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %60 = llvm.insertvalue %31, %59[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %61 = llvm.insertvalue %32, %60[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.insertvalue %33, %61[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %63 = llvm.insertvalue %37, %62[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.insertvalue %36, %63[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.insertvalue %35, %64[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %66 = llvm.insertvalue %33, %65[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %67 = llvm.insertvalue %34, %66[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%68 : i64)
  ^bb1(%71: i64):  // 2 preds: ^bb0, ^bb14
    %72 = llvm.icmp "slt" %71, %69 : i64
    llvm.cond_br %72, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%73 : i64)
  ^bb3(%76: i64):  // 2 preds: ^bb2, ^bb13
    %77 = llvm.icmp "slt" %76, %74 : i64
    llvm.cond_br %77, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%78 : i64)
  ^bb5(%81: i64):  // 2 preds: ^bb4, ^bb12
    %82 = llvm.icmp "slt" %81, %79 : i64
    llvm.cond_br %82, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%83 : i64)
  ^bb7(%86: i64):  // 2 preds: ^bb6, ^bb11
    %87 = llvm.icmp "slt" %86, %84 : i64
    llvm.cond_br %87, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%88 : i64)
  ^bb9(%91: i64):  // 2 preds: ^bb8, ^bb10
    %92 = llvm.icmp "slt" %91, %89 : i64
    llvm.cond_br %92, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %93 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(4 : index) : i64
    %95 = llvm.mul %76, %94  : i64
    %96 = llvm.mlir.constant(4 : index) : i64
    %97 = llvm.mul %81, %96  : i64
    %98 = llvm.add %95, %97  : i64
    %99 = llvm.mlir.constant(2 : index) : i64
    %100 = llvm.mul %86, %99  : i64
    %101 = llvm.add %98, %100  : i64
    %102 = llvm.add %101, %91  : i64
    %103 = llvm.getelementptr %93[%102] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %104 = llvm.load %103 : !llvm.ptr<i32>
    %105 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %106 = llvm.add %71, %76  : i64
    %107 = llvm.add %106, %81  : i64
    %108 = llvm.add %107, %28  : i64
    %109 = llvm.add %108, %28  : i64
    %110 = llvm.getelementptr %105[%109] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %111 = llvm.load %110 : !llvm.ptr<i32>
    %112 = llvm.icmp "slt" %104, %111 : i32
    %113 = llvm.select %112, %104, %111 : i1, i32
    %114 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %115 = llvm.mlir.constant(4 : index) : i64
    %116 = llvm.mul %71, %115  : i64
    %117 = llvm.mlir.constant(4 : index) : i64
    %118 = llvm.mul %76, %117  : i64
    %119 = llvm.add %116, %118  : i64
    %120 = llvm.mlir.constant(4 : index) : i64
    %121 = llvm.mul %81, %120  : i64
    %122 = llvm.add %119, %121  : i64
    %123 = llvm.mlir.constant(2 : index) : i64
    %124 = llvm.mul %86, %123  : i64
    %125 = llvm.add %122, %124  : i64
    %126 = llvm.add %125, %91  : i64
    %127 = llvm.getelementptr %114[%126] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %113, %127 : !llvm.ptr<i32>
    %128 = llvm.add %91, %90  : i64
    llvm.br ^bb9(%128 : i64)
  ^bb11:  // pred: ^bb9
    %129 = llvm.add %86, %85  : i64
    llvm.br ^bb7(%129 : i64)
  ^bb12:  // pred: ^bb7
    %130 = llvm.add %81, %80  : i64
    llvm.br ^bb5(%130 : i64)
  ^bb13:  // pred: ^bb5
    %131 = llvm.add %76, %75  : i64
    llvm.br ^bb3(%131 : i64)
  ^bb14:  // pred: ^bb3
    %132 = llvm.add %71, %70  : i64
    llvm.br ^bb1(%132 : i64)
  ^bb15:  // pred: ^bb1
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.mlir.constant(2 : index) : i64
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(4 : index) : i64
    %140 = llvm.mlir.constant(4 : index) : i64
    %141 = llvm.mlir.constant(4 : index) : i64
    %142 = llvm.mlir.constant(4 : index) : i64
    %143 = llvm.mlir.null : !llvm.ptr<i32>
    %144 = llvm.getelementptr %143[%142] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %145 = llvm.ptrtoint %144 : !llvm.ptr<i32> to i64
    %146 = llvm.mlir.constant(16 : index) : i64
    %147 = llvm.add %145, %146  : i64
    %148 = llvm.call @malloc(%147) : (i64) -> !llvm.ptr<i8>
    %149 = llvm.bitcast %148 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %150 = llvm.ptrtoint %149 : !llvm.ptr<i32> to i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.sub %146, %151  : i64
    %153 = llvm.add %150, %152  : i64
    %154 = llvm.urem %153, %146  : i64
    %155 = llvm.sub %153, %154  : i64
    %156 = llvm.inttoptr %155 : i64 to !llvm.ptr<i32>
    %157 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %158 = llvm.insertvalue %149, %157[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %159 = llvm.insertvalue %156, %158[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.insertvalue %160, %159[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %162 = llvm.insertvalue %133, %161[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %163 = llvm.insertvalue %134, %162[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %164 = llvm.insertvalue %135, %163[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %165 = llvm.insertvalue %136, %164[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %166 = llvm.insertvalue %137, %165[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %167 = llvm.insertvalue %141, %166[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %168 = llvm.insertvalue %140, %167[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %169 = llvm.insertvalue %139, %168[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %170 = llvm.insertvalue %137, %169[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %171 = llvm.insertvalue %138, %170[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%172 : i64)
  ^bb16(%175: i64):  // 2 preds: ^bb15, ^bb29
    %176 = llvm.icmp "slt" %175, %173 : i64
    llvm.cond_br %176, ^bb17, ^bb30
  ^bb17:  // pred: ^bb16
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%177 : i64)
  ^bb18(%180: i64):  // 2 preds: ^bb17, ^bb28
    %181 = llvm.icmp "slt" %180, %178 : i64
    llvm.cond_br %181, ^bb19, ^bb29
  ^bb19:  // pred: ^bb18
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%182 : i64)
  ^bb20(%185: i64):  // 2 preds: ^bb19, ^bb27
    %186 = llvm.icmp "slt" %185, %183 : i64
    llvm.cond_br %186, ^bb21, ^bb28
  ^bb21:  // pred: ^bb20
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.mlir.constant(2 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%187 : i64)
  ^bb22(%190: i64):  // 2 preds: ^bb21, ^bb26
    %191 = llvm.icmp "slt" %190, %188 : i64
    llvm.cond_br %191, ^bb23, ^bb27
  ^bb23:  // pred: ^bb22
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%192 : i64)
  ^bb24(%195: i64):  // 2 preds: ^bb23, ^bb25
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb25, ^bb26
  ^bb25:  // pred: ^bb24
    %197 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.mlir.constant(4 : index) : i64
    %199 = llvm.mul %180, %198  : i64
    %200 = llvm.mlir.constant(4 : index) : i64
    %201 = llvm.mul %185, %200  : i64
    %202 = llvm.add %199, %201  : i64
    %203 = llvm.mlir.constant(2 : index) : i64
    %204 = llvm.mul %190, %203  : i64
    %205 = llvm.add %202, %204  : i64
    %206 = llvm.add %205, %195  : i64
    %207 = llvm.getelementptr %197[%206] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %208 = llvm.load %207 : !llvm.ptr<i32>
    %209 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %210 = llvm.add %175, %180  : i64
    %211 = llvm.add %210, %185  : i64
    %212 = llvm.add %211, %28  : i64
    %213 = llvm.add %212, %28  : i64
    %214 = llvm.getelementptr %209[%213] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %215 = llvm.load %214 : !llvm.ptr<i32>
    %216 = llvm.sub %208, %215  : i32
    %217 = llvm.extractvalue %171[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %218 = llvm.mlir.constant(4 : index) : i64
    %219 = llvm.mul %175, %218  : i64
    %220 = llvm.mlir.constant(4 : index) : i64
    %221 = llvm.mul %180, %220  : i64
    %222 = llvm.add %219, %221  : i64
    %223 = llvm.mlir.constant(4 : index) : i64
    %224 = llvm.mul %185, %223  : i64
    %225 = llvm.add %222, %224  : i64
    %226 = llvm.mlir.constant(2 : index) : i64
    %227 = llvm.mul %190, %226  : i64
    %228 = llvm.add %225, %227  : i64
    %229 = llvm.add %228, %195  : i64
    %230 = llvm.getelementptr %217[%229] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %216, %230 : !llvm.ptr<i32>
    %231 = llvm.add %195, %194  : i64
    llvm.br ^bb24(%231 : i64)
  ^bb26:  // pred: ^bb24
    %232 = llvm.add %190, %189  : i64
    llvm.br ^bb22(%232 : i64)
  ^bb27:  // pred: ^bb22
    %233 = llvm.add %185, %184  : i64
    llvm.br ^bb20(%233 : i64)
  ^bb28:  // pred: ^bb20
    %234 = llvm.add %180, %179  : i64
    llvm.br ^bb18(%234 : i64)
  ^bb29:  // pred: ^bb18
    %235 = llvm.add %175, %174  : i64
    llvm.br ^bb16(%235 : i64)
  ^bb30:  // pred: ^bb16
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.mlir.constant(2 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.mlir.constant(2 : index) : i64
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mlir.constant(2 : index) : i64
    %244 = llvm.mlir.null : !llvm.ptr<i32>
    %245 = llvm.getelementptr %244[%243] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %246 = llvm.ptrtoint %245 : !llvm.ptr<i32> to i64
    %247 = llvm.mlir.constant(16 : index) : i64
    %248 = llvm.add %246, %247  : i64
    %249 = llvm.call @malloc(%248) : (i64) -> !llvm.ptr<i8>
    %250 = llvm.bitcast %249 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %251 = llvm.ptrtoint %250 : !llvm.ptr<i32> to i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.sub %247, %252  : i64
    %254 = llvm.add %251, %253  : i64
    %255 = llvm.urem %254, %247  : i64
    %256 = llvm.sub %254, %255  : i64
    %257 = llvm.inttoptr %256 : i64 to !llvm.ptr<i32>
    %258 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %259 = llvm.insertvalue %250, %258[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.insertvalue %257, %259[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.mlir.constant(0 : index) : i64
    %262 = llvm.insertvalue %261, %260[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.insertvalue %236, %262[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.insertvalue %237, %263[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.insertvalue %238, %264[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.insertvalue %239, %265[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.insertvalue %242, %266[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.insertvalue %241, %267[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.insertvalue %239, %268[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.insertvalue %240, %269[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.mlir.constant(0 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%271 : i64)
  ^bb31(%274: i64):  // 2 preds: ^bb30, ^bb41
    %275 = llvm.icmp "slt" %274, %272 : i64
    llvm.cond_br %275, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    %276 = llvm.mlir.constant(0 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%276 : i64)
  ^bb33(%279: i64):  // 2 preds: ^bb32, ^bb40
    %280 = llvm.icmp "slt" %279, %277 : i64
    llvm.cond_br %280, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    %281 = llvm.mlir.constant(0 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%281 : i64)
  ^bb35(%284: i64):  // 2 preds: ^bb34, ^bb39
    %285 = llvm.icmp "slt" %284, %282 : i64
    llvm.cond_br %285, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    %286 = llvm.mlir.constant(0 : index) : i64
    %287 = llvm.mlir.constant(2 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%286 : i64)
  ^bb37(%289: i64):  // 2 preds: ^bb36, ^bb38
    %290 = llvm.icmp "slt" %289, %287 : i64
    llvm.cond_br %290, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %291 = llvm.extractvalue %270[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.mlir.constant(2 : index) : i64
    %293 = llvm.mul %274, %292  : i64
    %294 = llvm.mlir.constant(2 : index) : i64
    %295 = llvm.mul %279, %294  : i64
    %296 = llvm.add %293, %295  : i64
    %297 = llvm.mlir.constant(2 : index) : i64
    %298 = llvm.mul %284, %297  : i64
    %299 = llvm.add %296, %298  : i64
    %300 = llvm.add %299, %289  : i64
    %301 = llvm.getelementptr %291[%300] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %27, %301 : !llvm.ptr<i32>
    %302 = llvm.add %289, %288  : i64
    llvm.br ^bb37(%302 : i64)
  ^bb39:  // pred: ^bb37
    %303 = llvm.add %284, %283  : i64
    llvm.br ^bb35(%303 : i64)
  ^bb40:  // pred: ^bb35
    %304 = llvm.add %279, %278  : i64
    llvm.br ^bb33(%304 : i64)
  ^bb41:  // pred: ^bb33
    %305 = llvm.add %274, %273  : i64
    llvm.br ^bb31(%305 : i64)
  ^bb42:  // pred: ^bb31
    %306 = llvm.mlir.constant(0 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%306 : i64)
  ^bb43(%309: i64):  // 2 preds: ^bb42, ^bb56
    %310 = llvm.icmp "slt" %309, %307 : i64
    llvm.cond_br %310, ^bb44, ^bb57
  ^bb44:  // pred: ^bb43
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%311 : i64)
  ^bb45(%314: i64):  // 2 preds: ^bb44, ^bb55
    %315 = llvm.icmp "slt" %314, %312 : i64
    llvm.cond_br %315, ^bb46, ^bb56
  ^bb46:  // pred: ^bb45
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%316 : i64)
  ^bb47(%319: i64):  // 2 preds: ^bb46, ^bb54
    %320 = llvm.icmp "slt" %319, %317 : i64
    llvm.cond_br %320, ^bb48, ^bb55
  ^bb48:  // pred: ^bb47
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%321 : i64)
  ^bb49(%324: i64):  // 2 preds: ^bb48, ^bb53
    %325 = llvm.icmp "slt" %324, %322 : i64
    llvm.cond_br %325, ^bb50, ^bb54
  ^bb50:  // pred: ^bb49
    %326 = llvm.mlir.constant(0 : index) : i64
    %327 = llvm.mlir.constant(2 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%326 : i64)
  ^bb51(%329: i64):  // 2 preds: ^bb50, ^bb52
    %330 = llvm.icmp "slt" %329, %327 : i64
    llvm.cond_br %330, ^bb52, ^bb53
  ^bb52:  // pred: ^bb51
    %331 = llvm.extractvalue %171[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %332 = llvm.mlir.constant(4 : index) : i64
    %333 = llvm.mul %309, %332  : i64
    %334 = llvm.mlir.constant(4 : index) : i64
    %335 = llvm.mul %314, %334  : i64
    %336 = llvm.add %333, %335  : i64
    %337 = llvm.mlir.constant(4 : index) : i64
    %338 = llvm.mul %319, %337  : i64
    %339 = llvm.add %336, %338  : i64
    %340 = llvm.mlir.constant(2 : index) : i64
    %341 = llvm.mul %324, %340  : i64
    %342 = llvm.add %339, %341  : i64
    %343 = llvm.add %342, %329  : i64
    %344 = llvm.getelementptr %331[%343] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %345 = llvm.load %344 : !llvm.ptr<i32>
    %346 = llvm.extractvalue %270[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.mlir.constant(2 : index) : i64
    %348 = llvm.mul %309, %347  : i64
    %349 = llvm.mlir.constant(2 : index) : i64
    %350 = llvm.mul %314, %349  : i64
    %351 = llvm.add %348, %350  : i64
    %352 = llvm.mlir.constant(2 : index) : i64
    %353 = llvm.mul %319, %352  : i64
    %354 = llvm.add %351, %353  : i64
    %355 = llvm.add %354, %329  : i64
    %356 = llvm.getelementptr %346[%355] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %357 = llvm.load %356 : !llvm.ptr<i32>
    %358 = llvm.icmp "slt" %357, %345 : i32
    %359 = llvm.select %358, %357, %345 : i1, i32
    %360 = llvm.extractvalue %270[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.mlir.constant(2 : index) : i64
    %362 = llvm.mul %309, %361  : i64
    %363 = llvm.mlir.constant(2 : index) : i64
    %364 = llvm.mul %314, %363  : i64
    %365 = llvm.add %362, %364  : i64
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mul %319, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.add %368, %329  : i64
    %370 = llvm.getelementptr %360[%369] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %359, %370 : !llvm.ptr<i32>
    %371 = llvm.add %329, %328  : i64
    llvm.br ^bb51(%371 : i64)
  ^bb53:  // pred: ^bb51
    %372 = llvm.add %324, %323  : i64
    llvm.br ^bb49(%372 : i64)
  ^bb54:  // pred: ^bb49
    %373 = llvm.add %319, %318  : i64
    llvm.br ^bb47(%373 : i64)
  ^bb55:  // pred: ^bb47
    %374 = llvm.add %314, %313  : i64
    llvm.br ^bb45(%374 : i64)
  ^bb56:  // pred: ^bb45
    %375 = llvm.add %309, %308  : i64
    llvm.br ^bb43(%375 : i64)
  ^bb57:  // pred: ^bb43
    %376 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %377 = llvm.extractvalue %270[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.extractvalue %270[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.insertvalue %377, %376[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %380 = llvm.insertvalue %378, %379[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %381 = llvm.mlir.constant(0 : index) : i64
    %382 = llvm.insertvalue %381, %380[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %383 = llvm.mlir.constant(2 : index) : i64
    %384 = llvm.insertvalue %383, %382[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.insertvalue %385, %384[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.mlir.constant(1 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.mlir.constant(2 : index) : i64
    %393 = llvm.mlir.constant(2 : index) : i64
    %394 = llvm.mlir.constant(2 : index) : i64
    %395 = llvm.mlir.null : !llvm.ptr<i64>
    %396 = llvm.getelementptr %395[%394] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %397 = llvm.ptrtoint %396 : !llvm.ptr<i64> to i64
    %398 = llvm.mlir.constant(16 : index) : i64
    %399 = llvm.add %397, %398  : i64
    %400 = llvm.call @malloc(%399) : (i64) -> !llvm.ptr<i8>
    %401 = llvm.bitcast %400 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %402 = llvm.ptrtoint %401 : !llvm.ptr<i64> to i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.sub %398, %403  : i64
    %405 = llvm.add %402, %404  : i64
    %406 = llvm.urem %405, %398  : i64
    %407 = llvm.sub %405, %406  : i64
    %408 = llvm.inttoptr %407 : i64 to !llvm.ptr<i64>
    %409 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %410 = llvm.insertvalue %401, %409[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.insertvalue %408, %410[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.mlir.constant(0 : index) : i64
    %413 = llvm.insertvalue %412, %411[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.insertvalue %387, %413[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.insertvalue %388, %414[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.insertvalue %389, %415[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.insertvalue %390, %416[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.insertvalue %393, %417[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.insertvalue %392, %418[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.insertvalue %390, %419[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.insertvalue %391, %420[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.mlir.constant(0 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%422 : i64)
  ^bb58(%425: i64):  // 2 preds: ^bb57, ^bb68
    %426 = llvm.icmp "slt" %425, %423 : i64
    llvm.cond_br %426, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %427 = llvm.mlir.constant(0 : index) : i64
    %428 = llvm.mlir.constant(1 : index) : i64
    %429 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%427 : i64)
  ^bb60(%430: i64):  // 2 preds: ^bb59, ^bb67
    %431 = llvm.icmp "slt" %430, %428 : i64
    llvm.cond_br %431, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %432 = llvm.mlir.constant(0 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%432 : i64)
  ^bb62(%435: i64):  // 2 preds: ^bb61, ^bb66
    %436 = llvm.icmp "slt" %435, %433 : i64
    llvm.cond_br %436, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %437 = llvm.mlir.constant(0 : index) : i64
    %438 = llvm.mlir.constant(2 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%437 : i64)
  ^bb64(%440: i64):  // 2 preds: ^bb63, ^bb65
    %441 = llvm.icmp "slt" %440, %438 : i64
    llvm.cond_br %441, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %442 = llvm.extractvalue %270[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.mlir.constant(2 : index) : i64
    %444 = llvm.mul %425, %443  : i64
    %445 = llvm.mlir.constant(2 : index) : i64
    %446 = llvm.mul %430, %445  : i64
    %447 = llvm.add %444, %446  : i64
    %448 = llvm.mlir.constant(2 : index) : i64
    %449 = llvm.mul %435, %448  : i64
    %450 = llvm.add %447, %449  : i64
    %451 = llvm.add %450, %440  : i64
    %452 = llvm.getelementptr %442[%451] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %453 = llvm.load %452 : !llvm.ptr<i32>
    %454 = llvm.sext %453 : i32 to i64
    %455 = llvm.extractvalue %421[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %456 = llvm.mlir.constant(2 : index) : i64
    %457 = llvm.mul %425, %456  : i64
    %458 = llvm.mlir.constant(2 : index) : i64
    %459 = llvm.mul %430, %458  : i64
    %460 = llvm.add %457, %459  : i64
    %461 = llvm.mlir.constant(2 : index) : i64
    %462 = llvm.mul %435, %461  : i64
    %463 = llvm.add %460, %462  : i64
    %464 = llvm.add %463, %440  : i64
    %465 = llvm.getelementptr %455[%464] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %454, %465 : !llvm.ptr<i64>
    %466 = llvm.add %440, %439  : i64
    llvm.br ^bb64(%466 : i64)
  ^bb66:  // pred: ^bb64
    %467 = llvm.add %435, %434  : i64
    llvm.br ^bb62(%467 : i64)
  ^bb67:  // pred: ^bb62
    %468 = llvm.add %430, %429  : i64
    llvm.br ^bb60(%468 : i64)
  ^bb68:  // pred: ^bb60
    %469 = llvm.add %425, %424  : i64
    llvm.br ^bb58(%469 : i64)
  ^bb69:  // pred: ^bb58
    %470 = llvm.mlir.constant(1 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.mlir.null : !llvm.ptr<i64>
    %475 = llvm.getelementptr %474[%470] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %476 = llvm.ptrtoint %475 : !llvm.ptr<i64> to i64
    %477 = llvm.mlir.constant(16 : index) : i64
    %478 = llvm.add %476, %477  : i64
    %479 = llvm.call @malloc(%478) : (i64) -> !llvm.ptr<i8>
    %480 = llvm.bitcast %479 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %481 = llvm.ptrtoint %480 : !llvm.ptr<i64> to i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.sub %477, %482  : i64
    %484 = llvm.add %481, %483  : i64
    %485 = llvm.urem %484, %477  : i64
    %486 = llvm.sub %484, %485  : i64
    %487 = llvm.inttoptr %486 : i64 to !llvm.ptr<i64>
    %488 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %489 = llvm.insertvalue %480, %488[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %490 = llvm.insertvalue %487, %489[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %491 = llvm.mlir.constant(0 : index) : i64
    %492 = llvm.insertvalue %491, %490[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %493 = llvm.insertvalue %470, %492[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %494 = llvm.insertvalue %471, %493[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %495 = llvm.insertvalue %472, %494[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %496 = llvm.insertvalue %471, %495[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %497 = llvm.insertvalue %472, %496[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %498 = llvm.insertvalue %473, %497[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %499 = llvm.mlir.constant(0 : index) : i64
    %500 = llvm.mlir.constant(1 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%499 : i64)
  ^bb70(%502: i64):  // 2 preds: ^bb69, ^bb77
    %503 = llvm.icmp "slt" %502, %500 : i64
    llvm.cond_br %503, ^bb71, ^bb78
  ^bb71:  // pred: ^bb70
    %504 = llvm.mlir.constant(0 : index) : i64
    %505 = llvm.mlir.constant(1 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%504 : i64)
  ^bb72(%507: i64):  // 2 preds: ^bb71, ^bb76
    %508 = llvm.icmp "slt" %507, %505 : i64
    llvm.cond_br %508, ^bb73, ^bb77
  ^bb73:  // pred: ^bb72
    %509 = llvm.mlir.constant(0 : index) : i64
    %510 = llvm.mlir.constant(1 : index) : i64
    %511 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%509 : i64)
  ^bb74(%512: i64):  // 2 preds: ^bb73, ^bb75
    %513 = llvm.icmp "slt" %512, %510 : i64
    llvm.cond_br %513, ^bb75, ^bb76
  ^bb75:  // pred: ^bb74
    %514 = llvm.extractvalue %498[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %515 = llvm.add %502, %507  : i64
    %516 = llvm.add %515, %512  : i64
    %517 = llvm.getelementptr %514[%516] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %26, %517 : !llvm.ptr<i64>
    %518 = llvm.add %512, %511  : i64
    llvm.br ^bb74(%518 : i64)
  ^bb76:  // pred: ^bb74
    %519 = llvm.add %507, %506  : i64
    llvm.br ^bb72(%519 : i64)
  ^bb77:  // pred: ^bb72
    %520 = llvm.add %502, %501  : i64
    llvm.br ^bb70(%520 : i64)
  ^bb78:  // pred: ^bb70
    %521 = llvm.mlir.constant(0 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%521 : i64)
  ^bb79(%524: i64):  // 2 preds: ^bb78, ^bb89
    %525 = llvm.icmp "slt" %524, %522 : i64
    llvm.cond_br %525, ^bb80, ^bb90
  ^bb80:  // pred: ^bb79
    %526 = llvm.mlir.constant(0 : index) : i64
    %527 = llvm.mlir.constant(1 : index) : i64
    %528 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%526 : i64)
  ^bb81(%529: i64):  // 2 preds: ^bb80, ^bb88
    %530 = llvm.icmp "slt" %529, %527 : i64
    llvm.cond_br %530, ^bb82, ^bb89
  ^bb82:  // pred: ^bb81
    %531 = llvm.mlir.constant(0 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb83(%531 : i64)
  ^bb83(%534: i64):  // 2 preds: ^bb82, ^bb87
    %535 = llvm.icmp "slt" %534, %532 : i64
    llvm.cond_br %535, ^bb84, ^bb88
  ^bb84:  // pred: ^bb83
    %536 = llvm.mlir.constant(0 : index) : i64
    %537 = llvm.mlir.constant(2 : index) : i64
    %538 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%536 : i64)
  ^bb85(%539: i64):  // 2 preds: ^bb84, ^bb86
    %540 = llvm.icmp "slt" %539, %537 : i64
    llvm.cond_br %540, ^bb86, ^bb87
  ^bb86:  // pred: ^bb85
    %541 = llvm.extractvalue %421[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %542 = llvm.mlir.constant(2 : index) : i64
    %543 = llvm.mul %524, %542  : i64
    %544 = llvm.mlir.constant(2 : index) : i64
    %545 = llvm.mul %529, %544  : i64
    %546 = llvm.add %543, %545  : i64
    %547 = llvm.mlir.constant(2 : index) : i64
    %548 = llvm.mul %534, %547  : i64
    %549 = llvm.add %546, %548  : i64
    %550 = llvm.add %549, %539  : i64
    %551 = llvm.getelementptr %541[%550] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %552 = llvm.load %551 : !llvm.ptr<i64>
    %553 = llvm.extractvalue %498[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %554 = llvm.add %524, %529  : i64
    %555 = llvm.add %554, %534  : i64
    %556 = llvm.getelementptr %553[%555] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %557 = llvm.load %556 : !llvm.ptr<i64>
    %558 = llvm.add %557, %552  : i64
    %559 = llvm.extractvalue %498[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %560 = llvm.add %524, %529  : i64
    %561 = llvm.add %560, %534  : i64
    %562 = llvm.getelementptr %559[%561] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %558, %562 : !llvm.ptr<i64>
    %563 = llvm.add %539, %538  : i64
    llvm.br ^bb85(%563 : i64)
  ^bb87:  // pred: ^bb85
    %564 = llvm.add %534, %533  : i64
    llvm.br ^bb83(%564 : i64)
  ^bb88:  // pred: ^bb83
    %565 = llvm.add %529, %528  : i64
    llvm.br ^bb81(%565 : i64)
  ^bb89:  // pred: ^bb81
    %566 = llvm.add %524, %523  : i64
    llvm.br ^bb79(%566 : i64)
  ^bb90:  // pred: ^bb79
    %567 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    %568 = llvm.insertvalue %67, %567[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %569 = llvm.insertvalue %386, %568[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %570 = llvm.insertvalue %498, %569[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %570 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0", "v0_0"], llvm.emit_c_interface, output_names = ["v2_0", "v6_0", "v1_0"]} {
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
    %14 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %15 = llvm.extractvalue %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %14[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %14[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %14[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %14[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %14[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.extractvalue %14[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.extractvalue %14[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %26, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    %54 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %56 = llvm.call @omTensorGetDataPtr(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %58 = llvm.insertvalue %57, %55[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %57, %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(0 : i64) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %63 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %64 = llvm.mlir.constant(0 : i64) : i64
    %65 = llvm.getelementptr %62[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %61[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %63[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.getelementptr %62[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %63[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.getelementptr %62[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %63[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(3 : i64) : i64
    %86 = llvm.getelementptr %62[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %87 = llvm.load %86 : !llvm.ptr<i64>
    %88 = llvm.insertvalue %87, %84[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %63[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %90 = llvm.load %89 : !llvm.ptr<i64>
    %91 = llvm.insertvalue %90, %88[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %91, %54 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %54) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %92 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %93 = llvm.extractvalue %92[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %94 = llvm.extractvalue %92[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %95 = llvm.extractvalue %92[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %96 = llvm.mlir.constant(3 : i64) : i64
    %97 = llvm.mlir.constant(24 : i64) : i64
    %98 = llvm.call @malloc(%97) : (i64) -> !llvm.ptr<i8>
    %99 = llvm.bitcast %98 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %100 = llvm.mlir.constant(5 : i64) : i64
    %101 = llvm.call @omTensorCreateUntyped(%100) : (i64) -> !llvm.ptr<i8>
    %102 = llvm.mlir.constant(1 : i64) : i64
    %103 = llvm.extractvalue %93[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %104 = llvm.bitcast %103 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %105 = llvm.extractvalue %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %106 = llvm.bitcast %105 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%101, %102, %104, %106) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %107 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%101, %107) : (!llvm.ptr<i8>, i64) -> ()
    %108 = llvm.call @omTensorGetShape(%101) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %109 = llvm.call @omTensorGetStrides(%101) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %110 = llvm.mlir.constant(0 : i64) : i64
    %111 = llvm.extractvalue %93[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %112 = llvm.getelementptr %108[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %93[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %114 = llvm.getelementptr %109[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(1 : i64) : i64
    %116 = llvm.extractvalue %93[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %117 = llvm.getelementptr %108[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.extractvalue %93[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %119 = llvm.getelementptr %109[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.mlir.constant(2 : i64) : i64
    %121 = llvm.extractvalue %93[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %122 = llvm.getelementptr %108[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.extractvalue %93[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %124 = llvm.getelementptr %109[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.mlir.constant(3 : i64) : i64
    %126 = llvm.extractvalue %93[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %127 = llvm.getelementptr %108[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %127 : !llvm.ptr<i64>
    %128 = llvm.extractvalue %93[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %129 = llvm.getelementptr %109[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.mlir.constant(4 : i64) : i64
    %131 = llvm.extractvalue %93[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %132 = llvm.getelementptr %108[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %131, %132 : !llvm.ptr<i64>
    %133 = llvm.extractvalue %93[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %134 = llvm.getelementptr %109[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.mlir.constant(0 : i64) : i64
    %136 = llvm.getelementptr %99[%135] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %101, %136 : !llvm.ptr<ptr<i8>>
    %137 = llvm.mlir.constant(1 : i64) : i64
    %138 = llvm.call @omTensorCreateUntyped(%137) : (i64) -> !llvm.ptr<i8>
    %139 = llvm.mlir.constant(1 : i64) : i64
    %140 = llvm.extractvalue %94[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = llvm.bitcast %140 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %142 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %143 = llvm.bitcast %142 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%138, %139, %141, %143) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %144 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%138, %144) : (!llvm.ptr<i8>, i64) -> ()
    %145 = llvm.call @omTensorGetShape(%138) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %146 = llvm.call @omTensorGetStrides(%138) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %147 = llvm.mlir.constant(0 : i64) : i64
    %148 = llvm.extractvalue %94[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.getelementptr %145[%147] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %148, %149 : !llvm.ptr<i64>
    %150 = llvm.extractvalue %94[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %151 = llvm.getelementptr %146[%147] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.mlir.constant(1 : i64) : i64
    %153 = llvm.getelementptr %99[%152] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %138, %153 : !llvm.ptr<ptr<i8>>
    %154 = llvm.mlir.constant(3 : i64) : i64
    %155 = llvm.call @omTensorCreateUntyped(%154) : (i64) -> !llvm.ptr<i8>
    %156 = llvm.mlir.constant(1 : i64) : i64
    %157 = llvm.extractvalue %95[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %158 = llvm.bitcast %157 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %159 = llvm.extractvalue %95[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %160 = llvm.bitcast %159 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%155, %156, %158, %160) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %161 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%155, %161) : (!llvm.ptr<i8>, i64) -> ()
    %162 = llvm.call @omTensorGetShape(%155) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %163 = llvm.call @omTensorGetStrides(%155) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %164 = llvm.mlir.constant(0 : i64) : i64
    %165 = llvm.extractvalue %95[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %166 = llvm.getelementptr %162[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %165, %166 : !llvm.ptr<i64>
    %167 = llvm.extractvalue %95[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %168 = llvm.getelementptr %163[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %167, %168 : !llvm.ptr<i64>
    %169 = llvm.mlir.constant(1 : i64) : i64
    %170 = llvm.extractvalue %95[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %171 = llvm.getelementptr %162[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %170, %171 : !llvm.ptr<i64>
    %172 = llvm.extractvalue %95[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %173 = llvm.getelementptr %163[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %172, %173 : !llvm.ptr<i64>
    %174 = llvm.mlir.constant(2 : i64) : i64
    %175 = llvm.extractvalue %95[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %176 = llvm.getelementptr %162[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %175, %176 : !llvm.ptr<i64>
    %177 = llvm.extractvalue %95[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %178 = llvm.getelementptr %163[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %177, %178 : !llvm.ptr<i64>
    %179 = llvm.mlir.constant(2 : i64) : i64
    %180 = llvm.getelementptr %99[%179] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %155, %180 : !llvm.ptr<ptr<i8>>
    %181 = llvm.call @omTensorListCreate(%99, %96, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %181 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<146 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<146 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<199 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<199 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

