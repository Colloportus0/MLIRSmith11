module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i1\22 , \22dims\22 : [2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 2 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 2 , 2] , \22name\22 : \22v6_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<[[[[4, 7]], [[5, 4]]], [[[6, 5]], [[6, 4]]]]> : tensor<2x2x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x array<1 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_0(dense<[[[[3, 3], [4, 7]], [[4, 4], [7, 4]]], [[[5, 4], [4, 5]], [[7, 7], [7, 3]]]]> : tensor<2x2x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x array<2 x array<2 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i1>, %arg1: !llvm.ptr<i1>, %arg2: i64, %arg3: i64, %arg4: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v7_0", "v5_0", "v0_0", "v6_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.constant(0 : index) : i64
    %7 = llvm.mlir.constant(-2147483648 : i32) : i32
    %8 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x array<2 x array<2 x array<2 x i32>>>>>
    %9 = llvm.bitcast %8 : !llvm.ptr<array<2 x array<2 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %10 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %11 = llvm.insertvalue %9, %10[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %9, %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.insertvalue %13, %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.mlir.constant(2 : index) : i64
    %16 = llvm.insertvalue %15, %14[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.mlir.constant(8 : index) : i64
    %18 = llvm.insertvalue %17, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.mlir.constant(2 : index) : i64
    %20 = llvm.insertvalue %19, %18[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.mlir.constant(4 : index) : i64
    %22 = llvm.insertvalue %21, %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(2 : index) : i64
    %24 = llvm.insertvalue %23, %22[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.mlir.constant(2 : index) : i64
    %26 = llvm.insertvalue %25, %24[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.insertvalue %27, %26[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.insertvalue %29, %28[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<2 x array<2 x array<1 x array<2 x i32>>>>>
    %32 = llvm.bitcast %31 : !llvm.ptr<array<2 x array<2 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %33 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %34 = llvm.insertvalue %32, %33[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(2 : index) : i64
    %39 = llvm.insertvalue %38, %37[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.mlir.constant(4 : index) : i64
    %41 = llvm.insertvalue %40, %39[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.mlir.constant(2 : index) : i64
    %43 = llvm.insertvalue %42, %41[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(2 : index) : i64
    %45 = llvm.insertvalue %44, %43[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(2 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.constant(2 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.constant(2 : index) : i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.mlir.constant(2 : index) : i64
    %59 = llvm.mlir.constant(4 : index) : i64
    %60 = llvm.mlir.null : !llvm.ptr<i32>
    %61 = llvm.getelementptr %60[%59] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %62 = llvm.ptrtoint %61 : !llvm.ptr<i32> to i64
    %63 = llvm.mlir.constant(16 : index) : i64
    %64 = llvm.add %62, %63  : i64
    %65 = llvm.call @malloc(%64) : (i64) -> !llvm.ptr<i8>
    %66 = llvm.bitcast %65 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %67 = llvm.ptrtoint %66 : !llvm.ptr<i32> to i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.sub %63, %68  : i64
    %70 = llvm.add %67, %69  : i64
    %71 = llvm.urem %70, %63  : i64
    %72 = llvm.sub %70, %71  : i64
    %73 = llvm.inttoptr %72 : i64 to !llvm.ptr<i32>
    %74 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %75 = llvm.insertvalue %66, %74[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %76 = llvm.insertvalue %73, %75[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.insertvalue %77, %76[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %79 = llvm.insertvalue %54, %78[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %80 = llvm.insertvalue %55, %79[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %81 = llvm.insertvalue %56, %80[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.insertvalue %58, %81[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %83 = llvm.insertvalue %56, %82[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %84 = llvm.insertvalue %57, %83[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%85 : i64)
  ^bb1(%88: i64):  // 2 preds: ^bb0, ^bb8
    %89 = llvm.icmp "slt" %88, %86 : i64
    llvm.cond_br %89, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%90 : i64)
  ^bb3(%93: i64):  // 2 preds: ^bb2, ^bb7
    %94 = llvm.icmp "slt" %93, %91 : i64
    llvm.cond_br %94, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%95 : i64)
  ^bb5(%98: i64):  // 2 preds: ^bb4, ^bb6
    %99 = llvm.icmp "slt" %98, %96 : i64
    llvm.cond_br %99, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %100 = llvm.extractvalue %84[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %101 = llvm.mlir.constant(2 : index) : i64
    %102 = llvm.mul %88, %101  : i64
    %103 = llvm.mlir.constant(2 : index) : i64
    %104 = llvm.mul %93, %103  : i64
    %105 = llvm.add %102, %104  : i64
    %106 = llvm.add %105, %98  : i64
    %107 = llvm.getelementptr %100[%106] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %7, %107 : !llvm.ptr<i32>
    %108 = llvm.add %98, %97  : i64
    llvm.br ^bb5(%108 : i64)
  ^bb7:  // pred: ^bb5
    %109 = llvm.add %93, %92  : i64
    llvm.br ^bb3(%109 : i64)
  ^bb8:  // pred: ^bb3
    %110 = llvm.add %88, %87  : i64
    llvm.br ^bb1(%110 : i64)
  ^bb9:  // pred: ^bb1
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.mlir.constant(2 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%111 : i64)
  ^bb10(%114: i64):  // 2 preds: ^bb9, ^bb20
    %115 = llvm.icmp "slt" %114, %112 : i64
    llvm.cond_br %115, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %116 = llvm.mlir.constant(0 : index) : i64
    %117 = llvm.mlir.constant(2 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%116 : i64)
  ^bb12(%119: i64):  // 2 preds: ^bb11, ^bb19
    %120 = llvm.icmp "slt" %119, %117 : i64
    llvm.cond_br %120, ^bb13, ^bb20
  ^bb13:  // pred: ^bb12
    %121 = llvm.mlir.constant(0 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%121 : i64)
  ^bb14(%124: i64):  // 2 preds: ^bb13, ^bb18
    %125 = llvm.icmp "slt" %124, %122 : i64
    llvm.cond_br %125, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %126 = llvm.mlir.constant(0 : index) : i64
    %127 = llvm.mlir.constant(2 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%126 : i64)
  ^bb16(%129: i64):  // 2 preds: ^bb15, ^bb17
    %130 = llvm.icmp "slt" %129, %127 : i64
    llvm.cond_br %130, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %131 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.mlir.constant(4 : index) : i64
    %133 = llvm.mul %114, %132  : i64
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mul %119, %134  : i64
    %136 = llvm.add %133, %135  : i64
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mul %124, %137  : i64
    %139 = llvm.add %136, %138  : i64
    %140 = llvm.add %139, %129  : i64
    %141 = llvm.getelementptr %131[%140] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %142 = llvm.load %141 : !llvm.ptr<i32>
    %143 = llvm.extractvalue %84[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %144 = llvm.mlir.constant(2 : index) : i64
    %145 = llvm.mul %114, %144  : i64
    %146 = llvm.mlir.constant(2 : index) : i64
    %147 = llvm.mul %124, %146  : i64
    %148 = llvm.add %145, %147  : i64
    %149 = llvm.add %148, %129  : i64
    %150 = llvm.getelementptr %143[%149] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %151 = llvm.load %150 : !llvm.ptr<i32>
    %152 = llvm.icmp "sgt" %151, %142 : i32
    %153 = llvm.select %152, %151, %142 : i1, i32
    %154 = llvm.extractvalue %84[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mul %114, %155  : i64
    %157 = llvm.mlir.constant(2 : index) : i64
    %158 = llvm.mul %124, %157  : i64
    %159 = llvm.add %156, %158  : i64
    %160 = llvm.add %159, %129  : i64
    %161 = llvm.getelementptr %154[%160] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %153, %161 : !llvm.ptr<i32>
    %162 = llvm.add %129, %128  : i64
    llvm.br ^bb16(%162 : i64)
  ^bb18:  // pred: ^bb16
    %163 = llvm.add %124, %123  : i64
    llvm.br ^bb14(%163 : i64)
  ^bb19:  // pred: ^bb14
    %164 = llvm.add %119, %118  : i64
    llvm.br ^bb12(%164 : i64)
  ^bb20:  // pred: ^bb12
    %165 = llvm.add %114, %113  : i64
    llvm.br ^bb10(%165 : i64)
  ^bb21:  // pred: ^bb10
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mlir.constant(2 : index) : i64
    %168 = llvm.mlir.constant(2 : index) : i64
    %169 = llvm.mlir.constant(2 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(4 : index) : i64
    %172 = llvm.mlir.constant(8 : index) : i64
    %173 = llvm.mlir.constant(16 : index) : i64
    %174 = llvm.mlir.null : !llvm.ptr<i1>
    %175 = llvm.getelementptr %174[%173] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %176 = llvm.ptrtoint %175 : !llvm.ptr<i1> to i64
    %177 = llvm.mlir.constant(16 : index) : i64
    %178 = llvm.add %176, %177  : i64
    %179 = llvm.call @malloc(%178) : (i64) -> !llvm.ptr<i8>
    %180 = llvm.bitcast %179 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %181 = llvm.ptrtoint %180 : !llvm.ptr<i1> to i64
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.sub %177, %182  : i64
    %184 = llvm.add %181, %183  : i64
    %185 = llvm.urem %184, %177  : i64
    %186 = llvm.sub %184, %185  : i64
    %187 = llvm.inttoptr %186 : i64 to !llvm.ptr<i1>
    %188 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %189 = llvm.insertvalue %180, %188[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.insertvalue %187, %189[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.mlir.constant(0 : index) : i64
    %192 = llvm.insertvalue %191, %190[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %166, %192[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %167, %193[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %168, %194[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.insertvalue %169, %195[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.insertvalue %172, %196[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %171, %197[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.insertvalue %169, %198[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.insertvalue %170, %199[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.mlir.constant(2 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%201 : i64)
  ^bb22(%204: i64):  // 2 preds: ^bb21, ^bb32
    %205 = llvm.icmp "slt" %204, %202 : i64
    llvm.cond_br %205, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %206 = llvm.mlir.constant(0 : index) : i64
    %207 = llvm.mlir.constant(2 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%206 : i64)
  ^bb24(%209: i64):  // 2 preds: ^bb23, ^bb31
    %210 = llvm.icmp "slt" %209, %207 : i64
    llvm.cond_br %210, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.mlir.constant(2 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%211 : i64)
  ^bb26(%214: i64):  // 2 preds: ^bb25, ^bb30
    %215 = llvm.icmp "slt" %214, %212 : i64
    llvm.cond_br %215, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.mlir.constant(2 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%216 : i64)
  ^bb28(%219: i64):  // 2 preds: ^bb27, ^bb29
    %220 = llvm.icmp "slt" %219, %217 : i64
    llvm.cond_br %220, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %221 = llvm.extractvalue %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.mlir.constant(8 : index) : i64
    %223 = llvm.mul %204, %222  : i64
    %224 = llvm.mlir.constant(4 : index) : i64
    %225 = llvm.mul %209, %224  : i64
    %226 = llvm.add %223, %225  : i64
    %227 = llvm.mlir.constant(2 : index) : i64
    %228 = llvm.mul %214, %227  : i64
    %229 = llvm.add %226, %228  : i64
    %230 = llvm.add %229, %219  : i64
    %231 = llvm.getelementptr %221[%230] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %232 = llvm.load %231 : !llvm.ptr<i32>
    %233 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.mlir.constant(4 : index) : i64
    %235 = llvm.mul %204, %234  : i64
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mul %209, %236  : i64
    %238 = llvm.add %235, %237  : i64
    %239 = llvm.mlir.constant(2 : index) : i64
    %240 = llvm.mul %6, %239  : i64
    %241 = llvm.add %238, %240  : i64
    %242 = llvm.add %241, %219  : i64
    %243 = llvm.getelementptr %233[%242] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %244 = llvm.load %243 : !llvm.ptr<i32>
    %245 = llvm.icmp "slt" %232, %244 : i32
    %246 = llvm.extractvalue %200[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.mlir.constant(8 : index) : i64
    %248 = llvm.mul %204, %247  : i64
    %249 = llvm.mlir.constant(4 : index) : i64
    %250 = llvm.mul %209, %249  : i64
    %251 = llvm.add %248, %250  : i64
    %252 = llvm.mlir.constant(2 : index) : i64
    %253 = llvm.mul %214, %252  : i64
    %254 = llvm.add %251, %253  : i64
    %255 = llvm.add %254, %219  : i64
    %256 = llvm.getelementptr %246[%255] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %245, %256 : !llvm.ptr<i1>
    %257 = llvm.add %219, %218  : i64
    llvm.br ^bb28(%257 : i64)
  ^bb30:  // pred: ^bb28
    %258 = llvm.add %214, %213  : i64
    llvm.br ^bb26(%258 : i64)
  ^bb31:  // pred: ^bb26
    %259 = llvm.add %209, %208  : i64
    llvm.br ^bb24(%259 : i64)
  ^bb32:  // pred: ^bb24
    %260 = llvm.add %204, %203  : i64
    llvm.br ^bb22(%260 : i64)
  ^bb33:  // pred: ^bb22
    %261 = llvm.mlir.constant(2 : index) : i64
    %262 = llvm.mlir.constant(2 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.mlir.constant(2 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.constant(2 : index) : i64
    %267 = llvm.mlir.constant(4 : index) : i64
    %268 = llvm.mlir.constant(8 : index) : i64
    %269 = llvm.mlir.null : !llvm.ptr<i1>
    %270 = llvm.getelementptr %269[%268] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %271 = llvm.ptrtoint %270 : !llvm.ptr<i1> to i64
    %272 = llvm.mlir.constant(16 : index) : i64
    %273 = llvm.add %271, %272  : i64
    %274 = llvm.call @malloc(%273) : (i64) -> !llvm.ptr<i8>
    %275 = llvm.bitcast %274 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %276 = llvm.ptrtoint %275 : !llvm.ptr<i1> to i64
    %277 = llvm.mlir.constant(1 : index) : i64
    %278 = llvm.sub %272, %277  : i64
    %279 = llvm.add %276, %278  : i64
    %280 = llvm.urem %279, %272  : i64
    %281 = llvm.sub %279, %280  : i64
    %282 = llvm.inttoptr %281 : i64 to !llvm.ptr<i1>
    %283 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %284 = llvm.insertvalue %275, %283[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.insertvalue %282, %284[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %286 = llvm.mlir.constant(0 : index) : i64
    %287 = llvm.insertvalue %286, %285[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %288 = llvm.insertvalue %261, %287[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.insertvalue %262, %288[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %290 = llvm.insertvalue %263, %289[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.insertvalue %264, %290[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.insertvalue %267, %291[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %293 = llvm.insertvalue %266, %292[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.insertvalue %264, %293[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.insertvalue %265, %294[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.mlir.constant(0 : index) : i64
    %297 = llvm.mlir.constant(2 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%296 : i64)
  ^bb34(%299: i64):  // 2 preds: ^bb33, ^bb44
    %300 = llvm.icmp "slt" %299, %297 : i64
    llvm.cond_br %300, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %301 = llvm.mlir.constant(0 : index) : i64
    %302 = llvm.mlir.constant(2 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%301 : i64)
  ^bb36(%304: i64):  // 2 preds: ^bb35, ^bb43
    %305 = llvm.icmp "slt" %304, %302 : i64
    llvm.cond_br %305, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %306 = llvm.mlir.constant(0 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%306 : i64)
  ^bb38(%309: i64):  // 2 preds: ^bb37, ^bb42
    %310 = llvm.icmp "slt" %309, %307 : i64
    llvm.cond_br %310, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.mlir.constant(2 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%311 : i64)
  ^bb40(%314: i64):  // 2 preds: ^bb39, ^bb41
    %315 = llvm.icmp "slt" %314, %312 : i64
    llvm.cond_br %315, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %316 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.mlir.constant(4 : index) : i64
    %318 = llvm.mul %299, %317  : i64
    %319 = llvm.mlir.constant(2 : index) : i64
    %320 = llvm.mul %304, %319  : i64
    %321 = llvm.add %318, %320  : i64
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mul %309, %322  : i64
    %324 = llvm.add %321, %323  : i64
    %325 = llvm.add %324, %314  : i64
    %326 = llvm.getelementptr %316[%325] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %327 = llvm.load %326 : !llvm.ptr<i32>
    %328 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.mlir.constant(4 : index) : i64
    %330 = llvm.mul %299, %329  : i64
    %331 = llvm.mlir.constant(2 : index) : i64
    %332 = llvm.mul %304, %331  : i64
    %333 = llvm.add %330, %332  : i64
    %334 = llvm.mlir.constant(2 : index) : i64
    %335 = llvm.mul %309, %334  : i64
    %336 = llvm.add %333, %335  : i64
    %337 = llvm.add %336, %314  : i64
    %338 = llvm.getelementptr %328[%337] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %339 = llvm.load %338 : !llvm.ptr<i32>
    %340 = llvm.icmp "eq" %327, %339 : i32
    %341 = llvm.extractvalue %295[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.mlir.constant(4 : index) : i64
    %343 = llvm.mul %299, %342  : i64
    %344 = llvm.mlir.constant(2 : index) : i64
    %345 = llvm.mul %304, %344  : i64
    %346 = llvm.add %343, %345  : i64
    %347 = llvm.mlir.constant(2 : index) : i64
    %348 = llvm.mul %309, %347  : i64
    %349 = llvm.add %346, %348  : i64
    %350 = llvm.add %349, %314  : i64
    %351 = llvm.getelementptr %341[%350] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %340, %351 : !llvm.ptr<i1>
    %352 = llvm.add %314, %313  : i64
    llvm.br ^bb40(%352 : i64)
  ^bb42:  // pred: ^bb40
    %353 = llvm.add %309, %308  : i64
    llvm.br ^bb38(%353 : i64)
  ^bb43:  // pred: ^bb38
    %354 = llvm.add %304, %303  : i64
    llvm.br ^bb36(%354 : i64)
  ^bb44:  // pred: ^bb36
    %355 = llvm.add %299, %298  : i64
    llvm.br ^bb34(%355 : i64)
  ^bb45:  // pred: ^bb34
    %356 = llvm.mlir.constant(2 : index) : i64
    %357 = llvm.mlir.constant(2 : index) : i64
    %358 = llvm.mlir.constant(2 : index) : i64
    %359 = llvm.mlir.constant(2 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.mlir.constant(4 : index) : i64
    %362 = llvm.mlir.constant(8 : index) : i64
    %363 = llvm.mlir.constant(16 : index) : i64
    %364 = llvm.mlir.null : !llvm.ptr<i32>
    %365 = llvm.getelementptr %364[%363] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %366 = llvm.ptrtoint %365 : !llvm.ptr<i32> to i64
    %367 = llvm.mlir.constant(16 : index) : i64
    %368 = llvm.add %366, %367  : i64
    %369 = llvm.call @malloc(%368) : (i64) -> !llvm.ptr<i8>
    %370 = llvm.bitcast %369 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %371 = llvm.ptrtoint %370 : !llvm.ptr<i32> to i64
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.sub %367, %372  : i64
    %374 = llvm.add %371, %373  : i64
    %375 = llvm.urem %374, %367  : i64
    %376 = llvm.sub %374, %375  : i64
    %377 = llvm.inttoptr %376 : i64 to !llvm.ptr<i32>
    %378 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %379 = llvm.insertvalue %370, %378[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.insertvalue %377, %379[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.mlir.constant(0 : index) : i64
    %382 = llvm.insertvalue %381, %380[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.insertvalue %356, %382[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.insertvalue %357, %383[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.insertvalue %358, %384[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.insertvalue %359, %385[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.insertvalue %362, %386[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.insertvalue %361, %387[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.insertvalue %359, %388[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.insertvalue %360, %389[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.mlir.constant(0 : index) : i64
    %392 = llvm.mlir.constant(2 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%391 : i64)
  ^bb46(%394: i64):  // 2 preds: ^bb45, ^bb56
    %395 = llvm.icmp "slt" %394, %392 : i64
    llvm.cond_br %395, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %396 = llvm.mlir.constant(0 : index) : i64
    %397 = llvm.mlir.constant(2 : index) : i64
    %398 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%396 : i64)
  ^bb48(%399: i64):  // 2 preds: ^bb47, ^bb55
    %400 = llvm.icmp "slt" %399, %397 : i64
    llvm.cond_br %400, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %401 = llvm.mlir.constant(0 : index) : i64
    %402 = llvm.mlir.constant(2 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%401 : i64)
  ^bb50(%404: i64):  // 2 preds: ^bb49, ^bb54
    %405 = llvm.icmp "slt" %404, %402 : i64
    llvm.cond_br %405, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %406 = llvm.mlir.constant(0 : index) : i64
    %407 = llvm.mlir.constant(2 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%406 : i64)
  ^bb52(%409: i64):  // 2 preds: ^bb51, ^bb53
    %410 = llvm.icmp "slt" %409, %407 : i64
    llvm.cond_br %410, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %411 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %412 = llvm.getelementptr %411[%409] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %413 = llvm.load %412 : !llvm.ptr<i1>
    %414 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.mlir.constant(4 : index) : i64
    %416 = llvm.mul %394, %415  : i64
    %417 = llvm.mlir.constant(2 : index) : i64
    %418 = llvm.mul %399, %417  : i64
    %419 = llvm.add %416, %418  : i64
    %420 = llvm.mlir.constant(2 : index) : i64
    %421 = llvm.mul %6, %420  : i64
    %422 = llvm.add %419, %421  : i64
    %423 = llvm.add %422, %409  : i64
    %424 = llvm.getelementptr %414[%423] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %425 = llvm.load %424 : !llvm.ptr<i32>
    %426 = llvm.extractvalue %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.mlir.constant(8 : index) : i64
    %428 = llvm.mul %394, %427  : i64
    %429 = llvm.mlir.constant(4 : index) : i64
    %430 = llvm.mul %399, %429  : i64
    %431 = llvm.add %428, %430  : i64
    %432 = llvm.mlir.constant(2 : index) : i64
    %433 = llvm.mul %404, %432  : i64
    %434 = llvm.add %431, %433  : i64
    %435 = llvm.add %434, %409  : i64
    %436 = llvm.getelementptr %426[%435] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %437 = llvm.load %436 : !llvm.ptr<i32>
    %438 = llvm.select %413, %425, %437 : i1, i32
    %439 = llvm.extractvalue %390[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.mlir.constant(8 : index) : i64
    %441 = llvm.mul %394, %440  : i64
    %442 = llvm.mlir.constant(4 : index) : i64
    %443 = llvm.mul %399, %442  : i64
    %444 = llvm.add %441, %443  : i64
    %445 = llvm.mlir.constant(2 : index) : i64
    %446 = llvm.mul %404, %445  : i64
    %447 = llvm.add %444, %446  : i64
    %448 = llvm.add %447, %409  : i64
    %449 = llvm.getelementptr %439[%448] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %438, %449 : !llvm.ptr<i32>
    %450 = llvm.add %409, %408  : i64
    llvm.br ^bb52(%450 : i64)
  ^bb54:  // pred: ^bb52
    %451 = llvm.add %404, %403  : i64
    llvm.br ^bb50(%451 : i64)
  ^bb55:  // pred: ^bb50
    %452 = llvm.add %399, %398  : i64
    llvm.br ^bb48(%452 : i64)
  ^bb56:  // pred: ^bb48
    %453 = llvm.add %394, %393  : i64
    llvm.br ^bb46(%453 : i64)
  ^bb57:  // pred: ^bb46
    %454 = llvm.mlir.constant(2 : index) : i64
    %455 = llvm.mlir.constant(2 : index) : i64
    %456 = llvm.mlir.constant(2 : index) : i64
    %457 = llvm.mlir.constant(2 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    %459 = llvm.mlir.constant(4 : index) : i64
    %460 = llvm.mlir.constant(8 : index) : i64
    %461 = llvm.mlir.constant(16 : index) : i64
    %462 = llvm.mlir.null : !llvm.ptr<i1>
    %463 = llvm.getelementptr %462[%461] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %464 = llvm.ptrtoint %463 : !llvm.ptr<i1> to i64
    %465 = llvm.mlir.constant(16 : index) : i64
    %466 = llvm.add %464, %465  : i64
    %467 = llvm.call @malloc(%466) : (i64) -> !llvm.ptr<i8>
    %468 = llvm.bitcast %467 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %469 = llvm.ptrtoint %468 : !llvm.ptr<i1> to i64
    %470 = llvm.mlir.constant(1 : index) : i64
    %471 = llvm.sub %465, %470  : i64
    %472 = llvm.add %469, %471  : i64
    %473 = llvm.urem %472, %465  : i64
    %474 = llvm.sub %472, %473  : i64
    %475 = llvm.inttoptr %474 : i64 to !llvm.ptr<i1>
    %476 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %477 = llvm.insertvalue %468, %476[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.insertvalue %475, %477[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.mlir.constant(0 : index) : i64
    %480 = llvm.insertvalue %479, %478[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.insertvalue %454, %480[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %482 = llvm.insertvalue %455, %481[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %483 = llvm.insertvalue %456, %482[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %484 = llvm.insertvalue %457, %483[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %485 = llvm.insertvalue %460, %484[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %486 = llvm.insertvalue %459, %485[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %487 = llvm.insertvalue %457, %486[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %488 = llvm.insertvalue %458, %487[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %489 = llvm.mlir.constant(0 : index) : i64
    %490 = llvm.mlir.constant(2 : index) : i64
    %491 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%489 : i64)
  ^bb58(%492: i64):  // 2 preds: ^bb57, ^bb68
    %493 = llvm.icmp "slt" %492, %490 : i64
    llvm.cond_br %493, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %494 = llvm.mlir.constant(0 : index) : i64
    %495 = llvm.mlir.constant(2 : index) : i64
    %496 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%494 : i64)
  ^bb60(%497: i64):  // 2 preds: ^bb59, ^bb67
    %498 = llvm.icmp "slt" %497, %495 : i64
    llvm.cond_br %498, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %499 = llvm.mlir.constant(0 : index) : i64
    %500 = llvm.mlir.constant(2 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%499 : i64)
  ^bb62(%502: i64):  // 2 preds: ^bb61, ^bb66
    %503 = llvm.icmp "slt" %502, %500 : i64
    llvm.cond_br %503, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %504 = llvm.mlir.constant(0 : index) : i64
    %505 = llvm.mlir.constant(2 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%504 : i64)
  ^bb64(%507: i64):  // 2 preds: ^bb63, ^bb65
    %508 = llvm.icmp "slt" %507, %505 : i64
    llvm.cond_br %508, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %509 = llvm.extractvalue %390[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.mlir.constant(8 : index) : i64
    %511 = llvm.mul %492, %510  : i64
    %512 = llvm.mlir.constant(4 : index) : i64
    %513 = llvm.mul %497, %512  : i64
    %514 = llvm.add %511, %513  : i64
    %515 = llvm.mlir.constant(2 : index) : i64
    %516 = llvm.mul %502, %515  : i64
    %517 = llvm.add %514, %516  : i64
    %518 = llvm.add %517, %507  : i64
    %519 = llvm.getelementptr %509[%518] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %520 = llvm.load %519 : !llvm.ptr<i32>
    %521 = llvm.extractvalue %390[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.mlir.constant(8 : index) : i64
    %523 = llvm.mul %492, %522  : i64
    %524 = llvm.mlir.constant(4 : index) : i64
    %525 = llvm.mul %497, %524  : i64
    %526 = llvm.add %523, %525  : i64
    %527 = llvm.mlir.constant(2 : index) : i64
    %528 = llvm.mul %502, %527  : i64
    %529 = llvm.add %526, %528  : i64
    %530 = llvm.add %529, %507  : i64
    %531 = llvm.getelementptr %521[%530] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %532 = llvm.load %531 : !llvm.ptr<i32>
    %533 = llvm.icmp "eq" %520, %532 : i32
    %534 = llvm.extractvalue %488[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %535 = llvm.mlir.constant(8 : index) : i64
    %536 = llvm.mul %492, %535  : i64
    %537 = llvm.mlir.constant(4 : index) : i64
    %538 = llvm.mul %497, %537  : i64
    %539 = llvm.add %536, %538  : i64
    %540 = llvm.mlir.constant(2 : index) : i64
    %541 = llvm.mul %502, %540  : i64
    %542 = llvm.add %539, %541  : i64
    %543 = llvm.add %542, %507  : i64
    %544 = llvm.getelementptr %534[%543] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %533, %544 : !llvm.ptr<i1>
    %545 = llvm.add %507, %506  : i64
    llvm.br ^bb64(%545 : i64)
  ^bb66:  // pred: ^bb64
    %546 = llvm.add %502, %501  : i64
    llvm.br ^bb62(%546 : i64)
  ^bb67:  // pred: ^bb62
    %547 = llvm.add %497, %496  : i64
    llvm.br ^bb60(%547 : i64)
  ^bb68:  // pred: ^bb60
    %548 = llvm.add %492, %491  : i64
    llvm.br ^bb58(%548 : i64)
  ^bb69:  // pred: ^bb58
    %549 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %550 = llvm.insertvalue %84, %549[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %551 = llvm.insertvalue %200, %550[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %552 = llvm.insertvalue %295, %551[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %553 = llvm.insertvalue %488, %552[3] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %553 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v7_0", "v5_0", "v0_0", "v6_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.call @main_graph(%1, %2, %3, %4, %5) : (!llvm.ptr<i1>, !llvm.ptr<i1>, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %6, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %22, %6 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>>) -> ()
    %23 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %24 = llvm.extractvalue %23[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %25 = llvm.extractvalue %23[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %26 = llvm.extractvalue %23[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %27 = llvm.extractvalue %23[3] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %28 = llvm.mlir.constant(4 : i64) : i64
    %29 = llvm.mlir.constant(32 : i64) : i64
    %30 = llvm.call @malloc(%29) : (i64) -> !llvm.ptr<i8>
    %31 = llvm.bitcast %30 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %32 = llvm.mlir.constant(3 : i64) : i64
    %33 = llvm.call @omTensorCreateUntyped(%32) : (i64) -> !llvm.ptr<i8>
    %34 = llvm.mlir.constant(1 : i64) : i64
    %35 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %36 = llvm.bitcast %35 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %37 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %38 = llvm.bitcast %37 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%33, %34, %36, %38) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %39 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%33, %39) : (!llvm.ptr<i8>, i64) -> ()
    %40 = llvm.call @omTensorGetShape(%33) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %41 = llvm.call @omTensorGetStrides(%33) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %42 = llvm.mlir.constant(0 : i64) : i64
    %43 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %44 = llvm.getelementptr %40[%42] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %43, %44 : !llvm.ptr<i64>
    %45 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %46 = llvm.getelementptr %41[%42] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %45, %46 : !llvm.ptr<i64>
    %47 = llvm.mlir.constant(1 : i64) : i64
    %48 = llvm.extractvalue %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %49 = llvm.getelementptr %40[%47] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %48, %49 : !llvm.ptr<i64>
    %50 = llvm.extractvalue %24[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %51 = llvm.getelementptr %41[%47] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %50, %51 : !llvm.ptr<i64>
    %52 = llvm.mlir.constant(2 : i64) : i64
    %53 = llvm.extractvalue %24[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %54 = llvm.getelementptr %40[%52] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %53, %54 : !llvm.ptr<i64>
    %55 = llvm.extractvalue %24[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.getelementptr %41[%52] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %55, %56 : !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %31[%57] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %33, %58 : !llvm.ptr<ptr<i8>>
    %59 = llvm.mlir.constant(4 : i64) : i64
    %60 = llvm.call @omTensorCreateUntyped(%59) : (i64) -> !llvm.ptr<i8>
    %61 = llvm.mlir.constant(1 : i64) : i64
    %62 = llvm.extractvalue %25[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.bitcast %62 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %64 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.bitcast %64 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%60, %61, %63, %65) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %66 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%60, %66) : (!llvm.ptr<i8>, i64) -> ()
    %67 = llvm.call @omTensorGetShape(%60) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.call @omTensorGetStrides(%60) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %69 = llvm.mlir.constant(0 : i64) : i64
    %70 = llvm.extractvalue %25[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %67[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %25[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %68[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(1 : i64) : i64
    %75 = llvm.extractvalue %25[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %67[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %25[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %68[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(2 : i64) : i64
    %80 = llvm.extractvalue %25[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %67[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.extractvalue %25[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %68[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.mlir.constant(3 : i64) : i64
    %85 = llvm.extractvalue %25[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.getelementptr %67[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.extractvalue %25[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %68[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.mlir.constant(1 : i64) : i64
    %90 = llvm.getelementptr %31[%89] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %60, %90 : !llvm.ptr<ptr<i8>>
    %91 = llvm.mlir.constant(4 : i64) : i64
    %92 = llvm.call @omTensorCreateUntyped(%91) : (i64) -> !llvm.ptr<i8>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %26[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.bitcast %94 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %96 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.bitcast %96 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%92, %93, %95, %97) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %98 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%92, %98) : (!llvm.ptr<i8>, i64) -> ()
    %99 = llvm.call @omTensorGetShape(%92) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %100 = llvm.call @omTensorGetStrides(%92) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.mlir.constant(0 : i64) : i64
    %102 = llvm.extractvalue %26[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %99[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.extractvalue %26[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %100[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.mlir.constant(1 : i64) : i64
    %107 = llvm.extractvalue %26[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %99[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.extractvalue %26[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %100[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.mlir.constant(2 : i64) : i64
    %112 = llvm.extractvalue %26[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %99[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.extractvalue %26[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %100[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.mlir.constant(3 : i64) : i64
    %117 = llvm.extractvalue %26[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %99[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.extractvalue %26[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %100[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.mlir.constant(2 : i64) : i64
    %122 = llvm.getelementptr %31[%121] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %92, %122 : !llvm.ptr<ptr<i8>>
    %123 = llvm.mlir.constant(4 : i64) : i64
    %124 = llvm.call @omTensorCreateUntyped(%123) : (i64) -> !llvm.ptr<i8>
    %125 = llvm.mlir.constant(1 : i64) : i64
    %126 = llvm.extractvalue %27[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.bitcast %126 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %128 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.bitcast %128 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%124, %125, %127, %129) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %130 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%124, %130) : (!llvm.ptr<i8>, i64) -> ()
    %131 = llvm.call @omTensorGetShape(%124) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %132 = llvm.call @omTensorGetStrides(%124) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %133 = llvm.mlir.constant(0 : i64) : i64
    %134 = llvm.extractvalue %27[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %131[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.extractvalue %27[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.getelementptr %132[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.mlir.constant(1 : i64) : i64
    %139 = llvm.extractvalue %27[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %131[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.extractvalue %27[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.getelementptr %132[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %141, %142 : !llvm.ptr<i64>
    %143 = llvm.mlir.constant(2 : i64) : i64
    %144 = llvm.extractvalue %27[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %131[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.extractvalue %27[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.getelementptr %132[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.mlir.constant(3 : i64) : i64
    %149 = llvm.extractvalue %27[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %131[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.extractvalue %27[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.getelementptr %132[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.mlir.constant(3 : i64) : i64
    %154 = llvm.getelementptr %31[%153] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %124, %154 : !llvm.ptr<ptr<i8>>
    %155 = llvm.call @omTensorListCreate(%31, %28, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %155 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<59 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<59 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<274 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<274 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

