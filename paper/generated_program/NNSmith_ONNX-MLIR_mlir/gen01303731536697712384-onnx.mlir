module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [4 , 1 , 2 , 2] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<[[[[5, 6], [6, 4]]], [[[5, 6], [7, 5]]]]> : tensor<2x1x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<2 x array<2 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: !llvm.ptr<i32>, %arg4: !llvm.ptr<i32>, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0", "v1_0"], llvm.emit_c_interface, output_names = ["v2_0", "v4_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %5 = llvm.insertvalue %arg3, %4[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.insertvalue %arg5, %6[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.insertvalue %arg7, %9[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.insertvalue %arg8, %11[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %13 = llvm.insertvalue %arg11, %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<2 x array<1 x array<2 x array<2 x i32>>>>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<2 x array<1 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %17 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %18 = llvm.insertvalue %16, %17[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.mlir.constant(2 : index) : i64
    %23 = llvm.insertvalue %22, %21[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(4 : index) : i64
    %25 = llvm.insertvalue %24, %23[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.mlir.constant(4 : index) : i64
    %29 = llvm.insertvalue %28, %27[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = llvm.insertvalue %30, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = llvm.insertvalue %32, %31[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(2 : index) : i64
    %35 = llvm.insertvalue %34, %33[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.insertvalue %36, %35[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(2 : index) : i64
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.mlir.constant(2 : index) : i64
    %41 = llvm.mlir.constant(2 : index) : i64
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.mlir.constant(4 : index) : i64
    %44 = llvm.mlir.constant(4 : index) : i64
    %45 = llvm.mlir.constant(8 : index) : i64
    %46 = llvm.mlir.null : !llvm.ptr<i32>
    %47 = llvm.getelementptr %46[%45] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %48 = llvm.ptrtoint %47 : !llvm.ptr<i32> to i64
    %49 = llvm.mlir.constant(16 : index) : i64
    %50 = llvm.add %48, %49  : i64
    %51 = llvm.call @malloc(%50) : (i64) -> !llvm.ptr<i8>
    %52 = llvm.bitcast %51 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %53 = llvm.ptrtoint %52 : !llvm.ptr<i32> to i64
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.sub %49, %54  : i64
    %56 = llvm.add %53, %55  : i64
    %57 = llvm.urem %56, %49  : i64
    %58 = llvm.sub %56, %57  : i64
    %59 = llvm.inttoptr %58 : i64 to !llvm.ptr<i32>
    %60 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %61 = llvm.insertvalue %52, %60[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %59, %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.insertvalue %63, %62[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %38, %64[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %39, %65[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %40, %66[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %41, %67[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %44, %68[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %43, %69[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %41, %70[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %42, %71[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.mlir.constant(2 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%73 : i64)
  ^bb1(%76: i64):  // 2 preds: ^bb0, ^bb11
    %77 = llvm.icmp "slt" %76, %74 : i64
    llvm.cond_br %77, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%78 : i64)
  ^bb3(%81: i64):  // 2 preds: ^bb2, ^bb10
    %82 = llvm.icmp "slt" %81, %79 : i64
    llvm.cond_br %82, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%83 : i64)
  ^bb5(%86: i64):  // 2 preds: ^bb4, ^bb9
    %87 = llvm.icmp "slt" %86, %84 : i64
    llvm.cond_br %87, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%88 : i64)
  ^bb7(%91: i64):  // 2 preds: ^bb6, ^bb8
    %92 = llvm.icmp "slt" %91, %89 : i64
    llvm.cond_br %92, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %93 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %94 = llvm.load %93 : !llvm.ptr<i32>
    %95 = llvm.extractvalue %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(4 : index) : i64
    %97 = llvm.mul %76, %96  : i64
    %98 = llvm.mlir.constant(4 : index) : i64
    %99 = llvm.mul %81, %98  : i64
    %100 = llvm.add %97, %99  : i64
    %101 = llvm.mlir.constant(2 : index) : i64
    %102 = llvm.mul %86, %101  : i64
    %103 = llvm.add %100, %102  : i64
    %104 = llvm.add %103, %91  : i64
    %105 = llvm.getelementptr %95[%104] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %106 = llvm.load %105 : !llvm.ptr<i32>
    %107 = llvm.icmp "sgt" %94, %106 : i32
    %108 = llvm.select %107, %94, %106 : i1, i32
    %109 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.mlir.constant(4 : index) : i64
    %111 = llvm.mul %76, %110  : i64
    %112 = llvm.mlir.constant(4 : index) : i64
    %113 = llvm.mul %81, %112  : i64
    %114 = llvm.add %111, %113  : i64
    %115 = llvm.mlir.constant(2 : index) : i64
    %116 = llvm.mul %86, %115  : i64
    %117 = llvm.add %114, %116  : i64
    %118 = llvm.add %117, %91  : i64
    %119 = llvm.getelementptr %109[%118] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %108, %119 : !llvm.ptr<i32>
    %120 = llvm.add %91, %90  : i64
    llvm.br ^bb7(%120 : i64)
  ^bb9:  // pred: ^bb7
    %121 = llvm.add %86, %85  : i64
    llvm.br ^bb5(%121 : i64)
  ^bb10:  // pred: ^bb5
    %122 = llvm.add %81, %80  : i64
    llvm.br ^bb3(%122 : i64)
  ^bb11:  // pred: ^bb3
    %123 = llvm.add %76, %75  : i64
    llvm.br ^bb1(%123 : i64)
  ^bb12:  // pred: ^bb1
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.constant(2 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(2 : index) : i64
    %129 = llvm.mlir.constant(2 : index) : i64
    %130 = llvm.mlir.null : !llvm.ptr<i32>
    %131 = llvm.getelementptr %130[%129] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %132 = llvm.ptrtoint %131 : !llvm.ptr<i32> to i64
    %133 = llvm.mlir.constant(16 : index) : i64
    %134 = llvm.add %132, %133  : i64
    %135 = llvm.call @malloc(%134) : (i64) -> !llvm.ptr<i8>
    %136 = llvm.bitcast %135 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %137 = llvm.ptrtoint %136 : !llvm.ptr<i32> to i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.sub %133, %138  : i64
    %140 = llvm.add %137, %139  : i64
    %141 = llvm.urem %140, %133  : i64
    %142 = llvm.sub %140, %141  : i64
    %143 = llvm.inttoptr %142 : i64 to !llvm.ptr<i32>
    %144 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %145 = llvm.insertvalue %136, %144[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %146 = llvm.insertvalue %143, %145[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %147 = llvm.mlir.constant(0 : index) : i64
    %148 = llvm.insertvalue %147, %146[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %149 = llvm.insertvalue %124, %148[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %150 = llvm.insertvalue %125, %149[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %151 = llvm.insertvalue %126, %150[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %152 = llvm.insertvalue %128, %151[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %153 = llvm.insertvalue %126, %152[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %154 = llvm.insertvalue %127, %153[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %155 = llvm.mlir.constant(0 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%155 : i64)
  ^bb13(%158: i64):  // 2 preds: ^bb12, ^bb20
    %159 = llvm.icmp "slt" %158, %156 : i64
    llvm.cond_br %159, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%160 : i64)
  ^bb15(%163: i64):  // 2 preds: ^bb14, ^bb19
    %164 = llvm.icmp "slt" %163, %161 : i64
    llvm.cond_br %164, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%165 : i64)
  ^bb17(%168: i64):  // 2 preds: ^bb16, ^bb18
    %169 = llvm.icmp "slt" %168, %166 : i64
    llvm.cond_br %169, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %170 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %171 = llvm.mlir.constant(2 : index) : i64
    %172 = llvm.mul %158, %171  : i64
    %173 = llvm.mlir.constant(2 : index) : i64
    %174 = llvm.mul %163, %173  : i64
    %175 = llvm.add %172, %174  : i64
    %176 = llvm.add %175, %168  : i64
    %177 = llvm.getelementptr %170[%176] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %178 = llvm.load %177 : !llvm.ptr<i32>
    %179 = llvm.extractvalue %154[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %180 = llvm.mlir.constant(2 : index) : i64
    %181 = llvm.mul %158, %180  : i64
    %182 = llvm.mlir.constant(2 : index) : i64
    %183 = llvm.mul %163, %182  : i64
    %184 = llvm.add %181, %183  : i64
    %185 = llvm.add %184, %168  : i64
    %186 = llvm.getelementptr %179[%185] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %178, %186 : !llvm.ptr<i32>
    %187 = llvm.add %168, %167  : i64
    llvm.br ^bb17(%187 : i64)
  ^bb19:  // pred: ^bb17
    %188 = llvm.add %163, %162  : i64
    llvm.br ^bb15(%188 : i64)
  ^bb20:  // pred: ^bb15
    %189 = llvm.add %158, %157  : i64
    llvm.br ^bb13(%189 : i64)
  ^bb21:  // pred: ^bb13
    %190 = llvm.mlir.constant(2 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.constant(2 : index) : i64
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.mlir.constant(4 : index) : i64
    %196 = llvm.mlir.constant(4 : index) : i64
    %197 = llvm.mlir.constant(8 : index) : i64
    %198 = llvm.mlir.null : !llvm.ptr<i32>
    %199 = llvm.getelementptr %198[%197] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %200 = llvm.ptrtoint %199 : !llvm.ptr<i32> to i64
    %201 = llvm.mlir.constant(16 : index) : i64
    %202 = llvm.add %200, %201  : i64
    %203 = llvm.call @malloc(%202) : (i64) -> !llvm.ptr<i8>
    %204 = llvm.bitcast %203 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %205 = llvm.ptrtoint %204 : !llvm.ptr<i32> to i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.sub %201, %206  : i64
    %208 = llvm.add %205, %207  : i64
    %209 = llvm.urem %208, %201  : i64
    %210 = llvm.sub %208, %209  : i64
    %211 = llvm.inttoptr %210 : i64 to !llvm.ptr<i32>
    %212 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %213 = llvm.insertvalue %204, %212[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %211, %213[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.insertvalue %215, %214[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.insertvalue %190, %216[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %191, %217[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.insertvalue %192, %218[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.insertvalue %193, %219[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.insertvalue %196, %220[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.insertvalue %195, %221[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.insertvalue %193, %222[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.insertvalue %194, %223[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.mlir.constant(2 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%225 : i64)
  ^bb22(%228: i64):  // 2 preds: ^bb21, ^bb32
    %229 = llvm.icmp "slt" %228, %226 : i64
    llvm.cond_br %229, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%230 : i64)
  ^bb24(%233: i64):  // 2 preds: ^bb23, ^bb31
    %234 = llvm.icmp "slt" %233, %231 : i64
    llvm.cond_br %234, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%235 : i64)
  ^bb26(%238: i64):  // 2 preds: ^bb25, ^bb30
    %239 = llvm.icmp "slt" %238, %236 : i64
    llvm.cond_br %239, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.mlir.constant(2 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%240 : i64)
  ^bb28(%243: i64):  // 2 preds: ^bb27, ^bb29
    %244 = llvm.icmp "slt" %243, %241 : i64
    llvm.cond_br %244, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %245 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %246 = llvm.mlir.constant(2 : index) : i64
    %247 = llvm.mul %233, %246  : i64
    %248 = llvm.mlir.constant(2 : index) : i64
    %249 = llvm.mul %14, %248  : i64
    %250 = llvm.add %247, %249  : i64
    %251 = llvm.add %250, %243  : i64
    %252 = llvm.getelementptr %245[%251] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %253 = llvm.load %252 : !llvm.ptr<i32>
    %254 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.mlir.constant(4 : index) : i64
    %256 = llvm.mul %228, %255  : i64
    %257 = llvm.mlir.constant(4 : index) : i64
    %258 = llvm.mul %233, %257  : i64
    %259 = llvm.add %256, %258  : i64
    %260 = llvm.mlir.constant(2 : index) : i64
    %261 = llvm.mul %238, %260  : i64
    %262 = llvm.add %259, %261  : i64
    %263 = llvm.add %262, %243  : i64
    %264 = llvm.getelementptr %254[%263] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %265 = llvm.load %264 : !llvm.ptr<i32>
    %266 = llvm.add %253, %265  : i32
    %267 = llvm.extractvalue %224[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.mlir.constant(4 : index) : i64
    %269 = llvm.mul %228, %268  : i64
    %270 = llvm.mlir.constant(4 : index) : i64
    %271 = llvm.mul %233, %270  : i64
    %272 = llvm.add %269, %271  : i64
    %273 = llvm.mlir.constant(2 : index) : i64
    %274 = llvm.mul %238, %273  : i64
    %275 = llvm.add %272, %274  : i64
    %276 = llvm.add %275, %243  : i64
    %277 = llvm.getelementptr %267[%276] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %266, %277 : !llvm.ptr<i32>
    %278 = llvm.add %243, %242  : i64
    llvm.br ^bb28(%278 : i64)
  ^bb30:  // pred: ^bb28
    %279 = llvm.add %238, %237  : i64
    llvm.br ^bb26(%279 : i64)
  ^bb31:  // pred: ^bb26
    %280 = llvm.add %233, %232  : i64
    llvm.br ^bb24(%280 : i64)
  ^bb32:  // pred: ^bb24
    %281 = llvm.add %228, %227  : i64
    llvm.br ^bb22(%281 : i64)
  ^bb33:  // pred: ^bb22
    %282 = llvm.mlir.constant(2 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.constant(4 : index) : i64
    %288 = llvm.mlir.constant(4 : index) : i64
    %289 = llvm.mlir.constant(8 : index) : i64
    %290 = llvm.mlir.null : !llvm.ptr<i32>
    %291 = llvm.getelementptr %290[%289] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %292 = llvm.ptrtoint %291 : !llvm.ptr<i32> to i64
    %293 = llvm.mlir.constant(16 : index) : i64
    %294 = llvm.add %292, %293  : i64
    %295 = llvm.call @malloc(%294) : (i64) -> !llvm.ptr<i8>
    %296 = llvm.bitcast %295 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %297 = llvm.ptrtoint %296 : !llvm.ptr<i32> to i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.sub %293, %298  : i64
    %300 = llvm.add %297, %299  : i64
    %301 = llvm.urem %300, %293  : i64
    %302 = llvm.sub %300, %301  : i64
    %303 = llvm.inttoptr %302 : i64 to !llvm.ptr<i32>
    %304 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %305 = llvm.insertvalue %296, %304[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.insertvalue %303, %305[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.insertvalue %307, %306[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.insertvalue %282, %308[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.insertvalue %283, %309[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.insertvalue %284, %310[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %285, %311[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.insertvalue %288, %312[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.insertvalue %287, %313[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.insertvalue %285, %314[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.insertvalue %286, %315[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.mlir.constant(0 : index) : i64
    %318 = llvm.mlir.constant(2 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%317 : i64)
  ^bb34(%320: i64):  // 2 preds: ^bb33, ^bb44
    %321 = llvm.icmp "slt" %320, %318 : i64
    llvm.cond_br %321, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %322 = llvm.mlir.constant(0 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%322 : i64)
  ^bb36(%325: i64):  // 2 preds: ^bb35, ^bb43
    %326 = llvm.icmp "slt" %325, %323 : i64
    llvm.cond_br %326, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %327 = llvm.mlir.constant(0 : index) : i64
    %328 = llvm.mlir.constant(2 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%327 : i64)
  ^bb38(%330: i64):  // 2 preds: ^bb37, ^bb42
    %331 = llvm.icmp "slt" %330, %328 : i64
    llvm.cond_br %331, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %332 = llvm.mlir.constant(0 : index) : i64
    %333 = llvm.mlir.constant(2 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%332 : i64)
  ^bb40(%335: i64):  // 2 preds: ^bb39, ^bb41
    %336 = llvm.icmp "slt" %335, %333 : i64
    llvm.cond_br %336, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %337 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.mlir.constant(4 : index) : i64
    %339 = llvm.mul %320, %338  : i64
    %340 = llvm.mlir.constant(4 : index) : i64
    %341 = llvm.mul %325, %340  : i64
    %342 = llvm.add %339, %341  : i64
    %343 = llvm.mlir.constant(2 : index) : i64
    %344 = llvm.mul %330, %343  : i64
    %345 = llvm.add %342, %344  : i64
    %346 = llvm.add %345, %335  : i64
    %347 = llvm.getelementptr %337[%346] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %348 = llvm.load %347 : !llvm.ptr<i32>
    %349 = llvm.extractvalue %224[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.mlir.constant(4 : index) : i64
    %351 = llvm.mul %320, %350  : i64
    %352 = llvm.mlir.constant(4 : index) : i64
    %353 = llvm.mul %325, %352  : i64
    %354 = llvm.add %351, %353  : i64
    %355 = llvm.mlir.constant(2 : index) : i64
    %356 = llvm.mul %330, %355  : i64
    %357 = llvm.add %354, %356  : i64
    %358 = llvm.add %357, %335  : i64
    %359 = llvm.getelementptr %349[%358] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %360 = llvm.load %359 : !llvm.ptr<i32>
    %361 = llvm.add %348, %360  : i32
    %362 = llvm.extractvalue %316[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.mlir.constant(4 : index) : i64
    %364 = llvm.mul %320, %363  : i64
    %365 = llvm.mlir.constant(4 : index) : i64
    %366 = llvm.mul %325, %365  : i64
    %367 = llvm.add %364, %366  : i64
    %368 = llvm.mlir.constant(2 : index) : i64
    %369 = llvm.mul %330, %368  : i64
    %370 = llvm.add %367, %369  : i64
    %371 = llvm.add %370, %335  : i64
    %372 = llvm.getelementptr %362[%371] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %361, %372 : !llvm.ptr<i32>
    %373 = llvm.add %335, %334  : i64
    llvm.br ^bb40(%373 : i64)
  ^bb42:  // pred: ^bb40
    %374 = llvm.add %330, %329  : i64
    llvm.br ^bb38(%374 : i64)
  ^bb43:  // pred: ^bb38
    %375 = llvm.add %325, %324  : i64
    llvm.br ^bb36(%375 : i64)
  ^bb44:  // pred: ^bb36
    %376 = llvm.add %320, %319  : i64
    llvm.br ^bb34(%376 : i64)
  ^bb45:  // pred: ^bb34
    %377 = llvm.mlir.constant(4 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    %379 = llvm.mlir.constant(2 : index) : i64
    %380 = llvm.mlir.constant(2 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.mlir.constant(4 : index) : i64
    %383 = llvm.mlir.constant(4 : index) : i64
    %384 = llvm.mlir.constant(16 : index) : i64
    %385 = llvm.mlir.null : !llvm.ptr<i32>
    %386 = llvm.getelementptr %385[%384] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %387 = llvm.ptrtoint %386 : !llvm.ptr<i32> to i64
    %388 = llvm.mlir.constant(16 : index) : i64
    %389 = llvm.add %387, %388  : i64
    %390 = llvm.call @malloc(%389) : (i64) -> !llvm.ptr<i8>
    %391 = llvm.bitcast %390 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %392 = llvm.ptrtoint %391 : !llvm.ptr<i32> to i64
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.sub %388, %393  : i64
    %395 = llvm.add %392, %394  : i64
    %396 = llvm.urem %395, %388  : i64
    %397 = llvm.sub %395, %396  : i64
    %398 = llvm.inttoptr %397 : i64 to !llvm.ptr<i32>
    %399 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %400 = llvm.insertvalue %391, %399[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.insertvalue %398, %400[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.insertvalue %402, %401[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.insertvalue %377, %403[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.insertvalue %378, %404[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.insertvalue %379, %405[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.insertvalue %380, %406[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.insertvalue %383, %407[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.insertvalue %382, %408[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.insertvalue %380, %409[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.insertvalue %381, %410[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.mlir.constant(0 : index) : i64
    %413 = llvm.mlir.constant(2 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%412 : i64)
  ^bb46(%415: i64):  // 2 preds: ^bb45, ^bb56
    %416 = llvm.icmp "slt" %415, %413 : i64
    llvm.cond_br %416, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%417 : i64)
  ^bb48(%420: i64):  // 2 preds: ^bb47, ^bb55
    %421 = llvm.icmp "slt" %420, %418 : i64
    llvm.cond_br %421, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %422 = llvm.mlir.constant(0 : index) : i64
    %423 = llvm.mlir.constant(2 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%422 : i64)
  ^bb50(%425: i64):  // 2 preds: ^bb49, ^bb54
    %426 = llvm.icmp "slt" %425, %423 : i64
    llvm.cond_br %426, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %427 = llvm.mlir.constant(0 : index) : i64
    %428 = llvm.mlir.constant(2 : index) : i64
    %429 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%427 : i64)
  ^bb52(%430: i64):  // 2 preds: ^bb51, ^bb53
    %431 = llvm.icmp "slt" %430, %428 : i64
    llvm.cond_br %431, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %432 = llvm.extractvalue %224[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.mlir.constant(4 : index) : i64
    %434 = llvm.mul %415, %433  : i64
    %435 = llvm.mlir.constant(4 : index) : i64
    %436 = llvm.mul %420, %435  : i64
    %437 = llvm.add %434, %436  : i64
    %438 = llvm.mlir.constant(2 : index) : i64
    %439 = llvm.mul %425, %438  : i64
    %440 = llvm.add %437, %439  : i64
    %441 = llvm.add %440, %430  : i64
    %442 = llvm.getelementptr %432[%441] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %443 = llvm.load %442 : !llvm.ptr<i32>
    %444 = llvm.extractvalue %411[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.mlir.constant(4 : index) : i64
    %446 = llvm.mul %415, %445  : i64
    %447 = llvm.mlir.constant(4 : index) : i64
    %448 = llvm.mul %420, %447  : i64
    %449 = llvm.add %446, %448  : i64
    %450 = llvm.mlir.constant(2 : index) : i64
    %451 = llvm.mul %425, %450  : i64
    %452 = llvm.add %449, %451  : i64
    %453 = llvm.add %452, %430  : i64
    %454 = llvm.getelementptr %444[%453] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %443, %454 : !llvm.ptr<i32>
    %455 = llvm.add %430, %429  : i64
    llvm.br ^bb52(%455 : i64)
  ^bb54:  // pred: ^bb52
    %456 = llvm.add %425, %424  : i64
    llvm.br ^bb50(%456 : i64)
  ^bb55:  // pred: ^bb50
    %457 = llvm.add %420, %419  : i64
    llvm.br ^bb48(%457 : i64)
  ^bb56:  // pred: ^bb48
    %458 = llvm.add %415, %414  : i64
    llvm.br ^bb46(%458 : i64)
  ^bb57:  // pred: ^bb46
    %459 = llvm.mlir.constant(0 : index) : i64
    %460 = llvm.mlir.constant(2 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%459 : i64)
  ^bb58(%462: i64):  // 2 preds: ^bb57, ^bb68
    %463 = llvm.icmp "slt" %462, %460 : i64
    llvm.cond_br %463, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %464 = llvm.mlir.constant(0 : index) : i64
    %465 = llvm.mlir.constant(1 : index) : i64
    %466 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%464 : i64)
  ^bb60(%467: i64):  // 2 preds: ^bb59, ^bb67
    %468 = llvm.icmp "slt" %467, %465 : i64
    llvm.cond_br %468, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %469 = llvm.mlir.constant(0 : index) : i64
    %470 = llvm.mlir.constant(2 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%469 : i64)
  ^bb62(%472: i64):  // 2 preds: ^bb61, ^bb66
    %473 = llvm.icmp "slt" %472, %470 : i64
    llvm.cond_br %473, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %474 = llvm.mlir.constant(0 : index) : i64
    %475 = llvm.mlir.constant(2 : index) : i64
    %476 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%474 : i64)
  ^bb64(%477: i64):  // 2 preds: ^bb63, ^bb65
    %478 = llvm.icmp "slt" %477, %475 : i64
    llvm.cond_br %478, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %479 = llvm.mlir.constant(2 : index) : i64
    %480 = llvm.add %462, %479  : i64
    %481 = llvm.extractvalue %316[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %482 = llvm.mlir.constant(4 : index) : i64
    %483 = llvm.mul %462, %482  : i64
    %484 = llvm.mlir.constant(4 : index) : i64
    %485 = llvm.mul %467, %484  : i64
    %486 = llvm.add %483, %485  : i64
    %487 = llvm.mlir.constant(2 : index) : i64
    %488 = llvm.mul %472, %487  : i64
    %489 = llvm.add %486, %488  : i64
    %490 = llvm.add %489, %477  : i64
    %491 = llvm.getelementptr %481[%490] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %492 = llvm.load %491 : !llvm.ptr<i32>
    %493 = llvm.extractvalue %411[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.mlir.constant(4 : index) : i64
    %495 = llvm.mul %480, %494  : i64
    %496 = llvm.mlir.constant(4 : index) : i64
    %497 = llvm.mul %467, %496  : i64
    %498 = llvm.add %495, %497  : i64
    %499 = llvm.mlir.constant(2 : index) : i64
    %500 = llvm.mul %472, %499  : i64
    %501 = llvm.add %498, %500  : i64
    %502 = llvm.add %501, %477  : i64
    %503 = llvm.getelementptr %493[%502] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %492, %503 : !llvm.ptr<i32>
    %504 = llvm.add %477, %476  : i64
    llvm.br ^bb64(%504 : i64)
  ^bb66:  // pred: ^bb64
    %505 = llvm.add %472, %471  : i64
    llvm.br ^bb62(%505 : i64)
  ^bb67:  // pred: ^bb62
    %506 = llvm.add %467, %466  : i64
    llvm.br ^bb60(%506 : i64)
  ^bb68:  // pred: ^bb60
    %507 = llvm.add %462, %461  : i64
    llvm.br ^bb58(%507 : i64)
  ^bb69:  // pred: ^bb58
    %508 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %509 = llvm.insertvalue %154, %508[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %510 = llvm.insertvalue %411, %509[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %510 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v5_0", "v1_0"], llvm.emit_c_interface, output_names = ["v2_0", "v4_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %5 = llvm.extractvalue %4[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.extractvalue %4[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.extractvalue %4[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.extractvalue %4[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.extractvalue %4[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.extractvalue %4[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.extractvalue %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.extractvalue %4[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %13 = llvm.extractvalue %4[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.call @main_graph(%1, %2, %3, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %19 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %21 = llvm.call @omTensorGetDataPtr(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %22 = llvm.bitcast %21 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %23 = llvm.insertvalue %22, %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.insertvalue %22, %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %25 = llvm.mlir.constant(0 : i64) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.call @omTensorGetShape(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %28 = llvm.call @omTensorGetStrides(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %29 = llvm.mlir.constant(0 : i64) : i64
    %30 = llvm.getelementptr %27[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %31 = llvm.load %30 : !llvm.ptr<i64>
    %32 = llvm.insertvalue %31, %26[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %33 = llvm.getelementptr %28[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %34 = llvm.load %33 : !llvm.ptr<i64>
    %35 = llvm.insertvalue %34, %32[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %36 = llvm.mlir.constant(1 : i64) : i64
    %37 = llvm.getelementptr %27[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %38 = llvm.load %37 : !llvm.ptr<i64>
    %39 = llvm.insertvalue %38, %35[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %40 = llvm.getelementptr %28[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %41 = llvm.load %40 : !llvm.ptr<i64>
    %42 = llvm.insertvalue %41, %39[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %43 = llvm.mlir.constant(2 : i64) : i64
    %44 = llvm.getelementptr %27[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %42[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %47 = llvm.getelementptr %28[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %49, %19 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %19) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %50 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %51 = llvm.extractvalue %50[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %52 = llvm.extractvalue %50[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %53 = llvm.mlir.constant(2 : i64) : i64
    %54 = llvm.mlir.constant(16 : i64) : i64
    %55 = llvm.call @malloc(%54) : (i64) -> !llvm.ptr<i8>
    %56 = llvm.bitcast %55 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %57 = llvm.mlir.constant(3 : i64) : i64
    %58 = llvm.call @omTensorCreateUntyped(%57) : (i64) -> !llvm.ptr<i8>
    %59 = llvm.mlir.constant(1 : i64) : i64
    %60 = llvm.extractvalue %51[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.bitcast %60 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %62 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.bitcast %62 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%58, %59, %61, %63) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %64 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%58, %64) : (!llvm.ptr<i8>, i64) -> ()
    %65 = llvm.call @omTensorGetShape(%58) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %66 = llvm.call @omTensorGetStrides(%58) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %67 = llvm.mlir.constant(0 : i64) : i64
    %68 = llvm.extractvalue %51[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %69 = llvm.getelementptr %65[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %51[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.getelementptr %66[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(1 : i64) : i64
    %73 = llvm.extractvalue %51[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %74 = llvm.getelementptr %65[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %51[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %76 = llvm.getelementptr %66[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(2 : i64) : i64
    %78 = llvm.extractvalue %51[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %79 = llvm.getelementptr %65[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %51[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %81 = llvm.getelementptr %66[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %56[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %58, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(4 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(3 : i64) : i64
    %110 = llvm.extractvalue %52[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %92[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %52[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %93[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.getelementptr %56[%114] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %115 : !llvm.ptr<ptr<i8>>
    %116 = llvm.call @omTensorListCreate(%56, %53, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %116 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<125 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<125 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

