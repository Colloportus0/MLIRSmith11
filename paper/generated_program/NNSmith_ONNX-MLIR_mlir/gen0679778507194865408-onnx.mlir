module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2 , 2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: !llvm.ptr<i32>, %arg14: !llvm.ptr<i32>, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v6_0", "v0_0"], llvm.emit_c_interface, output_names = ["v1_0"]} {
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
    %26 = llvm.mlir.constant(-2147483648 : i32) : i32
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.mlir.constant(2 : index) : i64
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = llvm.mlir.constant(2 : index) : i64
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.constant(4 : index) : i64
    %35 = llvm.mlir.constant(8 : index) : i64
    %36 = llvm.mlir.constant(16 : index) : i64
    %37 = llvm.mlir.constant(16 : index) : i64
    %38 = llvm.mlir.null : !llvm.ptr<i32>
    %39 = llvm.getelementptr %38[%37] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %40 = llvm.ptrtoint %39 : !llvm.ptr<i32> to i64
    %41 = llvm.mlir.constant(16 : index) : i64
    %42 = llvm.add %40, %41  : i64
    %43 = llvm.call @malloc(%42) : (i64) -> !llvm.ptr<i8>
    %44 = llvm.bitcast %43 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %45 = llvm.ptrtoint %44 : !llvm.ptr<i32> to i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.sub %41, %46  : i64
    %48 = llvm.add %45, %47  : i64
    %49 = llvm.urem %48, %41  : i64
    %50 = llvm.sub %48, %49  : i64
    %51 = llvm.inttoptr %50 : i64 to !llvm.ptr<i32>
    %52 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %53 = llvm.insertvalue %44, %52[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %54 = llvm.insertvalue %51, %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.insertvalue %55, %54[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %57 = llvm.insertvalue %28, %56[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %58 = llvm.insertvalue %29, %57[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %59 = llvm.insertvalue %30, %58[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %60 = llvm.insertvalue %31, %59[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %61 = llvm.insertvalue %32, %60[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.insertvalue %36, %61[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %63 = llvm.insertvalue %35, %62[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.insertvalue %34, %63[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.insertvalue %32, %64[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %66 = llvm.insertvalue %33, %65[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%67 : i64)
  ^bb1(%70: i64):  // 2 preds: ^bb0, ^bb14
    %71 = llvm.icmp "slt" %70, %68 : i64
    llvm.cond_br %71, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.mlir.constant(2 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%72 : i64)
  ^bb3(%75: i64):  // 2 preds: ^bb2, ^bb13
    %76 = llvm.icmp "slt" %75, %73 : i64
    llvm.cond_br %76, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.mlir.constant(2 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%77 : i64)
  ^bb5(%80: i64):  // 2 preds: ^bb4, ^bb12
    %81 = llvm.icmp "slt" %80, %78 : i64
    llvm.cond_br %81, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%82 : i64)
  ^bb7(%85: i64):  // 2 preds: ^bb6, ^bb11
    %86 = llvm.icmp "slt" %85, %83 : i64
    llvm.cond_br %86, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.mlir.constant(2 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%87 : i64)
  ^bb9(%90: i64):  // 2 preds: ^bb8, ^bb10
    %91 = llvm.icmp "slt" %90, %88 : i64
    llvm.cond_br %91, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %92 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.add %27, %27  : i64
    %94 = llvm.add %93, %27  : i64
    %95 = llvm.add %94, %27  : i64
    %96 = llvm.getelementptr %92[%95] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %97 = llvm.load %96 : !llvm.ptr<i32>
    %98 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %99 = llvm.mlir.constant(16 : index) : i64
    %100 = llvm.mul %70, %99  : i64
    %101 = llvm.mlir.constant(8 : index) : i64
    %102 = llvm.mul %75, %101  : i64
    %103 = llvm.add %100, %102  : i64
    %104 = llvm.mlir.constant(4 : index) : i64
    %105 = llvm.mul %80, %104  : i64
    %106 = llvm.add %103, %105  : i64
    %107 = llvm.mlir.constant(2 : index) : i64
    %108 = llvm.mul %85, %107  : i64
    %109 = llvm.add %106, %108  : i64
    %110 = llvm.add %109, %90  : i64
    %111 = llvm.getelementptr %98[%110] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %112 = llvm.load %111 : !llvm.ptr<i32>
    %113 = llvm.mul %97, %112  : i32
    %114 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %115 = llvm.mlir.constant(16 : index) : i64
    %116 = llvm.mul %70, %115  : i64
    %117 = llvm.mlir.constant(8 : index) : i64
    %118 = llvm.mul %75, %117  : i64
    %119 = llvm.add %116, %118  : i64
    %120 = llvm.mlir.constant(4 : index) : i64
    %121 = llvm.mul %80, %120  : i64
    %122 = llvm.add %119, %121  : i64
    %123 = llvm.mlir.constant(2 : index) : i64
    %124 = llvm.mul %85, %123  : i64
    %125 = llvm.add %122, %124  : i64
    %126 = llvm.add %125, %90  : i64
    %127 = llvm.getelementptr %114[%126] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %113, %127 : !llvm.ptr<i32>
    %128 = llvm.add %90, %89  : i64
    llvm.br ^bb9(%128 : i64)
  ^bb11:  // pred: ^bb9
    %129 = llvm.add %85, %84  : i64
    llvm.br ^bb7(%129 : i64)
  ^bb12:  // pred: ^bb7
    %130 = llvm.add %80, %79  : i64
    llvm.br ^bb5(%130 : i64)
  ^bb13:  // pred: ^bb5
    %131 = llvm.add %75, %74  : i64
    llvm.br ^bb3(%131 : i64)
  ^bb14:  // pred: ^bb3
    %132 = llvm.add %70, %69  : i64
    llvm.br ^bb1(%132 : i64)
  ^bb15:  // pred: ^bb1
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mlir.constant(2 : index) : i64
    %136 = llvm.mlir.constant(2 : index) : i64
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(4 : index) : i64
    %140 = llvm.mlir.constant(8 : index) : i64
    %141 = llvm.mlir.constant(16 : index) : i64
    %142 = llvm.mlir.constant(16 : index) : i64
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
    %178 = llvm.mlir.constant(2 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%177 : i64)
  ^bb18(%180: i64):  // 2 preds: ^bb17, ^bb28
    %181 = llvm.icmp "slt" %180, %178 : i64
    llvm.cond_br %181, ^bb19, ^bb29
  ^bb19:  // pred: ^bb18
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(2 : index) : i64
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
    %197 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %198 = llvm.mlir.constant(16 : index) : i64
    %199 = llvm.mul %175, %198  : i64
    %200 = llvm.mlir.constant(8 : index) : i64
    %201 = llvm.mul %180, %200  : i64
    %202 = llvm.add %199, %201  : i64
    %203 = llvm.mlir.constant(4 : index) : i64
    %204 = llvm.mul %185, %203  : i64
    %205 = llvm.add %202, %204  : i64
    %206 = llvm.mlir.constant(2 : index) : i64
    %207 = llvm.mul %190, %206  : i64
    %208 = llvm.add %205, %207  : i64
    %209 = llvm.add %208, %195  : i64
    %210 = llvm.getelementptr %197[%209] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %211 = llvm.load %210 : !llvm.ptr<i32>
    %212 = llvm.mlir.constant(false) : i1
    %213 = "llvm.intr.abs"(%211, %212) : (i32, i1) -> i32
    %214 = llvm.extractvalue %171[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %215 = llvm.mlir.constant(16 : index) : i64
    %216 = llvm.mul %175, %215  : i64
    %217 = llvm.mlir.constant(8 : index) : i64
    %218 = llvm.mul %180, %217  : i64
    %219 = llvm.add %216, %218  : i64
    %220 = llvm.mlir.constant(4 : index) : i64
    %221 = llvm.mul %185, %220  : i64
    %222 = llvm.add %219, %221  : i64
    %223 = llvm.mlir.constant(2 : index) : i64
    %224 = llvm.mul %190, %223  : i64
    %225 = llvm.add %222, %224  : i64
    %226 = llvm.add %225, %195  : i64
    %227 = llvm.getelementptr %214[%226] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %213, %227 : !llvm.ptr<i32>
    %228 = llvm.add %195, %194  : i64
    llvm.br ^bb24(%228 : i64)
  ^bb26:  // pred: ^bb24
    %229 = llvm.add %190, %189  : i64
    llvm.br ^bb22(%229 : i64)
  ^bb27:  // pred: ^bb22
    %230 = llvm.add %185, %184  : i64
    llvm.br ^bb20(%230 : i64)
  ^bb28:  // pred: ^bb20
    %231 = llvm.add %180, %179  : i64
    llvm.br ^bb18(%231 : i64)
  ^bb29:  // pred: ^bb18
    %232 = llvm.add %175, %174  : i64
    llvm.br ^bb16(%232 : i64)
  ^bb30:  // pred: ^bb16
    %233 = llvm.mlir.constant(1 : index) : i64
    %234 = llvm.mlir.constant(2 : index) : i64
    %235 = llvm.mlir.constant(2 : index) : i64
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(4 : index) : i64
    %239 = llvm.mlir.constant(8 : index) : i64
    %240 = llvm.mlir.constant(8 : index) : i64
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
    %260 = llvm.insertvalue %233, %259[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.insertvalue %234, %260[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.insertvalue %235, %261[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.insertvalue %236, %262[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.insertvalue %239, %263[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.insertvalue %238, %264[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.insertvalue %236, %265[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.insertvalue %237, %266[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%268 : i64)
  ^bb31(%271: i64):  // 2 preds: ^bb30, ^bb41
    %272 = llvm.icmp "slt" %271, %269 : i64
    llvm.cond_br %272, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.mlir.constant(2 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%273 : i64)
  ^bb33(%276: i64):  // 2 preds: ^bb32, ^bb40
    %277 = llvm.icmp "slt" %276, %274 : i64
    llvm.cond_br %277, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(2 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%278 : i64)
  ^bb35(%281: i64):  // 2 preds: ^bb34, ^bb39
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%283 : i64)
  ^bb37(%286: i64):  // 2 preds: ^bb36, ^bb38
    %287 = llvm.icmp "slt" %286, %284 : i64
    llvm.cond_br %287, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %288 = llvm.extractvalue %267[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.mlir.constant(8 : index) : i64
    %290 = llvm.mul %271, %289  : i64
    %291 = llvm.mlir.constant(4 : index) : i64
    %292 = llvm.mul %276, %291  : i64
    %293 = llvm.add %290, %292  : i64
    %294 = llvm.mlir.constant(2 : index) : i64
    %295 = llvm.mul %281, %294  : i64
    %296 = llvm.add %293, %295  : i64
    %297 = llvm.add %296, %286  : i64
    %298 = llvm.getelementptr %288[%297] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %26, %298 : !llvm.ptr<i32>
    %299 = llvm.add %286, %285  : i64
    llvm.br ^bb37(%299 : i64)
  ^bb39:  // pred: ^bb37
    %300 = llvm.add %281, %280  : i64
    llvm.br ^bb35(%300 : i64)
  ^bb40:  // pred: ^bb35
    %301 = llvm.add %276, %275  : i64
    llvm.br ^bb33(%301 : i64)
  ^bb41:  // pred: ^bb33
    %302 = llvm.add %271, %270  : i64
    llvm.br ^bb31(%302 : i64)
  ^bb42:  // pred: ^bb31
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%303 : i64)
  ^bb43(%306: i64):  // 2 preds: ^bb42, ^bb56
    %307 = llvm.icmp "slt" %306, %304 : i64
    llvm.cond_br %307, ^bb44, ^bb57
  ^bb44:  // pred: ^bb43
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.mlir.constant(2 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%308 : i64)
  ^bb45(%311: i64):  // 2 preds: ^bb44, ^bb55
    %312 = llvm.icmp "slt" %311, %309 : i64
    llvm.cond_br %312, ^bb46, ^bb56
  ^bb46:  // pred: ^bb45
    %313 = llvm.mlir.constant(0 : index) : i64
    %314 = llvm.mlir.constant(2 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%313 : i64)
  ^bb47(%316: i64):  // 2 preds: ^bb46, ^bb54
    %317 = llvm.icmp "slt" %316, %314 : i64
    llvm.cond_br %317, ^bb48, ^bb55
  ^bb48:  // pred: ^bb47
    %318 = llvm.mlir.constant(0 : index) : i64
    %319 = llvm.mlir.constant(2 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%318 : i64)
  ^bb49(%321: i64):  // 2 preds: ^bb48, ^bb53
    %322 = llvm.icmp "slt" %321, %319 : i64
    llvm.cond_br %322, ^bb50, ^bb54
  ^bb50:  // pred: ^bb49
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.mlir.constant(2 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%323 : i64)
  ^bb51(%326: i64):  // 2 preds: ^bb50, ^bb52
    %327 = llvm.icmp "slt" %326, %324 : i64
    llvm.cond_br %327, ^bb52, ^bb53
  ^bb52:  // pred: ^bb51
    %328 = llvm.extractvalue %171[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %329 = llvm.mlir.constant(16 : index) : i64
    %330 = llvm.mul %306, %329  : i64
    %331 = llvm.mlir.constant(8 : index) : i64
    %332 = llvm.mul %311, %331  : i64
    %333 = llvm.add %330, %332  : i64
    %334 = llvm.mlir.constant(4 : index) : i64
    %335 = llvm.mul %316, %334  : i64
    %336 = llvm.add %333, %335  : i64
    %337 = llvm.mlir.constant(2 : index) : i64
    %338 = llvm.mul %321, %337  : i64
    %339 = llvm.add %336, %338  : i64
    %340 = llvm.add %339, %326  : i64
    %341 = llvm.getelementptr %328[%340] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %342 = llvm.load %341 : !llvm.ptr<i32>
    %343 = llvm.extractvalue %267[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.mlir.constant(8 : index) : i64
    %345 = llvm.mul %306, %344  : i64
    %346 = llvm.mlir.constant(4 : index) : i64
    %347 = llvm.mul %311, %346  : i64
    %348 = llvm.add %345, %347  : i64
    %349 = llvm.mlir.constant(2 : index) : i64
    %350 = llvm.mul %316, %349  : i64
    %351 = llvm.add %348, %350  : i64
    %352 = llvm.add %351, %321  : i64
    %353 = llvm.getelementptr %343[%352] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %354 = llvm.load %353 : !llvm.ptr<i32>
    %355 = llvm.icmp "sgt" %354, %342 : i32
    %356 = llvm.select %355, %354, %342 : i1, i32
    %357 = llvm.extractvalue %267[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.mlir.constant(8 : index) : i64
    %359 = llvm.mul %306, %358  : i64
    %360 = llvm.mlir.constant(4 : index) : i64
    %361 = llvm.mul %311, %360  : i64
    %362 = llvm.add %359, %361  : i64
    %363 = llvm.mlir.constant(2 : index) : i64
    %364 = llvm.mul %316, %363  : i64
    %365 = llvm.add %362, %364  : i64
    %366 = llvm.add %365, %321  : i64
    %367 = llvm.getelementptr %357[%366] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %356, %367 : !llvm.ptr<i32>
    %368 = llvm.add %326, %325  : i64
    llvm.br ^bb51(%368 : i64)
  ^bb53:  // pred: ^bb51
    %369 = llvm.add %321, %320  : i64
    llvm.br ^bb49(%369 : i64)
  ^bb54:  // pred: ^bb49
    %370 = llvm.add %316, %315  : i64
    llvm.br ^bb47(%370 : i64)
  ^bb55:  // pred: ^bb47
    %371 = llvm.add %311, %310  : i64
    llvm.br ^bb45(%371 : i64)
  ^bb56:  // pred: ^bb45
    %372 = llvm.add %306, %305  : i64
    llvm.br ^bb43(%372 : i64)
  ^bb57:  // pred: ^bb43
    %373 = llvm.mlir.constant(1 : index) : i64
    %374 = llvm.mlir.constant(2 : index) : i64
    %375 = llvm.mlir.constant(2 : index) : i64
    %376 = llvm.mlir.constant(2 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    %378 = llvm.mlir.constant(4 : index) : i64
    %379 = llvm.mlir.constant(8 : index) : i64
    %380 = llvm.mlir.constant(8 : index) : i64
    %381 = llvm.mlir.null : !llvm.ptr<i32>
    %382 = llvm.getelementptr %381[%380] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %383 = llvm.ptrtoint %382 : !llvm.ptr<i32> to i64
    %384 = llvm.mlir.constant(16 : index) : i64
    %385 = llvm.add %383, %384  : i64
    %386 = llvm.call @malloc(%385) : (i64) -> !llvm.ptr<i8>
    %387 = llvm.bitcast %386 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %388 = llvm.ptrtoint %387 : !llvm.ptr<i32> to i64
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.sub %384, %389  : i64
    %391 = llvm.add %388, %390  : i64
    %392 = llvm.urem %391, %384  : i64
    %393 = llvm.sub %391, %392  : i64
    %394 = llvm.inttoptr %393 : i64 to !llvm.ptr<i32>
    %395 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %396 = llvm.insertvalue %387, %395[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.insertvalue %394, %396[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.insertvalue %398, %397[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.insertvalue %373, %399[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.insertvalue %374, %400[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.insertvalue %375, %401[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.insertvalue %376, %402[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.insertvalue %379, %403[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.insertvalue %378, %404[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.insertvalue %376, %405[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.insertvalue %377, %406[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.mlir.constant(0 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%408 : i64)
  ^bb58(%411: i64):  // 2 preds: ^bb57, ^bb68
    %412 = llvm.icmp "slt" %411, %409 : i64
    llvm.cond_br %412, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %413 = llvm.mlir.constant(0 : index) : i64
    %414 = llvm.mlir.constant(2 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%413 : i64)
  ^bb60(%416: i64):  // 2 preds: ^bb59, ^bb67
    %417 = llvm.icmp "slt" %416, %414 : i64
    llvm.cond_br %417, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %418 = llvm.mlir.constant(0 : index) : i64
    %419 = llvm.mlir.constant(2 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%418 : i64)
  ^bb62(%421: i64):  // 2 preds: ^bb61, ^bb66
    %422 = llvm.icmp "slt" %421, %419 : i64
    llvm.cond_br %422, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %423 = llvm.mlir.constant(0 : index) : i64
    %424 = llvm.mlir.constant(2 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%423 : i64)
  ^bb64(%426: i64):  // 2 preds: ^bb63, ^bb65
    %427 = llvm.icmp "slt" %426, %424 : i64
    llvm.cond_br %427, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %428 = llvm.extractvalue %267[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.mlir.constant(8 : index) : i64
    %430 = llvm.mul %411, %429  : i64
    %431 = llvm.mlir.constant(4 : index) : i64
    %432 = llvm.mul %416, %431  : i64
    %433 = llvm.add %430, %432  : i64
    %434 = llvm.mlir.constant(2 : index) : i64
    %435 = llvm.mul %421, %434  : i64
    %436 = llvm.add %433, %435  : i64
    %437 = llvm.add %436, %426  : i64
    %438 = llvm.getelementptr %428[%437] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %439 = llvm.load %438 : !llvm.ptr<i32>
    %440 = llvm.mlir.constant(false) : i1
    %441 = "llvm.intr.abs"(%439, %440) : (i32, i1) -> i32
    %442 = llvm.extractvalue %407[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.mlir.constant(8 : index) : i64
    %444 = llvm.mul %411, %443  : i64
    %445 = llvm.mlir.constant(4 : index) : i64
    %446 = llvm.mul %416, %445  : i64
    %447 = llvm.add %444, %446  : i64
    %448 = llvm.mlir.constant(2 : index) : i64
    %449 = llvm.mul %421, %448  : i64
    %450 = llvm.add %447, %449  : i64
    %451 = llvm.add %450, %426  : i64
    %452 = llvm.getelementptr %442[%451] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %441, %452 : !llvm.ptr<i32>
    %453 = llvm.add %426, %425  : i64
    llvm.br ^bb64(%453 : i64)
  ^bb66:  // pred: ^bb64
    %454 = llvm.add %421, %420  : i64
    llvm.br ^bb62(%454 : i64)
  ^bb67:  // pred: ^bb62
    %455 = llvm.add %416, %415  : i64
    llvm.br ^bb60(%455 : i64)
  ^bb68:  // pred: ^bb60
    %456 = llvm.add %411, %410  : i64
    llvm.br ^bb58(%456 : i64)
  ^bb69:  // pred: ^bb58
    %457 = llvm.mlir.constant(1 : index) : i64
    %458 = llvm.mlir.constant(2 : index) : i64
    %459 = llvm.mlir.constant(2 : index) : i64
    %460 = llvm.mlir.constant(2 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.mlir.constant(4 : index) : i64
    %463 = llvm.mlir.constant(8 : index) : i64
    %464 = llvm.mlir.constant(8 : index) : i64
    %465 = llvm.mlir.null : !llvm.ptr<i32>
    %466 = llvm.getelementptr %465[%464] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %467 = llvm.ptrtoint %466 : !llvm.ptr<i32> to i64
    %468 = llvm.mlir.constant(16 : index) : i64
    %469 = llvm.add %467, %468  : i64
    %470 = llvm.call @malloc(%469) : (i64) -> !llvm.ptr<i8>
    %471 = llvm.bitcast %470 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %472 = llvm.ptrtoint %471 : !llvm.ptr<i32> to i64
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.sub %468, %473  : i64
    %475 = llvm.add %472, %474  : i64
    %476 = llvm.urem %475, %468  : i64
    %477 = llvm.sub %475, %476  : i64
    %478 = llvm.inttoptr %477 : i64 to !llvm.ptr<i32>
    %479 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %480 = llvm.insertvalue %471, %479[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.insertvalue %478, %480[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %482 = llvm.mlir.constant(0 : index) : i64
    %483 = llvm.insertvalue %482, %481[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %484 = llvm.insertvalue %457, %483[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %485 = llvm.insertvalue %458, %484[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %486 = llvm.insertvalue %459, %485[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %487 = llvm.insertvalue %460, %486[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %488 = llvm.insertvalue %463, %487[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %489 = llvm.insertvalue %462, %488[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.insertvalue %460, %489[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %491 = llvm.insertvalue %461, %490[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %492 = llvm.mlir.constant(0 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%492 : i64)
  ^bb70(%495: i64):  // 2 preds: ^bb69, ^bb80
    %496 = llvm.icmp "slt" %495, %493 : i64
    llvm.cond_br %496, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %497 = llvm.mlir.constant(0 : index) : i64
    %498 = llvm.mlir.constant(2 : index) : i64
    %499 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%497 : i64)
  ^bb72(%500: i64):  // 2 preds: ^bb71, ^bb79
    %501 = llvm.icmp "slt" %500, %498 : i64
    llvm.cond_br %501, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %502 = llvm.mlir.constant(0 : index) : i64
    %503 = llvm.mlir.constant(2 : index) : i64
    %504 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%502 : i64)
  ^bb74(%505: i64):  // 2 preds: ^bb73, ^bb78
    %506 = llvm.icmp "slt" %505, %503 : i64
    llvm.cond_br %506, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %507 = llvm.mlir.constant(0 : index) : i64
    %508 = llvm.mlir.constant(2 : index) : i64
    %509 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%507 : i64)
  ^bb76(%510: i64):  // 2 preds: ^bb75, ^bb77
    %511 = llvm.icmp "slt" %510, %508 : i64
    llvm.cond_br %511, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %512 = llvm.extractvalue %407[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.mlir.constant(8 : index) : i64
    %514 = llvm.mul %495, %513  : i64
    %515 = llvm.mlir.constant(4 : index) : i64
    %516 = llvm.mul %500, %515  : i64
    %517 = llvm.add %514, %516  : i64
    %518 = llvm.mlir.constant(2 : index) : i64
    %519 = llvm.mul %505, %518  : i64
    %520 = llvm.add %517, %519  : i64
    %521 = llvm.add %520, %510  : i64
    %522 = llvm.getelementptr %512[%521] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %523 = llvm.load %522 : !llvm.ptr<i32>
    %524 = llvm.extractvalue %407[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %525 = llvm.mlir.constant(8 : index) : i64
    %526 = llvm.mul %495, %525  : i64
    %527 = llvm.mlir.constant(4 : index) : i64
    %528 = llvm.mul %500, %527  : i64
    %529 = llvm.add %526, %528  : i64
    %530 = llvm.mlir.constant(2 : index) : i64
    %531 = llvm.mul %505, %530  : i64
    %532 = llvm.add %529, %531  : i64
    %533 = llvm.add %532, %510  : i64
    %534 = llvm.getelementptr %524[%533] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %535 = llvm.load %534 : !llvm.ptr<i32>
    %536 = llvm.sub %523, %535  : i32
    %537 = llvm.extractvalue %491[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %538 = llvm.mlir.constant(8 : index) : i64
    %539 = llvm.mul %495, %538  : i64
    %540 = llvm.mlir.constant(4 : index) : i64
    %541 = llvm.mul %500, %540  : i64
    %542 = llvm.add %539, %541  : i64
    %543 = llvm.mlir.constant(2 : index) : i64
    %544 = llvm.mul %505, %543  : i64
    %545 = llvm.add %542, %544  : i64
    %546 = llvm.add %545, %510  : i64
    %547 = llvm.getelementptr %537[%546] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %536, %547 : !llvm.ptr<i32>
    %548 = llvm.add %510, %509  : i64
    llvm.br ^bb76(%548 : i64)
  ^bb78:  // pred: ^bb76
    %549 = llvm.add %505, %504  : i64
    llvm.br ^bb74(%549 : i64)
  ^bb79:  // pred: ^bb74
    %550 = llvm.add %500, %499  : i64
    llvm.br ^bb72(%550 : i64)
  ^bb80:  // pred: ^bb72
    %551 = llvm.add %495, %494  : i64
    llvm.br ^bb70(%551 : i64)
  ^bb81:  // pred: ^bb70
    llvm.return %491 : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v6_0", "v0_0"], llvm.emit_c_interface, output_names = ["v1_0"]} {
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
    %26 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %26, %arg0 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %54) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %92 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.mlir.constant(8 : i64) : i64
    %95 = llvm.call @malloc(%94) : (i64) -> !llvm.ptr<i8>
    %96 = llvm.bitcast %95 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %97 = llvm.mlir.constant(4 : i64) : i64
    %98 = llvm.call @omTensorCreateUntyped(%97) : (i64) -> !llvm.ptr<i8>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %92[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.bitcast %100 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %102 = llvm.extractvalue %92[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.bitcast %102 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%98, %99, %101, %103) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %104 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%98, %104) : (!llvm.ptr<i8>, i64) -> ()
    %105 = llvm.call @omTensorGetShape(%98) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %106 = llvm.call @omTensorGetStrides(%98) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %107 = llvm.mlir.constant(0 : i64) : i64
    %108 = llvm.extractvalue %92[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %105[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.extractvalue %92[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %106[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.mlir.constant(1 : i64) : i64
    %113 = llvm.extractvalue %92[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %105[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %92[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %106[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(2 : i64) : i64
    %118 = llvm.extractvalue %92[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %105[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.extractvalue %92[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %106[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.mlir.constant(3 : i64) : i64
    %123 = llvm.extractvalue %92[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %105[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.extractvalue %92[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.getelementptr %106[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %125, %126 : !llvm.ptr<i64>
    %127 = llvm.mlir.constant(0 : i64) : i64
    %128 = llvm.getelementptr %96[%127] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %98, %128 : !llvm.ptr<ptr<i8>>
    %129 = llvm.call @omTensorListCreate(%96, %93, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %129 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

