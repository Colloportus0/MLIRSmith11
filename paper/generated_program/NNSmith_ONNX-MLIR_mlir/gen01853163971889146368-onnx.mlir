module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [2 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [4 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)> attributes {input_names = ["v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v2_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %arg16, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg17, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.mlir.constant(-9223372036854775808 : i64) : i64
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.mlir.constant(2 : index) : i64
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.mlir.constant(2 : index) : i64
    %25 = llvm.mlir.constant(2 : index) : i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.mlir.constant(4 : index) : i64
    %28 = llvm.mlir.constant(4 : index) : i64
    %29 = llvm.mlir.constant(8 : index) : i64
    %30 = llvm.mlir.null : !llvm.ptr<i32>
    %31 = llvm.getelementptr %30[%29] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %32 = llvm.ptrtoint %31 : !llvm.ptr<i32> to i64
    %33 = llvm.mlir.constant(16 : index) : i64
    %34 = llvm.add %32, %33  : i64
    %35 = llvm.call @malloc(%34) : (i64) -> !llvm.ptr<i8>
    %36 = llvm.bitcast %35 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %37 = llvm.ptrtoint %36 : !llvm.ptr<i32> to i64
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.sub %33, %38  : i64
    %40 = llvm.add %37, %39  : i64
    %41 = llvm.urem %40, %33  : i64
    %42 = llvm.sub %40, %41  : i64
    %43 = llvm.inttoptr %42 : i64 to !llvm.ptr<i32>
    %44 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %45 = llvm.insertvalue %36, %44[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %43, %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.mlir.constant(0 : index) : i64
    %48 = llvm.insertvalue %47, %46[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.insertvalue %22, %48[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %23, %49[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %24, %50[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %25, %51[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.insertvalue %28, %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %27, %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %25, %54[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %26, %55[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(0 : index) : i64
    %58 = llvm.mlir.constant(2 : index) : i64
    %59 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%57 : i64)
  ^bb1(%60: i64):  // 2 preds: ^bb0, ^bb11
    %61 = llvm.icmp "slt" %60, %58 : i64
    llvm.cond_br %61, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%62 : i64)
  ^bb3(%65: i64):  // 2 preds: ^bb2, ^bb10
    %66 = llvm.icmp "slt" %65, %63 : i64
    llvm.cond_br %66, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.mlir.constant(2 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%67 : i64)
  ^bb5(%70: i64):  // 2 preds: ^bb4, ^bb9
    %71 = llvm.icmp "slt" %70, %68 : i64
    llvm.cond_br %71, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.mlir.constant(2 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%72 : i64)
  ^bb7(%75: i64):  // 2 preds: ^bb6, ^bb8
    %76 = llvm.icmp "slt" %75, %73 : i64
    llvm.cond_br %76, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %77 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.mlir.constant(2 : index) : i64
    %79 = llvm.mul %21, %78  : i64
    %80 = llvm.add %79, %75  : i64
    %81 = llvm.getelementptr %77[%80] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %82 = llvm.load %81 : !llvm.ptr<i32>
    %83 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(4 : index) : i64
    %85 = llvm.mul %60, %84  : i64
    %86 = llvm.mlir.constant(4 : index) : i64
    %87 = llvm.mul %65, %86  : i64
    %88 = llvm.add %85, %87  : i64
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mul %70, %89  : i64
    %91 = llvm.add %88, %90  : i64
    %92 = llvm.add %91, %75  : i64
    %93 = llvm.getelementptr %83[%92] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %94 = llvm.load %93 : !llvm.ptr<i32>
    %95 = llvm.mul %82, %94  : i32
    %96 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(4 : index) : i64
    %98 = llvm.mul %60, %97  : i64
    %99 = llvm.mlir.constant(4 : index) : i64
    %100 = llvm.mul %65, %99  : i64
    %101 = llvm.add %98, %100  : i64
    %102 = llvm.mlir.constant(2 : index) : i64
    %103 = llvm.mul %70, %102  : i64
    %104 = llvm.add %101, %103  : i64
    %105 = llvm.add %104, %75  : i64
    %106 = llvm.getelementptr %96[%105] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %95, %106 : !llvm.ptr<i32>
    %107 = llvm.add %75, %74  : i64
    llvm.br ^bb7(%107 : i64)
  ^bb9:  // pred: ^bb7
    %108 = llvm.add %70, %69  : i64
    llvm.br ^bb5(%108 : i64)
  ^bb10:  // pred: ^bb5
    %109 = llvm.add %65, %64  : i64
    llvm.br ^bb3(%109 : i64)
  ^bb11:  // pred: ^bb3
    %110 = llvm.add %60, %59  : i64
    llvm.br ^bb1(%110 : i64)
  ^bb12:  // pred: ^bb1
    %111 = llvm.mlir.constant(2 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.constant(4 : index) : i64
    %117 = llvm.mlir.constant(4 : index) : i64
    %118 = llvm.mlir.constant(8 : index) : i64
    %119 = llvm.mlir.null : !llvm.ptr<i64>
    %120 = llvm.getelementptr %119[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %121 = llvm.ptrtoint %120 : !llvm.ptr<i64> to i64
    %122 = llvm.mlir.constant(16 : index) : i64
    %123 = llvm.add %121, %122  : i64
    %124 = llvm.call @malloc(%123) : (i64) -> !llvm.ptr<i8>
    %125 = llvm.bitcast %124 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %126 = llvm.ptrtoint %125 : !llvm.ptr<i64> to i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.sub %122, %127  : i64
    %129 = llvm.add %126, %128  : i64
    %130 = llvm.urem %129, %122  : i64
    %131 = llvm.sub %129, %130  : i64
    %132 = llvm.inttoptr %131 : i64 to !llvm.ptr<i64>
    %133 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %134 = llvm.insertvalue %125, %133[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %132, %134[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.insertvalue %136, %135[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.insertvalue %111, %137[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.insertvalue %112, %138[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.insertvalue %113, %139[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.insertvalue %114, %140[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.insertvalue %117, %141[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.insertvalue %116, %142[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %114, %143[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %115, %144[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.mlir.constant(2 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%146 : i64)
  ^bb13(%149: i64):  // 2 preds: ^bb12, ^bb23
    %150 = llvm.icmp "slt" %149, %147 : i64
    llvm.cond_br %150, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %151 = llvm.mlir.constant(0 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%151 : i64)
  ^bb15(%154: i64):  // 2 preds: ^bb14, ^bb22
    %155 = llvm.icmp "slt" %154, %152 : i64
    llvm.cond_br %155, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.mlir.constant(2 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%156 : i64)
  ^bb17(%159: i64):  // 2 preds: ^bb16, ^bb21
    %160 = llvm.icmp "slt" %159, %157 : i64
    llvm.cond_br %160, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(2 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%161 : i64)
  ^bb19(%164: i64):  // 2 preds: ^bb18, ^bb20
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %166 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.mlir.constant(4 : index) : i64
    %168 = llvm.mul %149, %167  : i64
    %169 = llvm.mlir.constant(4 : index) : i64
    %170 = llvm.mul %154, %169  : i64
    %171 = llvm.add %168, %170  : i64
    %172 = llvm.mlir.constant(2 : index) : i64
    %173 = llvm.mul %159, %172  : i64
    %174 = llvm.add %171, %173  : i64
    %175 = llvm.add %174, %164  : i64
    %176 = llvm.getelementptr %166[%175] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %177 = llvm.load %176 : !llvm.ptr<i32>
    %178 = llvm.sext %177 : i32 to i64
    %179 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.mlir.constant(4 : index) : i64
    %181 = llvm.mul %149, %180  : i64
    %182 = llvm.mlir.constant(4 : index) : i64
    %183 = llvm.mul %154, %182  : i64
    %184 = llvm.add %181, %183  : i64
    %185 = llvm.mlir.constant(2 : index) : i64
    %186 = llvm.mul %159, %185  : i64
    %187 = llvm.add %184, %186  : i64
    %188 = llvm.add %187, %164  : i64
    %189 = llvm.getelementptr %179[%188] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %178, %189 : !llvm.ptr<i64>
    %190 = llvm.add %164, %163  : i64
    llvm.br ^bb19(%190 : i64)
  ^bb21:  // pred: ^bb19
    %191 = llvm.add %159, %158  : i64
    llvm.br ^bb17(%191 : i64)
  ^bb22:  // pred: ^bb17
    %192 = llvm.add %154, %153  : i64
    llvm.br ^bb15(%192 : i64)
  ^bb23:  // pred: ^bb15
    %193 = llvm.add %149, %148  : i64
    llvm.br ^bb13(%193 : i64)
  ^bb24:  // pred: ^bb13
    %194 = llvm.mlir.constant(2 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.mlir.constant(2 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.mlir.constant(2 : index) : i64
    %199 = llvm.mlir.constant(4 : index) : i64
    %200 = llvm.mlir.null : !llvm.ptr<i64>
    %201 = llvm.getelementptr %200[%199] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %202 = llvm.ptrtoint %201 : !llvm.ptr<i64> to i64
    %203 = llvm.mlir.constant(16 : index) : i64
    %204 = llvm.add %202, %203  : i64
    %205 = llvm.call @malloc(%204) : (i64) -> !llvm.ptr<i8>
    %206 = llvm.bitcast %205 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %207 = llvm.ptrtoint %206 : !llvm.ptr<i64> to i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.sub %203, %208  : i64
    %210 = llvm.add %207, %209  : i64
    %211 = llvm.urem %210, %203  : i64
    %212 = llvm.sub %210, %211  : i64
    %213 = llvm.inttoptr %212 : i64 to !llvm.ptr<i64>
    %214 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %215 = llvm.insertvalue %206, %214[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %216 = llvm.insertvalue %213, %215[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.insertvalue %217, %216[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %219 = llvm.insertvalue %194, %218[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %220 = llvm.insertvalue %195, %219[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %221 = llvm.insertvalue %196, %220[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %222 = llvm.insertvalue %198, %221[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %223 = llvm.insertvalue %196, %222[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %224 = llvm.insertvalue %197, %223[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.mlir.constant(2 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%225 : i64)
  ^bb25(%228: i64):  // 2 preds: ^bb24, ^bb32
    %229 = llvm.icmp "slt" %228, %226 : i64
    llvm.cond_br %229, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%230 : i64)
  ^bb27(%233: i64):  // 2 preds: ^bb26, ^bb31
    %234 = llvm.icmp "slt" %233, %231 : i64
    llvm.cond_br %234, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%235 : i64)
  ^bb29(%238: i64):  // 2 preds: ^bb28, ^bb30
    %239 = llvm.icmp "slt" %238, %236 : i64
    llvm.cond_br %239, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %240 = llvm.extractvalue %224[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %241 = llvm.mlir.constant(2 : index) : i64
    %242 = llvm.mul %228, %241  : i64
    %243 = llvm.mlir.constant(2 : index) : i64
    %244 = llvm.mul %233, %243  : i64
    %245 = llvm.add %242, %244  : i64
    %246 = llvm.add %245, %238  : i64
    %247 = llvm.getelementptr %240[%246] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %20, %247 : !llvm.ptr<i64>
    %248 = llvm.add %238, %237  : i64
    llvm.br ^bb29(%248 : i64)
  ^bb31:  // pred: ^bb29
    %249 = llvm.add %233, %232  : i64
    llvm.br ^bb27(%249 : i64)
  ^bb32:  // pred: ^bb27
    %250 = llvm.add %228, %227  : i64
    llvm.br ^bb25(%250 : i64)
  ^bb33:  // pred: ^bb25
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(2 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%251 : i64)
  ^bb34(%254: i64):  // 2 preds: ^bb33, ^bb44
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%256 : i64)
  ^bb36(%259: i64):  // 2 preds: ^bb35, ^bb43
    %260 = llvm.icmp "slt" %259, %257 : i64
    llvm.cond_br %260, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %261 = llvm.mlir.constant(0 : index) : i64
    %262 = llvm.mlir.constant(2 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%261 : i64)
  ^bb38(%264: i64):  // 2 preds: ^bb37, ^bb42
    %265 = llvm.icmp "slt" %264, %262 : i64
    llvm.cond_br %265, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %266 = llvm.mlir.constant(0 : index) : i64
    %267 = llvm.mlir.constant(2 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%266 : i64)
  ^bb40(%269: i64):  // 2 preds: ^bb39, ^bb41
    %270 = llvm.icmp "slt" %269, %267 : i64
    llvm.cond_br %270, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %271 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.mlir.constant(4 : index) : i64
    %273 = llvm.mul %254, %272  : i64
    %274 = llvm.mlir.constant(4 : index) : i64
    %275 = llvm.mul %259, %274  : i64
    %276 = llvm.add %273, %275  : i64
    %277 = llvm.mlir.constant(2 : index) : i64
    %278 = llvm.mul %264, %277  : i64
    %279 = llvm.add %276, %278  : i64
    %280 = llvm.add %279, %269  : i64
    %281 = llvm.getelementptr %271[%280] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %282 = llvm.load %281 : !llvm.ptr<i64>
    %283 = llvm.extractvalue %224[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mul %254, %284  : i64
    %286 = llvm.mlir.constant(2 : index) : i64
    %287 = llvm.mul %259, %286  : i64
    %288 = llvm.add %285, %287  : i64
    %289 = llvm.add %288, %264  : i64
    %290 = llvm.getelementptr %283[%289] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %291 = llvm.load %290 : !llvm.ptr<i64>
    %292 = llvm.icmp "sgt" %291, %282 : i64
    %293 = llvm.select %292, %291, %282 : i1, i64
    %294 = llvm.extractvalue %224[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %295 = llvm.mlir.constant(2 : index) : i64
    %296 = llvm.mul %254, %295  : i64
    %297 = llvm.mlir.constant(2 : index) : i64
    %298 = llvm.mul %259, %297  : i64
    %299 = llvm.add %296, %298  : i64
    %300 = llvm.add %299, %264  : i64
    %301 = llvm.getelementptr %294[%300] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %293, %301 : !llvm.ptr<i64>
    %302 = llvm.add %269, %268  : i64
    llvm.br ^bb40(%302 : i64)
  ^bb42:  // pred: ^bb40
    %303 = llvm.add %264, %263  : i64
    llvm.br ^bb38(%303 : i64)
  ^bb43:  // pred: ^bb38
    %304 = llvm.add %259, %258  : i64
    llvm.br ^bb36(%304 : i64)
  ^bb44:  // pred: ^bb36
    %305 = llvm.add %254, %253  : i64
    llvm.br ^bb34(%305 : i64)
  ^bb45:  // pred: ^bb34
    %306 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %307 = llvm.extractvalue %56[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.insertvalue %307, %306[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %310 = llvm.insertvalue %308, %309[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.insertvalue %311, %310[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %313 = llvm.mlir.constant(4 : index) : i64
    %314 = llvm.insertvalue %313, %312[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.insertvalue %315, %314[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %317 = llvm.mlir.constant(2 : index) : i64
    %318 = llvm.insertvalue %317, %316[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.insertvalue %319, %318[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %321 = llvm.mlir.constant(4 : index) : i64
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    %324 = llvm.mlir.constant(8 : index) : i64
    %325 = llvm.mlir.null : !llvm.ptr<i1>
    %326 = llvm.getelementptr %325[%324] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %327 = llvm.ptrtoint %326 : !llvm.ptr<i1> to i64
    %328 = llvm.mlir.constant(16 : index) : i64
    %329 = llvm.add %327, %328  : i64
    %330 = llvm.call @malloc(%329) : (i64) -> !llvm.ptr<i8>
    %331 = llvm.bitcast %330 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %332 = llvm.ptrtoint %331 : !llvm.ptr<i1> to i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.sub %328, %333  : i64
    %335 = llvm.add %332, %334  : i64
    %336 = llvm.urem %335, %328  : i64
    %337 = llvm.sub %335, %336  : i64
    %338 = llvm.inttoptr %337 : i64 to !llvm.ptr<i1>
    %339 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>
    %340 = llvm.insertvalue %331, %339[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %341 = llvm.insertvalue %338, %340[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.insertvalue %342, %341[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %344 = llvm.insertvalue %321, %343[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %345 = llvm.insertvalue %322, %344[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %346 = llvm.insertvalue %322, %345[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %347 = llvm.insertvalue %323, %346[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %348 = llvm.mlir.constant(0 : index) : i64
    %349 = llvm.mlir.constant(4 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%348 : i64)
  ^bb46(%351: i64):  // 2 preds: ^bb45, ^bb50
    %352 = llvm.icmp "slt" %351, %349 : i64
    llvm.cond_br %352, ^bb47, ^bb51
  ^bb47:  // pred: ^bb46
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.mlir.constant(2 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%353 : i64)
  ^bb48(%356: i64):  // 2 preds: ^bb47, ^bb49
    %357 = llvm.icmp "slt" %356, %354 : i64
    llvm.cond_br %357, ^bb49, ^bb50
  ^bb49:  // pred: ^bb48
    %358 = llvm.extractvalue %320[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %359 = llvm.mlir.constant(2 : index) : i64
    %360 = llvm.mul %351, %359  : i64
    %361 = llvm.add %360, %356  : i64
    %362 = llvm.getelementptr %358[%361] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %363 = llvm.load %362 : !llvm.ptr<i32>
    %364 = llvm.extractvalue %320[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %365 = llvm.mlir.constant(2 : index) : i64
    %366 = llvm.mul %351, %365  : i64
    %367 = llvm.add %366, %356  : i64
    %368 = llvm.getelementptr %364[%367] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %369 = llvm.load %368 : !llvm.ptr<i32>
    %370 = llvm.icmp "sgt" %363, %369 : i32
    %371 = llvm.extractvalue %347[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %372 = llvm.mlir.constant(2 : index) : i64
    %373 = llvm.mul %351, %372  : i64
    %374 = llvm.add %373, %356  : i64
    %375 = llvm.getelementptr %371[%374] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %370, %375 : !llvm.ptr<i1>
    %376 = llvm.add %356, %355  : i64
    llvm.br ^bb48(%376 : i64)
  ^bb50:  // pred: ^bb48
    %377 = llvm.add %351, %350  : i64
    llvm.br ^bb46(%377 : i64)
  ^bb51:  // pred: ^bb46
    %378 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)>
    %379 = llvm.insertvalue %224, %378[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %380 = llvm.insertvalue %347, %379[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)> 
    llvm.return %380 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>) attributes {input_names = ["v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v2_0"]} {
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
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)>
    llvm.store %20, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)>>
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
    %44 = llvm.mlir.constant(1 : i64) : i64
    %45 = llvm.getelementptr %0[%44] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i8>>
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %70, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>) -> ()
    %71 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)>>
    %72 = llvm.extractvalue %71[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %73 = llvm.extractvalue %71[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %74 = llvm.mlir.constant(2 : i64) : i64
    %75 = llvm.mlir.constant(16 : i64) : i64
    %76 = llvm.call @malloc(%75) : (i64) -> !llvm.ptr<i8>
    %77 = llvm.bitcast %76 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %72[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %72[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %72[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %72[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %72[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %72[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %72[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(0 : i64) : i64
    %104 = llvm.getelementptr %77[%103] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %104 : !llvm.ptr<ptr<i8>>
    %105 = llvm.mlir.constant(2 : i64) : i64
    %106 = llvm.call @omTensorCreateUntyped(%105) : (i64) -> !llvm.ptr<i8>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %73[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.bitcast %108 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %110 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %111 = llvm.bitcast %110 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%106, %107, %109, %111) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %112 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%106, %112) : (!llvm.ptr<i8>, i64) -> ()
    %113 = llvm.call @omTensorGetShape(%106) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %114 = llvm.call @omTensorGetStrides(%106) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %115 = llvm.mlir.constant(0 : i64) : i64
    %116 = llvm.extractvalue %73[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %117 = llvm.getelementptr %113[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.extractvalue %73[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %119 = llvm.getelementptr %114[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.mlir.constant(1 : i64) : i64
    %121 = llvm.extractvalue %73[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %122 = llvm.getelementptr %113[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.extractvalue %73[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %124 = llvm.getelementptr %114[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.mlir.constant(1 : i64) : i64
    %126 = llvm.getelementptr %77[%125] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %106, %126 : !llvm.ptr<ptr<i8>>
    %127 = llvm.call @omTensorListCreate(%77, %74, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<134 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<134 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<128 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<128 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

