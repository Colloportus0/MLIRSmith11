module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 2] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: !llvm.ptr<i32>, %arg10: !llvm.ptr<i32>, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v6_0", "v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v0_0"]} {
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
    %10 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %11 = llvm.insertvalue %arg9, %10[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg11, %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %15 = llvm.insertvalue %arg17, %14[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %16 = llvm.insertvalue %arg13, %15[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %17 = llvm.insertvalue %arg18, %16[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %18 = llvm.insertvalue %arg14, %17[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %19 = llvm.insertvalue %arg19, %18[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.insertvalue %arg15, %19[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %21 = llvm.insertvalue %arg20, %20[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %22 = llvm.insertvalue %arg16, %21[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.insertvalue %arg21, %22[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %24 = llvm.mlir.constant(-2147483648 : i32) : i32
    %25 = llvm.mlir.constant(0 : i64) : i64
    %26 = llvm.mlir.constant(-1 : i64) : i64
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.mlir.constant(2 : index) : i64
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.constant(4 : index) : i64
    %35 = llvm.mlir.constant(4 : index) : i64
    %36 = llvm.mlir.constant(4 : index) : i64
    %37 = llvm.mlir.constant(4 : index) : i64
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
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%72 : i64)
  ^bb3(%75: i64):  // 2 preds: ^bb2, ^bb13
    %76 = llvm.icmp "slt" %75, %73 : i64
    llvm.cond_br %76, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
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
    %92 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %93 = llvm.mlir.constant(2 : index) : i64
    %94 = llvm.mul %70, %93  : i64
    %95 = llvm.mlir.constant(2 : index) : i64
    %96 = llvm.mul %75, %95  : i64
    %97 = llvm.add %94, %96  : i64
    %98 = llvm.mlir.constant(2 : index) : i64
    %99 = llvm.mul %80, %98  : i64
    %100 = llvm.add %97, %99  : i64
    %101 = llvm.mlir.constant(2 : index) : i64
    %102 = llvm.mul %27, %101  : i64
    %103 = llvm.add %100, %102  : i64
    %104 = llvm.add %103, %90  : i64
    %105 = llvm.getelementptr %92[%104] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %106 = llvm.load %105 : !llvm.ptr<i32>
    %107 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mul %80, %108  : i64
    %110 = llvm.add %109, %85  : i64
    %111 = llvm.add %110, %27  : i64
    %112 = llvm.getelementptr %107[%111] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %113 = llvm.load %112 : !llvm.ptr<i32>
    %114 = llvm.icmp "sgt" %106, %113 : i32
    %115 = llvm.select %114, %106, %113 : i1, i32
    %116 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %117 = llvm.mlir.constant(4 : index) : i64
    %118 = llvm.mul %70, %117  : i64
    %119 = llvm.mlir.constant(4 : index) : i64
    %120 = llvm.mul %75, %119  : i64
    %121 = llvm.add %118, %120  : i64
    %122 = llvm.mlir.constant(4 : index) : i64
    %123 = llvm.mul %80, %122  : i64
    %124 = llvm.add %121, %123  : i64
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mul %85, %125  : i64
    %127 = llvm.add %124, %126  : i64
    %128 = llvm.add %127, %90  : i64
    %129 = llvm.getelementptr %116[%128] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %115, %129 : !llvm.ptr<i32>
    %130 = llvm.add %90, %89  : i64
    llvm.br ^bb9(%130 : i64)
  ^bb11:  // pred: ^bb9
    %131 = llvm.add %85, %84  : i64
    llvm.br ^bb7(%131 : i64)
  ^bb12:  // pred: ^bb7
    %132 = llvm.add %80, %79  : i64
    llvm.br ^bb5(%132 : i64)
  ^bb13:  // pred: ^bb5
    %133 = llvm.add %75, %74  : i64
    llvm.br ^bb3(%133 : i64)
  ^bb14:  // pred: ^bb3
    %134 = llvm.add %70, %69  : i64
    llvm.br ^bb1(%134 : i64)
  ^bb15:  // pred: ^bb1
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.mlir.constant(4 : index) : i64
    %141 = llvm.mlir.constant(4 : index) : i64
    %142 = llvm.mlir.constant(4 : index) : i64
    %143 = llvm.mlir.null : !llvm.ptr<i64>
    %144 = llvm.getelementptr %143[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %145 = llvm.ptrtoint %144 : !llvm.ptr<i64> to i64
    %146 = llvm.mlir.constant(16 : index) : i64
    %147 = llvm.add %145, %146  : i64
    %148 = llvm.call @malloc(%147) : (i64) -> !llvm.ptr<i8>
    %149 = llvm.bitcast %148 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %150 = llvm.ptrtoint %149 : !llvm.ptr<i64> to i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.sub %146, %151  : i64
    %153 = llvm.add %150, %152  : i64
    %154 = llvm.urem %153, %146  : i64
    %155 = llvm.sub %153, %154  : i64
    %156 = llvm.inttoptr %155 : i64 to !llvm.ptr<i64>
    %157 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %158 = llvm.insertvalue %149, %157[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %156, %158[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.insertvalue %160, %159[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %135, %161[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.insertvalue %136, %162[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.insertvalue %137, %163[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.insertvalue %138, %164[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.insertvalue %141, %165[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.insertvalue %140, %166[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.insertvalue %138, %167[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.insertvalue %139, %168[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%170 : i64)
  ^bb16(%173: i64):  // 2 preds: ^bb15, ^bb26
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%175 : i64)
  ^bb18(%178: i64):  // 2 preds: ^bb17, ^bb25
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.mlir.constant(2 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%180 : i64)
  ^bb20(%183: i64):  // 2 preds: ^bb19, ^bb24
    %184 = llvm.icmp "slt" %183, %181 : i64
    llvm.cond_br %184, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(2 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%185 : i64)
  ^bb22(%188: i64):  // 2 preds: ^bb21, ^bb23
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %190 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.mlir.constant(4 : index) : i64
    %192 = llvm.mul %173, %191  : i64
    %193 = llvm.mlir.constant(4 : index) : i64
    %194 = llvm.mul %178, %193  : i64
    %195 = llvm.add %192, %194  : i64
    %196 = llvm.mlir.constant(2 : index) : i64
    %197 = llvm.mul %183, %196  : i64
    %198 = llvm.add %195, %197  : i64
    %199 = llvm.add %198, %188  : i64
    %200 = llvm.getelementptr %190[%199] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %26, %200 : !llvm.ptr<i64>
    %201 = llvm.add %188, %187  : i64
    llvm.br ^bb22(%201 : i64)
  ^bb24:  // pred: ^bb22
    %202 = llvm.add %183, %182  : i64
    llvm.br ^bb20(%202 : i64)
  ^bb25:  // pred: ^bb20
    %203 = llvm.add %178, %177  : i64
    llvm.br ^bb18(%203 : i64)
  ^bb26:  // pred: ^bb18
    %204 = llvm.add %173, %172  : i64
    llvm.br ^bb16(%204 : i64)
  ^bb27:  // pred: ^bb16
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%205 : i64)
  ^bb28(%208: i64):  // 2 preds: ^bb27, ^bb41
    %209 = llvm.icmp "slt" %208, %206 : i64
    llvm.cond_br %209, ^bb29, ^bb42
  ^bb29:  // pred: ^bb28
    %210 = llvm.mlir.constant(0 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%210 : i64)
  ^bb30(%213: i64):  // 2 preds: ^bb29, ^bb40
    %214 = llvm.icmp "slt" %213, %211 : i64
    llvm.cond_br %214, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%215 : i64)
  ^bb32(%218: i64):  // 2 preds: ^bb31, ^bb39
    %219 = llvm.icmp "slt" %218, %216 : i64
    llvm.cond_br %219, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.mlir.constant(2 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%220 : i64)
  ^bb34(%223: i64):  // 2 preds: ^bb33, ^bb38
    %224 = llvm.icmp "slt" %223, %221 : i64
    llvm.cond_br %224, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.mlir.constant(2 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%225 : i64)
  ^bb36(%228: i64):  // 2 preds: ^bb35, ^bb37
    %229 = llvm.icmp "slt" %228, %226 : i64
    llvm.cond_br %229, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %230 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %231 = llvm.mlir.constant(4 : index) : i64
    %232 = llvm.mul %208, %231  : i64
    %233 = llvm.mlir.constant(4 : index) : i64
    %234 = llvm.mul %213, %233  : i64
    %235 = llvm.add %232, %234  : i64
    %236 = llvm.mlir.constant(4 : index) : i64
    %237 = llvm.mul %218, %236  : i64
    %238 = llvm.add %235, %237  : i64
    %239 = llvm.mlir.constant(2 : index) : i64
    %240 = llvm.mul %223, %239  : i64
    %241 = llvm.add %238, %240  : i64
    %242 = llvm.add %241, %228  : i64
    %243 = llvm.getelementptr %230[%242] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %244 = llvm.load %243 : !llvm.ptr<i32>
    %245 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.mlir.constant(4 : index) : i64
    %247 = llvm.mul %213, %246  : i64
    %248 = llvm.mlir.constant(4 : index) : i64
    %249 = llvm.mul %218, %248  : i64
    %250 = llvm.add %247, %249  : i64
    %251 = llvm.mlir.constant(2 : index) : i64
    %252 = llvm.mul %223, %251  : i64
    %253 = llvm.add %250, %252  : i64
    %254 = llvm.add %253, %228  : i64
    %255 = llvm.getelementptr %245[%254] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %256 = llvm.load %255 : !llvm.ptr<i64>
    %257 = llvm.icmp "slt" %256, %25 : i64
    %258 = llvm.select %257, %25, %256 : i1, i64
    %259 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %260 = llvm.mlir.constant(4 : index) : i64
    %261 = llvm.mul %258, %260  : i64
    %262 = llvm.mlir.constant(4 : index) : i64
    %263 = llvm.mul %213, %262  : i64
    %264 = llvm.add %261, %263  : i64
    %265 = llvm.mlir.constant(4 : index) : i64
    %266 = llvm.mul %218, %265  : i64
    %267 = llvm.add %264, %266  : i64
    %268 = llvm.mlir.constant(2 : index) : i64
    %269 = llvm.mul %223, %268  : i64
    %270 = llvm.add %267, %269  : i64
    %271 = llvm.add %270, %228  : i64
    %272 = llvm.getelementptr %259[%271] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %273 = llvm.load %272 : !llvm.ptr<i32>
    %274 = llvm.icmp "slt" %244, %273 : i32
    %275 = llvm.select %274, %208, %258 : i1, i64
    %276 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.mlir.constant(4 : index) : i64
    %278 = llvm.mul %213, %277  : i64
    %279 = llvm.mlir.constant(4 : index) : i64
    %280 = llvm.mul %218, %279  : i64
    %281 = llvm.add %278, %280  : i64
    %282 = llvm.mlir.constant(2 : index) : i64
    %283 = llvm.mul %223, %282  : i64
    %284 = llvm.add %281, %283  : i64
    %285 = llvm.add %284, %228  : i64
    %286 = llvm.getelementptr %276[%285] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %275, %286 : !llvm.ptr<i64>
    %287 = llvm.add %228, %227  : i64
    llvm.br ^bb36(%287 : i64)
  ^bb38:  // pred: ^bb36
    %288 = llvm.add %223, %222  : i64
    llvm.br ^bb34(%288 : i64)
  ^bb39:  // pred: ^bb34
    %289 = llvm.add %218, %217  : i64
    llvm.br ^bb32(%289 : i64)
  ^bb40:  // pred: ^bb32
    %290 = llvm.add %213, %212  : i64
    llvm.br ^bb30(%290 : i64)
  ^bb41:  // pred: ^bb30
    %291 = llvm.add %208, %207  : i64
    llvm.br ^bb28(%291 : i64)
  ^bb42:  // pred: ^bb28
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.constant(2 : index) : i64
    %295 = llvm.mlir.constant(2 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.mlir.constant(4 : index) : i64
    %298 = llvm.mlir.constant(4 : index) : i64
    %299 = llvm.mlir.constant(4 : index) : i64
    %300 = llvm.mlir.null : !llvm.ptr<i64>
    %301 = llvm.getelementptr %300[%299] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %302 = llvm.ptrtoint %301 : !llvm.ptr<i64> to i64
    %303 = llvm.mlir.constant(16 : index) : i64
    %304 = llvm.add %302, %303  : i64
    %305 = llvm.call @malloc(%304) : (i64) -> !llvm.ptr<i8>
    %306 = llvm.bitcast %305 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %307 = llvm.ptrtoint %306 : !llvm.ptr<i64> to i64
    %308 = llvm.mlir.constant(1 : index) : i64
    %309 = llvm.sub %303, %308  : i64
    %310 = llvm.add %307, %309  : i64
    %311 = llvm.urem %310, %303  : i64
    %312 = llvm.sub %310, %311  : i64
    %313 = llvm.inttoptr %312 : i64 to !llvm.ptr<i64>
    %314 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %315 = llvm.insertvalue %306, %314[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.insertvalue %313, %315[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.mlir.constant(0 : index) : i64
    %318 = llvm.insertvalue %317, %316[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.insertvalue %292, %318[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.insertvalue %293, %319[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.insertvalue %294, %320[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.insertvalue %295, %321[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.insertvalue %298, %322[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.insertvalue %297, %323[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.insertvalue %295, %324[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %296, %325[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.mlir.constant(0 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%327 : i64)
  ^bb43(%330: i64):  // 2 preds: ^bb42, ^bb53
    %331 = llvm.icmp "slt" %330, %328 : i64
    llvm.cond_br %331, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %332 = llvm.mlir.constant(0 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%332 : i64)
  ^bb45(%335: i64):  // 2 preds: ^bb44, ^bb52
    %336 = llvm.icmp "slt" %335, %333 : i64
    llvm.cond_br %336, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.mlir.constant(2 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%337 : i64)
  ^bb47(%340: i64):  // 2 preds: ^bb46, ^bb51
    %341 = llvm.icmp "slt" %340, %338 : i64
    llvm.cond_br %341, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(2 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%342 : i64)
  ^bb49(%345: i64):  // 2 preds: ^bb48, ^bb50
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %347 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.mlir.constant(4 : index) : i64
    %349 = llvm.mul %330, %348  : i64
    %350 = llvm.mlir.constant(4 : index) : i64
    %351 = llvm.mul %335, %350  : i64
    %352 = llvm.add %349, %351  : i64
    %353 = llvm.mlir.constant(2 : index) : i64
    %354 = llvm.mul %340, %353  : i64
    %355 = llvm.add %352, %354  : i64
    %356 = llvm.add %355, %345  : i64
    %357 = llvm.getelementptr %347[%356] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %358 = llvm.load %357 : !llvm.ptr<i64>
    %359 = llvm.sub %25, %358  : i64
    %360 = llvm.extractvalue %326[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.mlir.constant(4 : index) : i64
    %362 = llvm.mul %330, %361  : i64
    %363 = llvm.mlir.constant(4 : index) : i64
    %364 = llvm.mul %335, %363  : i64
    %365 = llvm.add %362, %364  : i64
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mul %340, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.add %368, %345  : i64
    %370 = llvm.getelementptr %360[%369] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %359, %370 : !llvm.ptr<i64>
    %371 = llvm.add %345, %344  : i64
    llvm.br ^bb49(%371 : i64)
  ^bb51:  // pred: ^bb49
    %372 = llvm.add %340, %339  : i64
    llvm.br ^bb47(%372 : i64)
  ^bb52:  // pred: ^bb47
    %373 = llvm.add %335, %334  : i64
    llvm.br ^bb45(%373 : i64)
  ^bb53:  // pred: ^bb45
    %374 = llvm.add %330, %329  : i64
    llvm.br ^bb43(%374 : i64)
  ^bb54:  // pred: ^bb43
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    %377 = llvm.mlir.constant(2 : index) : i64
    %378 = llvm.mlir.constant(2 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mlir.constant(4 : index) : i64
    %381 = llvm.mlir.constant(4 : index) : i64
    %382 = llvm.mlir.constant(4 : index) : i64
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
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%410 : i64)
  ^bb55(%413: i64):  // 2 preds: ^bb54, ^bb65
    %414 = llvm.icmp "slt" %413, %411 : i64
    llvm.cond_br %414, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%415 : i64)
  ^bb57(%418: i64):  // 2 preds: ^bb56, ^bb64
    %419 = llvm.icmp "slt" %418, %416 : i64
    llvm.cond_br %419, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %420 = llvm.mlir.constant(0 : index) : i64
    %421 = llvm.mlir.constant(2 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%420 : i64)
  ^bb59(%423: i64):  // 2 preds: ^bb58, ^bb63
    %424 = llvm.icmp "slt" %423, %421 : i64
    llvm.cond_br %424, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %425 = llvm.mlir.constant(0 : index) : i64
    %426 = llvm.mlir.constant(2 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%425 : i64)
  ^bb61(%428: i64):  // 2 preds: ^bb60, ^bb62
    %429 = llvm.icmp "slt" %428, %426 : i64
    llvm.cond_br %429, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %430 = llvm.extractvalue %409[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.mlir.constant(4 : index) : i64
    %432 = llvm.mul %413, %431  : i64
    %433 = llvm.mlir.constant(4 : index) : i64
    %434 = llvm.mul %418, %433  : i64
    %435 = llvm.add %432, %434  : i64
    %436 = llvm.mlir.constant(2 : index) : i64
    %437 = llvm.mul %423, %436  : i64
    %438 = llvm.add %435, %437  : i64
    %439 = llvm.add %438, %428  : i64
    %440 = llvm.getelementptr %430[%439] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %24, %440 : !llvm.ptr<i32>
    %441 = llvm.add %428, %427  : i64
    llvm.br ^bb61(%441 : i64)
  ^bb63:  // pred: ^bb61
    %442 = llvm.add %423, %422  : i64
    llvm.br ^bb59(%442 : i64)
  ^bb64:  // pred: ^bb59
    %443 = llvm.add %418, %417  : i64
    llvm.br ^bb57(%443 : i64)
  ^bb65:  // pred: ^bb57
    %444 = llvm.add %413, %412  : i64
    llvm.br ^bb55(%444 : i64)
  ^bb66:  // pred: ^bb55
    %445 = llvm.mlir.constant(0 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%445 : i64)
  ^bb67(%448: i64):  // 2 preds: ^bb66, ^bb80
    %449 = llvm.icmp "slt" %448, %446 : i64
    llvm.cond_br %449, ^bb68, ^bb81
  ^bb68:  // pred: ^bb67
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%450 : i64)
  ^bb69(%453: i64):  // 2 preds: ^bb68, ^bb79
    %454 = llvm.icmp "slt" %453, %451 : i64
    llvm.cond_br %454, ^bb70, ^bb80
  ^bb70:  // pred: ^bb69
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%455 : i64)
  ^bb71(%458: i64):  // 2 preds: ^bb70, ^bb78
    %459 = llvm.icmp "slt" %458, %456 : i64
    llvm.cond_br %459, ^bb72, ^bb79
  ^bb72:  // pred: ^bb71
    %460 = llvm.mlir.constant(0 : index) : i64
    %461 = llvm.mlir.constant(2 : index) : i64
    %462 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%460 : i64)
  ^bb73(%463: i64):  // 2 preds: ^bb72, ^bb77
    %464 = llvm.icmp "slt" %463, %461 : i64
    llvm.cond_br %464, ^bb74, ^bb78
  ^bb74:  // pred: ^bb73
    %465 = llvm.mlir.constant(0 : index) : i64
    %466 = llvm.mlir.constant(2 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%465 : i64)
  ^bb75(%468: i64):  // 2 preds: ^bb74, ^bb76
    %469 = llvm.icmp "slt" %468, %466 : i64
    llvm.cond_br %469, ^bb76, ^bb77
  ^bb76:  // pred: ^bb75
    %470 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %471 = llvm.mlir.constant(4 : index) : i64
    %472 = llvm.mul %448, %471  : i64
    %473 = llvm.mlir.constant(4 : index) : i64
    %474 = llvm.mul %453, %473  : i64
    %475 = llvm.add %472, %474  : i64
    %476 = llvm.mlir.constant(4 : index) : i64
    %477 = llvm.mul %458, %476  : i64
    %478 = llvm.add %475, %477  : i64
    %479 = llvm.mlir.constant(2 : index) : i64
    %480 = llvm.mul %463, %479  : i64
    %481 = llvm.add %478, %480  : i64
    %482 = llvm.add %481, %468  : i64
    %483 = llvm.getelementptr %470[%482] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %484 = llvm.load %483 : !llvm.ptr<i32>
    %485 = llvm.extractvalue %409[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %486 = llvm.mlir.constant(4 : index) : i64
    %487 = llvm.mul %448, %486  : i64
    %488 = llvm.mlir.constant(4 : index) : i64
    %489 = llvm.mul %453, %488  : i64
    %490 = llvm.add %487, %489  : i64
    %491 = llvm.mlir.constant(2 : index) : i64
    %492 = llvm.mul %463, %491  : i64
    %493 = llvm.add %490, %492  : i64
    %494 = llvm.add %493, %468  : i64
    %495 = llvm.getelementptr %485[%494] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %496 = llvm.load %495 : !llvm.ptr<i32>
    %497 = llvm.icmp "sgt" %496, %484 : i32
    %498 = llvm.select %497, %496, %484 : i1, i32
    %499 = llvm.extractvalue %409[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %500 = llvm.mlir.constant(4 : index) : i64
    %501 = llvm.mul %448, %500  : i64
    %502 = llvm.mlir.constant(4 : index) : i64
    %503 = llvm.mul %453, %502  : i64
    %504 = llvm.add %501, %503  : i64
    %505 = llvm.mlir.constant(2 : index) : i64
    %506 = llvm.mul %463, %505  : i64
    %507 = llvm.add %504, %506  : i64
    %508 = llvm.add %507, %468  : i64
    %509 = llvm.getelementptr %499[%508] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %498, %509 : !llvm.ptr<i32>
    %510 = llvm.add %468, %467  : i64
    llvm.br ^bb75(%510 : i64)
  ^bb77:  // pred: ^bb75
    %511 = llvm.add %463, %462  : i64
    llvm.br ^bb73(%511 : i64)
  ^bb78:  // pred: ^bb73
    %512 = llvm.add %458, %457  : i64
    llvm.br ^bb71(%512 : i64)
  ^bb79:  // pred: ^bb71
    %513 = llvm.add %453, %452  : i64
    llvm.br ^bb69(%513 : i64)
  ^bb80:  // pred: ^bb69
    %514 = llvm.add %448, %447  : i64
    llvm.br ^bb67(%514 : i64)
  ^bb81:  // pred: ^bb67
    %515 = llvm.mlir.constant(1 : index) : i64
    %516 = llvm.mlir.constant(1 : index) : i64
    %517 = llvm.mlir.constant(2 : index) : i64
    %518 = llvm.mlir.constant(2 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    %520 = llvm.mlir.constant(4 : index) : i64
    %521 = llvm.mlir.constant(4 : index) : i64
    %522 = llvm.mlir.constant(4 : index) : i64
    %523 = llvm.mlir.null : !llvm.ptr<i32>
    %524 = llvm.getelementptr %523[%522] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %525 = llvm.ptrtoint %524 : !llvm.ptr<i32> to i64
    %526 = llvm.mlir.constant(16 : index) : i64
    %527 = llvm.add %525, %526  : i64
    %528 = llvm.call @malloc(%527) : (i64) -> !llvm.ptr<i8>
    %529 = llvm.bitcast %528 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %530 = llvm.ptrtoint %529 : !llvm.ptr<i32> to i64
    %531 = llvm.mlir.constant(1 : index) : i64
    %532 = llvm.sub %526, %531  : i64
    %533 = llvm.add %530, %532  : i64
    %534 = llvm.urem %533, %526  : i64
    %535 = llvm.sub %533, %534  : i64
    %536 = llvm.inttoptr %535 : i64 to !llvm.ptr<i32>
    %537 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %538 = llvm.insertvalue %529, %537[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %539 = llvm.insertvalue %536, %538[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %540 = llvm.mlir.constant(0 : index) : i64
    %541 = llvm.insertvalue %540, %539[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %542 = llvm.insertvalue %515, %541[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %543 = llvm.insertvalue %516, %542[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %544 = llvm.insertvalue %517, %543[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %545 = llvm.insertvalue %518, %544[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.insertvalue %521, %545[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %547 = llvm.insertvalue %520, %546[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %548 = llvm.insertvalue %518, %547[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %549 = llvm.insertvalue %519, %548[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %550 = llvm.mlir.constant(0 : index) : i64
    %551 = llvm.mlir.constant(1 : index) : i64
    %552 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%550 : i64)
  ^bb82(%553: i64):  // 2 preds: ^bb81, ^bb92
    %554 = llvm.icmp "slt" %553, %551 : i64
    llvm.cond_br %554, ^bb83, ^bb93
  ^bb83:  // pred: ^bb82
    %555 = llvm.mlir.constant(0 : index) : i64
    %556 = llvm.mlir.constant(1 : index) : i64
    %557 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb84(%555 : i64)
  ^bb84(%558: i64):  // 2 preds: ^bb83, ^bb91
    %559 = llvm.icmp "slt" %558, %556 : i64
    llvm.cond_br %559, ^bb85, ^bb92
  ^bb85:  // pred: ^bb84
    %560 = llvm.mlir.constant(0 : index) : i64
    %561 = llvm.mlir.constant(2 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb86(%560 : i64)
  ^bb86(%563: i64):  // 2 preds: ^bb85, ^bb90
    %564 = llvm.icmp "slt" %563, %561 : i64
    llvm.cond_br %564, ^bb87, ^bb91
  ^bb87:  // pred: ^bb86
    %565 = llvm.mlir.constant(0 : index) : i64
    %566 = llvm.mlir.constant(2 : index) : i64
    %567 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%565 : i64)
  ^bb88(%568: i64):  // 2 preds: ^bb87, ^bb89
    %569 = llvm.icmp "slt" %568, %566 : i64
    llvm.cond_br %569, ^bb89, ^bb90
  ^bb89:  // pred: ^bb88
    %570 = llvm.extractvalue %409[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %571 = llvm.mlir.constant(4 : index) : i64
    %572 = llvm.mul %553, %571  : i64
    %573 = llvm.mlir.constant(4 : index) : i64
    %574 = llvm.mul %558, %573  : i64
    %575 = llvm.add %572, %574  : i64
    %576 = llvm.mlir.constant(2 : index) : i64
    %577 = llvm.mul %563, %576  : i64
    %578 = llvm.add %575, %577  : i64
    %579 = llvm.add %578, %568  : i64
    %580 = llvm.getelementptr %570[%579] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %581 = llvm.load %580 : !llvm.ptr<i32>
    %582 = llvm.mlir.constant(false) : i1
    %583 = "llvm.intr.abs"(%581, %582) : (i32, i1) -> i32
    %584 = llvm.extractvalue %549[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %585 = llvm.mlir.constant(4 : index) : i64
    %586 = llvm.mul %553, %585  : i64
    %587 = llvm.mlir.constant(4 : index) : i64
    %588 = llvm.mul %558, %587  : i64
    %589 = llvm.add %586, %588  : i64
    %590 = llvm.mlir.constant(2 : index) : i64
    %591 = llvm.mul %563, %590  : i64
    %592 = llvm.add %589, %591  : i64
    %593 = llvm.add %592, %568  : i64
    %594 = llvm.getelementptr %584[%593] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %583, %594 : !llvm.ptr<i32>
    %595 = llvm.add %568, %567  : i64
    llvm.br ^bb88(%595 : i64)
  ^bb90:  // pred: ^bb88
    %596 = llvm.add %563, %562  : i64
    llvm.br ^bb86(%596 : i64)
  ^bb91:  // pred: ^bb86
    %597 = llvm.add %558, %557  : i64
    llvm.br ^bb84(%597 : i64)
  ^bb92:  // pred: ^bb84
    %598 = llvm.add %553, %552  : i64
    llvm.br ^bb82(%598 : i64)
  ^bb93:  // pred: ^bb82
    %599 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %600 = llvm.insertvalue %326, %599[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %601 = llvm.insertvalue %549, %600[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %601 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v6_0", "v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v0_0"]} {
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
    %10 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %11 = llvm.extractvalue %10[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %10[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.extractvalue %10[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %15 = llvm.extractvalue %10[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %16 = llvm.extractvalue %10[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %17 = llvm.extractvalue %10[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %18 = llvm.extractvalue %10[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %19 = llvm.extractvalue %10[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.extractvalue %10[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %21 = llvm.extractvalue %10[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %22 = llvm.extractvalue %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.extractvalue %10[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %40 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %42 = llvm.call @omTensorGetDataPtr(%39) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %43 = llvm.bitcast %42 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %44 = llvm.insertvalue %43, %41[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %45 = llvm.insertvalue %43, %44[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %46 = llvm.mlir.constant(0 : i64) : i64
    %47 = llvm.insertvalue %46, %45[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.call @omTensorGetShape(%39) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %49 = llvm.call @omTensorGetStrides(%39) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %50 = llvm.mlir.constant(0 : i64) : i64
    %51 = llvm.getelementptr %48[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %54 = llvm.getelementptr %49[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %57 = llvm.mlir.constant(1 : i64) : i64
    %58 = llvm.getelementptr %48[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %61 = llvm.getelementptr %49[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.mlir.constant(2 : i64) : i64
    %65 = llvm.getelementptr %48[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.getelementptr %49[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %71 = llvm.mlir.constant(3 : i64) : i64
    %72 = llvm.getelementptr %48[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %75 = llvm.getelementptr %49[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %78 = llvm.mlir.constant(4 : i64) : i64
    %79 = llvm.getelementptr %48[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %82 = llvm.getelementptr %49[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %84, %40 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %40) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.mlir.constant(2 : i64) : i64
    %89 = llvm.mlir.constant(16 : i64) : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %92 = llvm.mlir.constant(4 : i64) : i64
    %93 = llvm.call @omTensorCreateUntyped(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %97 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%93, %94, %96, %98) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %99 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%93, %99) : (!llvm.ptr<i8>, i64) -> ()
    %100 = llvm.call @omTensorGetShape(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.call @omTensorGetStrides(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.mlir.constant(0 : i64) : i64
    %103 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %100[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %101[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %100[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %101[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %100[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %101[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(3 : i64) : i64
    %118 = llvm.extractvalue %86[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %100[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.extractvalue %86[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %101[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.mlir.constant(0 : i64) : i64
    %123 = llvm.getelementptr %91[%122] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %93, %123 : !llvm.ptr<ptr<i8>>
    %124 = llvm.mlir.constant(4 : i64) : i64
    %125 = llvm.call @omTensorCreateUntyped(%124) : (i64) -> !llvm.ptr<i8>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.bitcast %127 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %129 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.bitcast %129 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%125, %126, %128, %130) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %131 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%125, %131) : (!llvm.ptr<i8>, i64) -> ()
    %132 = llvm.call @omTensorGetShape(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %133 = llvm.call @omTensorGetStrides(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %134 = llvm.mlir.constant(0 : i64) : i64
    %135 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %132[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %133[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.mlir.constant(1 : i64) : i64
    %140 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %132[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %133[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.mlir.constant(2 : i64) : i64
    %145 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %132[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %133[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(3 : i64) : i64
    %150 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.getelementptr %132[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %133[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.mlir.constant(1 : i64) : i64
    %155 = llvm.getelementptr %91[%154] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %125, %155 : !llvm.ptr<ptr<i8>>
    %156 = llvm.call @omTensorListCreate(%91, %88, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %156 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

