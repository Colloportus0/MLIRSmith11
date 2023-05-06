module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v3_0", "v0_0"]} {
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
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(-2147483648 : i32) : i32
    %16 = llvm.mlir.constant(2147483647 : i32) : i32
    %17 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %18 = llvm.extractvalue %13[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %19 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.insertvalue %18, %17[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %19, %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.insertvalue %24, %23[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.constant(4 : index) : i64
    %27 = llvm.insertvalue %26, %25[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(4 : index) : i64
    %31 = llvm.insertvalue %30, %29[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = llvm.insertvalue %32, %31[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(2 : index) : i64
    %35 = llvm.insertvalue %34, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(2 : index) : i64
    %37 = llvm.insertvalue %36, %35[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.insertvalue %38, %37[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.mlir.constant(2 : index) : i64
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.mlir.constant(2 : index) : i64
    %46 = llvm.mlir.constant(2 : index) : i64
    %47 = llvm.mlir.constant(2 : index) : i64
    %48 = llvm.mlir.null : !llvm.ptr<i32>
    %49 = llvm.getelementptr %48[%47] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %50 = llvm.ptrtoint %49 : !llvm.ptr<i32> to i64
    %51 = llvm.mlir.constant(16 : index) : i64
    %52 = llvm.add %50, %51  : i64
    %53 = llvm.call @malloc(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.bitcast %53 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %55 = llvm.ptrtoint %54 : !llvm.ptr<i32> to i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.sub %51, %56  : i64
    %58 = llvm.add %55, %57  : i64
    %59 = llvm.urem %58, %51  : i64
    %60 = llvm.sub %58, %59  : i64
    %61 = llvm.inttoptr %60 : i64 to !llvm.ptr<i32>
    %62 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %63 = llvm.insertvalue %54, %62[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %61, %63[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %40, %66[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %41, %67[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %42, %68[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %43, %69[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %46, %70[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %45, %71[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %43, %72[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %44, %73[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%75 : i64)
  ^bb1(%78: i64):  // 2 preds: ^bb0, ^bb11
    %79 = llvm.icmp "slt" %78, %76 : i64
    llvm.cond_br %79, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%80 : i64)
  ^bb3(%83: i64):  // 2 preds: ^bb2, ^bb10
    %84 = llvm.icmp "slt" %83, %81 : i64
    llvm.cond_br %84, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%85 : i64)
  ^bb5(%88: i64):  // 2 preds: ^bb4, ^bb9
    %89 = llvm.icmp "slt" %88, %86 : i64
    llvm.cond_br %89, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.mlir.constant(2 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%90 : i64)
  ^bb7(%93: i64):  // 2 preds: ^bb6, ^bb8
    %94 = llvm.icmp "slt" %93, %91 : i64
    llvm.cond_br %94, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %95 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.mul %78, %96  : i64
    %98 = llvm.mlir.constant(2 : index) : i64
    %99 = llvm.mul %83, %98  : i64
    %100 = llvm.add %97, %99  : i64
    %101 = llvm.mlir.constant(2 : index) : i64
    %102 = llvm.mul %88, %101  : i64
    %103 = llvm.add %100, %102  : i64
    %104 = llvm.add %103, %93  : i64
    %105 = llvm.getelementptr %95[%104] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %16, %105 : !llvm.ptr<i32>
    %106 = llvm.add %93, %92  : i64
    llvm.br ^bb7(%106 : i64)
  ^bb9:  // pred: ^bb7
    %107 = llvm.add %88, %87  : i64
    llvm.br ^bb5(%107 : i64)
  ^bb10:  // pred: ^bb5
    %108 = llvm.add %83, %82  : i64
    llvm.br ^bb3(%108 : i64)
  ^bb11:  // pred: ^bb3
    %109 = llvm.add %78, %77  : i64
    llvm.br ^bb1(%109 : i64)
  ^bb12:  // pred: ^bb1
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%110 : i64)
  ^bb13(%113: i64):  // 2 preds: ^bb12, ^bb26
    %114 = llvm.icmp "slt" %113, %111 : i64
    llvm.cond_br %114, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%115 : i64)
  ^bb15(%118: i64):  // 2 preds: ^bb14, ^bb25
    %119 = llvm.icmp "slt" %118, %116 : i64
    llvm.cond_br %119, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%120 : i64)
  ^bb17(%123: i64):  // 2 preds: ^bb16, ^bb24
    %124 = llvm.icmp "slt" %123, %121 : i64
    llvm.cond_br %124, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %125 = llvm.mlir.constant(0 : index) : i64
    %126 = llvm.mlir.constant(2 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%125 : i64)
  ^bb19(%128: i64):  // 2 preds: ^bb18, ^bb23
    %129 = llvm.icmp "slt" %128, %126 : i64
    llvm.cond_br %129, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %130 = llvm.mlir.constant(0 : index) : i64
    %131 = llvm.mlir.constant(2 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%130 : i64)
  ^bb21(%133: i64):  // 2 preds: ^bb20, ^bb22
    %134 = llvm.icmp "slt" %133, %131 : i64
    llvm.cond_br %134, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %135 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %136 = llvm.mlir.constant(4 : index) : i64
    %137 = llvm.mul %113, %136  : i64
    %138 = llvm.mlir.constant(4 : index) : i64
    %139 = llvm.mul %118, %138  : i64
    %140 = llvm.add %137, %139  : i64
    %141 = llvm.mlir.constant(4 : index) : i64
    %142 = llvm.mul %123, %141  : i64
    %143 = llvm.add %140, %142  : i64
    %144 = llvm.mlir.constant(2 : index) : i64
    %145 = llvm.mul %128, %144  : i64
    %146 = llvm.add %143, %145  : i64
    %147 = llvm.add %146, %133  : i64
    %148 = llvm.getelementptr %135[%147] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %149 = llvm.load %148 : !llvm.ptr<i32>
    %150 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.mlir.constant(2 : index) : i64
    %152 = llvm.mul %113, %151  : i64
    %153 = llvm.mlir.constant(2 : index) : i64
    %154 = llvm.mul %118, %153  : i64
    %155 = llvm.add %152, %154  : i64
    %156 = llvm.mlir.constant(2 : index) : i64
    %157 = llvm.mul %123, %156  : i64
    %158 = llvm.add %155, %157  : i64
    %159 = llvm.add %158, %128  : i64
    %160 = llvm.getelementptr %150[%159] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %161 = llvm.load %160 : !llvm.ptr<i32>
    %162 = llvm.icmp "slt" %161, %149 : i32
    %163 = llvm.select %162, %161, %149 : i1, i32
    %164 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.mlir.constant(2 : index) : i64
    %166 = llvm.mul %113, %165  : i64
    %167 = llvm.mlir.constant(2 : index) : i64
    %168 = llvm.mul %118, %167  : i64
    %169 = llvm.add %166, %168  : i64
    %170 = llvm.mlir.constant(2 : index) : i64
    %171 = llvm.mul %123, %170  : i64
    %172 = llvm.add %169, %171  : i64
    %173 = llvm.add %172, %128  : i64
    %174 = llvm.getelementptr %164[%173] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %163, %174 : !llvm.ptr<i32>
    %175 = llvm.add %133, %132  : i64
    llvm.br ^bb21(%175 : i64)
  ^bb23:  // pred: ^bb21
    %176 = llvm.add %128, %127  : i64
    llvm.br ^bb19(%176 : i64)
  ^bb24:  // pred: ^bb19
    %177 = llvm.add %123, %122  : i64
    llvm.br ^bb17(%177 : i64)
  ^bb25:  // pred: ^bb17
    %178 = llvm.add %118, %117  : i64
    llvm.br ^bb15(%178 : i64)
  ^bb26:  // pred: ^bb15
    %179 = llvm.add %113, %112  : i64
    llvm.br ^bb13(%179 : i64)
  ^bb27:  // pred: ^bb13
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.constant(2 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.constant(2 : index) : i64
    %185 = llvm.mlir.constant(2 : index) : i64
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
    llvm.br ^bb28(%211 : i64)
  ^bb28(%214: i64):  // 2 preds: ^bb27, ^bb35
    %215 = llvm.icmp "slt" %214, %212 : i64
    llvm.cond_br %215, ^bb29, ^bb36
  ^bb29:  // pred: ^bb28
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%216 : i64)
  ^bb30(%219: i64):  // 2 preds: ^bb29, ^bb34
    %220 = llvm.icmp "slt" %219, %217 : i64
    llvm.cond_br %220, ^bb31, ^bb35
  ^bb31:  // pred: ^bb30
    %221 = llvm.mlir.constant(0 : index) : i64
    %222 = llvm.mlir.constant(2 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%221 : i64)
  ^bb32(%224: i64):  // 2 preds: ^bb31, ^bb33
    %225 = llvm.icmp "slt" %224, %222 : i64
    llvm.cond_br %225, ^bb33, ^bb34
  ^bb33:  // pred: ^bb32
    %226 = llvm.extractvalue %210[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %227 = llvm.mlir.constant(2 : index) : i64
    %228 = llvm.mul %214, %227  : i64
    %229 = llvm.mlir.constant(2 : index) : i64
    %230 = llvm.mul %219, %229  : i64
    %231 = llvm.add %228, %230  : i64
    %232 = llvm.add %231, %224  : i64
    %233 = llvm.getelementptr %226[%232] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %15, %233 : !llvm.ptr<i32>
    %234 = llvm.add %224, %223  : i64
    llvm.br ^bb32(%234 : i64)
  ^bb34:  // pred: ^bb32
    %235 = llvm.add %219, %218  : i64
    llvm.br ^bb30(%235 : i64)
  ^bb35:  // pred: ^bb30
    %236 = llvm.add %214, %213  : i64
    llvm.br ^bb28(%236 : i64)
  ^bb36:  // pred: ^bb28
    %237 = llvm.mlir.constant(0 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%237 : i64)
  ^bb37(%240: i64):  // 2 preds: ^bb36, ^bb47
    %241 = llvm.icmp "slt" %240, %238 : i64
    llvm.cond_br %241, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%242 : i64)
  ^bb39(%245: i64):  // 2 preds: ^bb38, ^bb46
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%247 : i64)
  ^bb41(%250: i64):  // 2 preds: ^bb40, ^bb45
    %251 = llvm.icmp "slt" %250, %248 : i64
    llvm.cond_br %251, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.mlir.constant(2 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%252 : i64)
  ^bb43(%255: i64):  // 2 preds: ^bb42, ^bb44
    %256 = llvm.icmp "slt" %255, %253 : i64
    llvm.cond_br %256, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %257 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.mlir.constant(2 : index) : i64
    %259 = llvm.mul %240, %258  : i64
    %260 = llvm.mlir.constant(2 : index) : i64
    %261 = llvm.mul %245, %260  : i64
    %262 = llvm.add %259, %261  : i64
    %263 = llvm.mlir.constant(2 : index) : i64
    %264 = llvm.mul %250, %263  : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.add %265, %255  : i64
    %267 = llvm.getelementptr %257[%266] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %268 = llvm.load %267 : !llvm.ptr<i32>
    %269 = llvm.extractvalue %210[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %270 = llvm.mlir.constant(2 : index) : i64
    %271 = llvm.mul %245, %270  : i64
    %272 = llvm.mlir.constant(2 : index) : i64
    %273 = llvm.mul %250, %272  : i64
    %274 = llvm.add %271, %273  : i64
    %275 = llvm.add %274, %255  : i64
    %276 = llvm.getelementptr %269[%275] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %277 = llvm.load %276 : !llvm.ptr<i32>
    %278 = llvm.icmp "sgt" %277, %268 : i32
    %279 = llvm.select %278, %277, %268 : i1, i32
    %280 = llvm.extractvalue %210[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %281 = llvm.mlir.constant(2 : index) : i64
    %282 = llvm.mul %245, %281  : i64
    %283 = llvm.mlir.constant(2 : index) : i64
    %284 = llvm.mul %250, %283  : i64
    %285 = llvm.add %282, %284  : i64
    %286 = llvm.add %285, %255  : i64
    %287 = llvm.getelementptr %280[%286] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %279, %287 : !llvm.ptr<i32>
    %288 = llvm.add %255, %254  : i64
    llvm.br ^bb43(%288 : i64)
  ^bb45:  // pred: ^bb43
    %289 = llvm.add %250, %249  : i64
    llvm.br ^bb41(%289 : i64)
  ^bb46:  // pred: ^bb41
    %290 = llvm.add %245, %244  : i64
    llvm.br ^bb39(%290 : i64)
  ^bb47:  // pred: ^bb39
    %291 = llvm.add %240, %239  : i64
    llvm.br ^bb37(%291 : i64)
  ^bb48:  // pred: ^bb37
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.constant(2 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.constant(2 : index) : i64
    %297 = llvm.mlir.constant(2 : index) : i64
    %298 = llvm.mlir.null : !llvm.ptr<i32>
    %299 = llvm.getelementptr %298[%297] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %300 = llvm.ptrtoint %299 : !llvm.ptr<i32> to i64
    %301 = llvm.mlir.constant(16 : index) : i64
    %302 = llvm.add %300, %301  : i64
    %303 = llvm.call @malloc(%302) : (i64) -> !llvm.ptr<i8>
    %304 = llvm.bitcast %303 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %305 = llvm.ptrtoint %304 : !llvm.ptr<i32> to i64
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.sub %301, %306  : i64
    %308 = llvm.add %305, %307  : i64
    %309 = llvm.urem %308, %301  : i64
    %310 = llvm.sub %308, %309  : i64
    %311 = llvm.inttoptr %310 : i64 to !llvm.ptr<i32>
    %312 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %313 = llvm.insertvalue %304, %312[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %314 = llvm.insertvalue %311, %313[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.insertvalue %315, %314[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %317 = llvm.insertvalue %292, %316[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %318 = llvm.insertvalue %293, %317[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %319 = llvm.insertvalue %294, %318[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %320 = llvm.insertvalue %296, %319[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %321 = llvm.insertvalue %294, %320[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %322 = llvm.insertvalue %295, %321[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%323 : i64)
  ^bb49(%326: i64):  // 2 preds: ^bb48, ^bb56
    %327 = llvm.icmp "slt" %326, %324 : i64
    llvm.cond_br %327, ^bb50, ^bb57
  ^bb50:  // pred: ^bb49
    %328 = llvm.mlir.constant(0 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%328 : i64)
  ^bb51(%331: i64):  // 2 preds: ^bb50, ^bb55
    %332 = llvm.icmp "slt" %331, %329 : i64
    llvm.cond_br %332, ^bb52, ^bb56
  ^bb52:  // pred: ^bb51
    %333 = llvm.mlir.constant(0 : index) : i64
    %334 = llvm.mlir.constant(2 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%333 : i64)
  ^bb53(%336: i64):  // 2 preds: ^bb52, ^bb54
    %337 = llvm.icmp "slt" %336, %334 : i64
    llvm.cond_br %337, ^bb54, ^bb55
  ^bb54:  // pred: ^bb53
    %338 = llvm.extractvalue %322[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %339 = llvm.mlir.constant(2 : index) : i64
    %340 = llvm.mul %326, %339  : i64
    %341 = llvm.mlir.constant(2 : index) : i64
    %342 = llvm.mul %331, %341  : i64
    %343 = llvm.add %340, %342  : i64
    %344 = llvm.add %343, %336  : i64
    %345 = llvm.getelementptr %338[%344] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %15, %345 : !llvm.ptr<i32>
    %346 = llvm.add %336, %335  : i64
    llvm.br ^bb53(%346 : i64)
  ^bb55:  // pred: ^bb53
    %347 = llvm.add %331, %330  : i64
    llvm.br ^bb51(%347 : i64)
  ^bb56:  // pred: ^bb51
    %348 = llvm.add %326, %325  : i64
    llvm.br ^bb49(%348 : i64)
  ^bb57:  // pred: ^bb49
    %349 = llvm.mlir.constant(0 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%349 : i64)
  ^bb58(%352: i64):  // 2 preds: ^bb57, ^bb68
    %353 = llvm.icmp "slt" %352, %350 : i64
    llvm.cond_br %353, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %354 = llvm.mlir.constant(0 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%354 : i64)
  ^bb60(%357: i64):  // 2 preds: ^bb59, ^bb67
    %358 = llvm.icmp "slt" %357, %355 : i64
    llvm.cond_br %358, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %359 = llvm.mlir.constant(0 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%359 : i64)
  ^bb62(%362: i64):  // 2 preds: ^bb61, ^bb66
    %363 = llvm.icmp "slt" %362, %360 : i64
    llvm.cond_br %363, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.mlir.constant(2 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%364 : i64)
  ^bb64(%367: i64):  // 2 preds: ^bb63, ^bb65
    %368 = llvm.icmp "slt" %367, %365 : i64
    llvm.cond_br %368, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %369 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %370 = llvm.mlir.constant(2 : index) : i64
    %371 = llvm.mul %352, %370  : i64
    %372 = llvm.mlir.constant(2 : index) : i64
    %373 = llvm.mul %357, %372  : i64
    %374 = llvm.add %371, %373  : i64
    %375 = llvm.mlir.constant(2 : index) : i64
    %376 = llvm.mul %362, %375  : i64
    %377 = llvm.add %374, %376  : i64
    %378 = llvm.add %377, %367  : i64
    %379 = llvm.getelementptr %369[%378] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %380 = llvm.load %379 : !llvm.ptr<i32>
    %381 = llvm.extractvalue %322[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %382 = llvm.mlir.constant(2 : index) : i64
    %383 = llvm.mul %352, %382  : i64
    %384 = llvm.mlir.constant(2 : index) : i64
    %385 = llvm.mul %357, %384  : i64
    %386 = llvm.add %383, %385  : i64
    %387 = llvm.add %386, %367  : i64
    %388 = llvm.getelementptr %381[%387] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %389 = llvm.load %388 : !llvm.ptr<i32>
    %390 = llvm.icmp "sgt" %389, %380 : i32
    %391 = llvm.select %390, %389, %380 : i1, i32
    %392 = llvm.extractvalue %322[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %393 = llvm.mlir.constant(2 : index) : i64
    %394 = llvm.mul %352, %393  : i64
    %395 = llvm.mlir.constant(2 : index) : i64
    %396 = llvm.mul %357, %395  : i64
    %397 = llvm.add %394, %396  : i64
    %398 = llvm.add %397, %367  : i64
    %399 = llvm.getelementptr %392[%398] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %391, %399 : !llvm.ptr<i32>
    %400 = llvm.add %367, %366  : i64
    llvm.br ^bb64(%400 : i64)
  ^bb66:  // pred: ^bb64
    %401 = llvm.add %362, %361  : i64
    llvm.br ^bb62(%401 : i64)
  ^bb67:  // pred: ^bb62
    %402 = llvm.add %357, %356  : i64
    llvm.br ^bb60(%402 : i64)
  ^bb68:  // pred: ^bb60
    %403 = llvm.add %352, %351  : i64
    llvm.br ^bb58(%403 : i64)
  ^bb69:  // pred: ^bb58
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.mlir.constant(2 : index) : i64
    %408 = llvm.mlir.constant(2 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.mlir.constant(4 : index) : i64
    %411 = llvm.mlir.constant(4 : index) : i64
    %412 = llvm.mlir.constant(4 : index) : i64
    %413 = llvm.mlir.constant(4 : index) : i64
    %414 = llvm.mlir.null : !llvm.ptr<i1>
    %415 = llvm.getelementptr %414[%413] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %416 = llvm.ptrtoint %415 : !llvm.ptr<i1> to i64
    %417 = llvm.mlir.constant(16 : index) : i64
    %418 = llvm.add %416, %417  : i64
    %419 = llvm.call @malloc(%418) : (i64) -> !llvm.ptr<i8>
    %420 = llvm.bitcast %419 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %421 = llvm.ptrtoint %420 : !llvm.ptr<i1> to i64
    %422 = llvm.mlir.constant(1 : index) : i64
    %423 = llvm.sub %417, %422  : i64
    %424 = llvm.add %421, %423  : i64
    %425 = llvm.urem %424, %417  : i64
    %426 = llvm.sub %424, %425  : i64
    %427 = llvm.inttoptr %426 : i64 to !llvm.ptr<i1>
    %428 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>
    %429 = llvm.insertvalue %420, %428[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %430 = llvm.insertvalue %427, %429[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %431 = llvm.mlir.constant(0 : index) : i64
    %432 = llvm.insertvalue %431, %430[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %433 = llvm.insertvalue %404, %432[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %434 = llvm.insertvalue %405, %433[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %435 = llvm.insertvalue %406, %434[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %436 = llvm.insertvalue %407, %435[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %437 = llvm.insertvalue %408, %436[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %438 = llvm.insertvalue %412, %437[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %439 = llvm.insertvalue %411, %438[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %440 = llvm.insertvalue %410, %439[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %441 = llvm.insertvalue %408, %440[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %442 = llvm.insertvalue %409, %441[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %443 = llvm.mlir.constant(0 : index) : i64
    %444 = llvm.mlir.constant(1 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%443 : i64)
  ^bb70(%446: i64):  // 2 preds: ^bb69, ^bb83
    %447 = llvm.icmp "slt" %446, %444 : i64
    llvm.cond_br %447, ^bb71, ^bb84
  ^bb71:  // pred: ^bb70
    %448 = llvm.mlir.constant(0 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%448 : i64)
  ^bb72(%451: i64):  // 2 preds: ^bb71, ^bb82
    %452 = llvm.icmp "slt" %451, %449 : i64
    llvm.cond_br %452, ^bb73, ^bb83
  ^bb73:  // pred: ^bb72
    %453 = llvm.mlir.constant(0 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%453 : i64)
  ^bb74(%456: i64):  // 2 preds: ^bb73, ^bb81
    %457 = llvm.icmp "slt" %456, %454 : i64
    llvm.cond_br %457, ^bb75, ^bb82
  ^bb75:  // pred: ^bb74
    %458 = llvm.mlir.constant(0 : index) : i64
    %459 = llvm.mlir.constant(2 : index) : i64
    %460 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%458 : i64)
  ^bb76(%461: i64):  // 2 preds: ^bb75, ^bb80
    %462 = llvm.icmp "slt" %461, %459 : i64
    llvm.cond_br %462, ^bb77, ^bb81
  ^bb77:  // pred: ^bb76
    %463 = llvm.mlir.constant(0 : index) : i64
    %464 = llvm.mlir.constant(2 : index) : i64
    %465 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb78(%463 : i64)
  ^bb78(%466: i64):  // 2 preds: ^bb77, ^bb79
    %467 = llvm.icmp "slt" %466, %464 : i64
    llvm.cond_br %467, ^bb79, ^bb80
  ^bb79:  // pred: ^bb78
    %468 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %469 = llvm.mlir.constant(4 : index) : i64
    %470 = llvm.mul %446, %469  : i64
    %471 = llvm.mlir.constant(4 : index) : i64
    %472 = llvm.mul %451, %471  : i64
    %473 = llvm.add %470, %472  : i64
    %474 = llvm.mlir.constant(4 : index) : i64
    %475 = llvm.mul %456, %474  : i64
    %476 = llvm.add %473, %475  : i64
    %477 = llvm.mlir.constant(2 : index) : i64
    %478 = llvm.mul %461, %477  : i64
    %479 = llvm.add %476, %478  : i64
    %480 = llvm.add %479, %466  : i64
    %481 = llvm.getelementptr %468[%480] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %482 = llvm.load %481 : !llvm.ptr<i32>
    %483 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %484 = llvm.mlir.constant(2 : index) : i64
    %485 = llvm.mul %451, %484  : i64
    %486 = llvm.mlir.constant(2 : index) : i64
    %487 = llvm.mul %456, %486  : i64
    %488 = llvm.add %485, %487  : i64
    %489 = llvm.mlir.constant(2 : index) : i64
    %490 = llvm.mul %14, %489  : i64
    %491 = llvm.add %488, %490  : i64
    %492 = llvm.add %491, %466  : i64
    %493 = llvm.getelementptr %483[%492] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %494 = llvm.load %493 : !llvm.ptr<i32>
    %495 = llvm.icmp "slt" %482, %494 : i32
    %496 = llvm.extractvalue %442[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %497 = llvm.mlir.constant(4 : index) : i64
    %498 = llvm.mul %446, %497  : i64
    %499 = llvm.mlir.constant(4 : index) : i64
    %500 = llvm.mul %451, %499  : i64
    %501 = llvm.add %498, %500  : i64
    %502 = llvm.mlir.constant(4 : index) : i64
    %503 = llvm.mul %456, %502  : i64
    %504 = llvm.add %501, %503  : i64
    %505 = llvm.mlir.constant(2 : index) : i64
    %506 = llvm.mul %461, %505  : i64
    %507 = llvm.add %504, %506  : i64
    %508 = llvm.add %507, %466  : i64
    %509 = llvm.getelementptr %496[%508] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %495, %509 : !llvm.ptr<i1>
    %510 = llvm.add %466, %465  : i64
    llvm.br ^bb78(%510 : i64)
  ^bb80:  // pred: ^bb78
    %511 = llvm.add %461, %460  : i64
    llvm.br ^bb76(%511 : i64)
  ^bb81:  // pred: ^bb76
    %512 = llvm.add %456, %455  : i64
    llvm.br ^bb74(%512 : i64)
  ^bb82:  // pred: ^bb74
    %513 = llvm.add %451, %450  : i64
    llvm.br ^bb72(%513 : i64)
  ^bb83:  // pred: ^bb72
    %514 = llvm.add %446, %445  : i64
    llvm.br ^bb70(%514 : i64)
  ^bb84:  // pred: ^bb70
    %515 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)>
    %516 = llvm.insertvalue %39, %515[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)> 
    %517 = llvm.insertvalue %210, %516[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)> 
    %518 = llvm.insertvalue %322, %517[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)> 
    %519 = llvm.insertvalue %442, %518[3] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)> 
    llvm.return %519 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v3_0", "v0_0"]} {
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
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)>>
    %52 = llvm.extractvalue %51[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)> 
    %53 = llvm.extractvalue %51[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)> 
    %54 = llvm.extractvalue %51[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)> 
    %55 = llvm.extractvalue %51[3] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>)> 
    %56 = llvm.mlir.constant(4 : i64) : i64
    %57 = llvm.mlir.constant(32 : i64) : i64
    %58 = llvm.call @malloc(%57) : (i64) -> !llvm.ptr<i8>
    %59 = llvm.bitcast %58 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %60 = llvm.mlir.constant(4 : i64) : i64
    %61 = llvm.call @omTensorCreateUntyped(%60) : (i64) -> !llvm.ptr<i8>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.bitcast %63 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %65 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.bitcast %65 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%61, %62, %64, %66) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %67 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%61, %67) : (!llvm.ptr<i8>, i64) -> ()
    %68 = llvm.call @omTensorGetShape(%61) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %69 = llvm.call @omTensorGetStrides(%61) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %70 = llvm.mlir.constant(0 : i64) : i64
    %71 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.getelementptr %68[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %69[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.mlir.constant(1 : i64) : i64
    %76 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.getelementptr %68[%75] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %69[%75] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.mlir.constant(2 : i64) : i64
    %81 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %68[%80] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.getelementptr %69[%80] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %83, %84 : !llvm.ptr<i64>
    %85 = llvm.mlir.constant(3 : i64) : i64
    %86 = llvm.extractvalue %52[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.getelementptr %68[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.extractvalue %52[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %69[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %88, %89 : !llvm.ptr<i64>
    %90 = llvm.mlir.constant(0 : i64) : i64
    %91 = llvm.getelementptr %59[%90] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %61, %91 : !llvm.ptr<ptr<i8>>
    %92 = llvm.mlir.constant(3 : i64) : i64
    %93 = llvm.call @omTensorCreateUntyped(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %97 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%93, %94, %96, %98) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %99 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%93, %99) : (!llvm.ptr<i8>, i64) -> ()
    %100 = llvm.call @omTensorGetShape(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.call @omTensorGetStrides(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.mlir.constant(0 : i64) : i64
    %103 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %104 = llvm.getelementptr %100[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %106 = llvm.getelementptr %101[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.getelementptr %100[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %111 = llvm.getelementptr %101[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %114 = llvm.getelementptr %100[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %116 = llvm.getelementptr %101[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(1 : i64) : i64
    %118 = llvm.getelementptr %59[%117] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %93, %118 : !llvm.ptr<ptr<i8>>
    %119 = llvm.mlir.constant(3 : i64) : i64
    %120 = llvm.call @omTensorCreateUntyped(%119) : (i64) -> !llvm.ptr<i8>
    %121 = llvm.mlir.constant(1 : i64) : i64
    %122 = llvm.extractvalue %54[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %123 = llvm.bitcast %122 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %124 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %125 = llvm.bitcast %124 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%120, %121, %123, %125) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %126 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%120, %126) : (!llvm.ptr<i8>, i64) -> ()
    %127 = llvm.call @omTensorGetShape(%120) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %128 = llvm.call @omTensorGetStrides(%120) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %129 = llvm.mlir.constant(0 : i64) : i64
    %130 = llvm.extractvalue %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %131 = llvm.getelementptr %127[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.extractvalue %54[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %133 = llvm.getelementptr %128[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.mlir.constant(1 : i64) : i64
    %135 = llvm.extractvalue %54[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %136 = llvm.getelementptr %127[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %54[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %138 = llvm.getelementptr %128[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.mlir.constant(2 : i64) : i64
    %140 = llvm.extractvalue %54[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %141 = llvm.getelementptr %127[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.extractvalue %54[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %143 = llvm.getelementptr %128[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.mlir.constant(2 : i64) : i64
    %145 = llvm.getelementptr %59[%144] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %120, %145 : !llvm.ptr<ptr<i8>>
    %146 = llvm.mlir.constant(5 : i64) : i64
    %147 = llvm.call @omTensorCreateUntyped(%146) : (i64) -> !llvm.ptr<i8>
    %148 = llvm.mlir.constant(1 : i64) : i64
    %149 = llvm.extractvalue %55[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %150 = llvm.bitcast %149 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %151 = llvm.extractvalue %55[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %152 = llvm.bitcast %151 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%147, %148, %150, %152) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %153 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%147, %153) : (!llvm.ptr<i8>, i64) -> ()
    %154 = llvm.call @omTensorGetShape(%147) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %155 = llvm.call @omTensorGetStrides(%147) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %156 = llvm.mlir.constant(0 : i64) : i64
    %157 = llvm.extractvalue %55[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %158 = llvm.getelementptr %154[%156] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %157, %158 : !llvm.ptr<i64>
    %159 = llvm.extractvalue %55[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %160 = llvm.getelementptr %155[%156] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %159, %160 : !llvm.ptr<i64>
    %161 = llvm.mlir.constant(1 : i64) : i64
    %162 = llvm.extractvalue %55[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %163 = llvm.getelementptr %154[%161] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %162, %163 : !llvm.ptr<i64>
    %164 = llvm.extractvalue %55[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %165 = llvm.getelementptr %155[%161] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %164, %165 : !llvm.ptr<i64>
    %166 = llvm.mlir.constant(2 : i64) : i64
    %167 = llvm.extractvalue %55[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %168 = llvm.getelementptr %154[%166] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %167, %168 : !llvm.ptr<i64>
    %169 = llvm.extractvalue %55[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %170 = llvm.getelementptr %155[%166] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %169, %170 : !llvm.ptr<i64>
    %171 = llvm.mlir.constant(3 : i64) : i64
    %172 = llvm.extractvalue %55[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %173 = llvm.getelementptr %154[%171] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %172, %173 : !llvm.ptr<i64>
    %174 = llvm.extractvalue %55[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %175 = llvm.getelementptr %155[%171] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %174, %175 : !llvm.ptr<i64>
    %176 = llvm.mlir.constant(4 : i64) : i64
    %177 = llvm.extractvalue %55[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %178 = llvm.getelementptr %154[%176] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %177, %178 : !llvm.ptr<i64>
    %179 = llvm.extractvalue %55[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %180 = llvm.getelementptr %155[%176] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %179, %180 : !llvm.ptr<i64>
    %181 = llvm.mlir.constant(3 : i64) : i64
    %182 = llvm.getelementptr %59[%181] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %147, %182 : !llvm.ptr<ptr<i8>>
    %183 = llvm.call @omTensorListCreate(%59, %56, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %183 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<276 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<276 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

