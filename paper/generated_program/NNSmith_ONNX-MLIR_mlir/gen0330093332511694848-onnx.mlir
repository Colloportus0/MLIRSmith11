module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<1> : tensor<2xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<2xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[[[[-4]]], [[[-6]]]]> : tensor<2x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_0(dense<[4, 6]> : tensor<2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v6_0", "v0_0", "v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.constant(1 : i64) : i64
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x i32>>
    %11 = llvm.bitcast %10 : !llvm.ptr<array<2 x i32>> to !llvm.ptr<i32>
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.insertvalue %11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.insertvalue %11, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.insertvalue %15, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.mlir.constant(2 : index) : i64
    %18 = llvm.insertvalue %17, %16[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.insertvalue %19, %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<2 x array<1 x array<1 x array<1 x i32>>>>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<2 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %23 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %24 = llvm.insertvalue %22, %23[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.insertvalue %22, %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.insertvalue %26, %25[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.mlir.constant(2 : index) : i64
    %29 = llvm.insertvalue %28, %27[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.insertvalue %30, %29[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.insertvalue %32, %31[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.insertvalue %36, %35[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.insertvalue %38, %37[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.insertvalue %40, %39[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.insertvalue %42, %41[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<2 x i64>>
    %45 = llvm.bitcast %44 : !llvm.ptr<array<2 x i64>> to !llvm.ptr<i64>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.insertvalue %45, %46[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(2 : index) : i64
    %52 = llvm.insertvalue %51, %50[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %56 = llvm.bitcast %55 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %57 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %58 = llvm.insertvalue %56, %57[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %59 = llvm.insertvalue %56, %58[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %62 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<2 x i64>>
    %63 = llvm.bitcast %62 : !llvm.ptr<array<2 x i64>> to !llvm.ptr<i64>
    %64 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %65 = llvm.insertvalue %63, %64[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.mlir.constant(2 : index) : i64
    %70 = llvm.insertvalue %69, %68[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.insertvalue %71, %70[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %74 = llvm.extractvalue %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.insertvalue %74, %73[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %77 = llvm.insertvalue %75, %76[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.insertvalue %78, %77[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.insertvalue %80, %79[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.insertvalue %82, %81[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.insertvalue %84, %83[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.insertvalue %86, %85[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.insertvalue %88, %87[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.insertvalue %90, %89[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.mlir.constant(4 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(4 : index) : i64
    %97 = llvm.mlir.constant(4 : index) : i64
    %98 = llvm.mlir.null : !llvm.ptr<i32>
    %99 = llvm.getelementptr %98[%97] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %100 = llvm.ptrtoint %99 : !llvm.ptr<i32> to i64
    %101 = llvm.mlir.constant(16 : index) : i64
    %102 = llvm.add %100, %101  : i64
    %103 = llvm.call @malloc(%102) : (i64) -> !llvm.ptr<i8>
    %104 = llvm.bitcast %103 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %105 = llvm.ptrtoint %104 : !llvm.ptr<i32> to i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.sub %101, %106  : i64
    %108 = llvm.add %105, %107  : i64
    %109 = llvm.urem %108, %101  : i64
    %110 = llvm.sub %108, %109  : i64
    %111 = llvm.inttoptr %110 : i64 to !llvm.ptr<i32>
    %112 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %113 = llvm.insertvalue %104, %112[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %114 = llvm.insertvalue %111, %113[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.insertvalue %115, %114[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %117 = llvm.insertvalue %92, %116[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %118 = llvm.insertvalue %93, %117[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %119 = llvm.insertvalue %94, %118[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %120 = llvm.insertvalue %96, %119[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %121 = llvm.insertvalue %94, %120[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.insertvalue %95, %121[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%123 : i64)
  ^bb1(%126: i64):  // 2 preds: ^bb0, ^bb8
    %127 = llvm.icmp "slt" %126, %124 : i64
    llvm.cond_br %127, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %128 = llvm.mlir.constant(0 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%128 : i64)
  ^bb3(%131: i64):  // 2 preds: ^bb2, ^bb7
    %132 = llvm.icmp "slt" %131, %129 : i64
    llvm.cond_br %132, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%133 : i64)
  ^bb5(%136: i64):  // 2 preds: ^bb4, ^bb6
    %137 = llvm.icmp "slt" %136, %134 : i64
    llvm.cond_br %137, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %138 = llvm.extractvalue %91[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %139 = llvm.add %126, %131  : i64
    %140 = llvm.add %139, %136  : i64
    %141 = llvm.getelementptr %138[%140] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %142 = llvm.load %141 : !llvm.ptr<i32>
    %143 = llvm.extractvalue %122[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %144 = llvm.mlir.constant(4 : index) : i64
    %145 = llvm.mul %126, %144  : i64
    %146 = llvm.mlir.constant(4 : index) : i64
    %147 = llvm.mul %131, %146  : i64
    %148 = llvm.add %145, %147  : i64
    %149 = llvm.add %148, %136  : i64
    %150 = llvm.getelementptr %143[%149] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %142, %150 : !llvm.ptr<i32>
    %151 = llvm.add %136, %135  : i64
    llvm.br ^bb5(%151 : i64)
  ^bb7:  // pred: ^bb5
    %152 = llvm.add %131, %130  : i64
    llvm.br ^bb3(%152 : i64)
  ^bb8:  // pred: ^bb3
    %153 = llvm.add %126, %125  : i64
    llvm.br ^bb1(%153 : i64)
  ^bb9:  // pred: ^bb1
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%154 : i64)
  ^bb10(%157: i64):  // 2 preds: ^bb9, ^bb17
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb11, ^bb18
  ^bb11:  // pred: ^bb10
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%159 : i64)
  ^bb12(%162: i64):  // 2 preds: ^bb11, ^bb16
    %163 = llvm.icmp "slt" %162, %160 : i64
    llvm.cond_br %163, ^bb13, ^bb17
  ^bb13:  // pred: ^bb12
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%164 : i64)
  ^bb14(%167: i64):  // 2 preds: ^bb13, ^bb15
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.add %167, %169  : i64
    %171 = llvm.extractvalue %91[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %172 = llvm.add %157, %162  : i64
    %173 = llvm.add %172, %167  : i64
    %174 = llvm.getelementptr %171[%173] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %175 = llvm.load %174 : !llvm.ptr<i32>
    %176 = llvm.extractvalue %122[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %177 = llvm.mlir.constant(4 : index) : i64
    %178 = llvm.mul %157, %177  : i64
    %179 = llvm.mlir.constant(4 : index) : i64
    %180 = llvm.mul %162, %179  : i64
    %181 = llvm.add %178, %180  : i64
    %182 = llvm.add %181, %170  : i64
    %183 = llvm.getelementptr %176[%182] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %175, %183 : !llvm.ptr<i32>
    %184 = llvm.add %167, %166  : i64
    llvm.br ^bb14(%184 : i64)
  ^bb16:  // pred: ^bb14
    %185 = llvm.add %162, %161  : i64
    llvm.br ^bb12(%185 : i64)
  ^bb17:  // pred: ^bb12
    %186 = llvm.add %157, %156  : i64
    llvm.br ^bb10(%186 : i64)
  ^bb18:  // pred: ^bb10
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%187 : i64)
  ^bb19(%190: i64):  // 2 preds: ^bb18, ^bb26
    %191 = llvm.icmp "slt" %190, %188 : i64
    llvm.cond_br %191, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%192 : i64)
  ^bb21(%195: i64):  // 2 preds: ^bb20, ^bb25
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb23(%197 : i64)
  ^bb23(%200: i64):  // 2 preds: ^bb22, ^bb24
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %202 = llvm.mlir.constant(2 : index) : i64
    %203 = llvm.add %200, %202  : i64
    %204 = llvm.extractvalue %91[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %205 = llvm.add %190, %195  : i64
    %206 = llvm.add %205, %200  : i64
    %207 = llvm.getelementptr %204[%206] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %208 = llvm.load %207 : !llvm.ptr<i32>
    %209 = llvm.extractvalue %122[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %210 = llvm.mlir.constant(4 : index) : i64
    %211 = llvm.mul %190, %210  : i64
    %212 = llvm.mlir.constant(4 : index) : i64
    %213 = llvm.mul %195, %212  : i64
    %214 = llvm.add %211, %213  : i64
    %215 = llvm.add %214, %203  : i64
    %216 = llvm.getelementptr %209[%215] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %208, %216 : !llvm.ptr<i32>
    %217 = llvm.add %200, %199  : i64
    llvm.br ^bb23(%217 : i64)
  ^bb25:  // pred: ^bb23
    %218 = llvm.add %195, %194  : i64
    llvm.br ^bb21(%218 : i64)
  ^bb26:  // pred: ^bb21
    %219 = llvm.add %190, %189  : i64
    llvm.br ^bb19(%219 : i64)
  ^bb27:  // pred: ^bb19
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%220 : i64)
  ^bb28(%223: i64):  // 2 preds: ^bb27, ^bb35
    %224 = llvm.icmp "slt" %223, %221 : i64
    llvm.cond_br %224, ^bb29, ^bb36
  ^bb29:  // pred: ^bb28
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%225 : i64)
  ^bb30(%228: i64):  // 2 preds: ^bb29, ^bb34
    %229 = llvm.icmp "slt" %228, %226 : i64
    llvm.cond_br %229, ^bb31, ^bb35
  ^bb31:  // pred: ^bb30
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%230 : i64)
  ^bb32(%233: i64):  // 2 preds: ^bb31, ^bb33
    %234 = llvm.icmp "slt" %233, %231 : i64
    llvm.cond_br %234, ^bb33, ^bb34
  ^bb33:  // pred: ^bb32
    %235 = llvm.mlir.constant(3 : index) : i64
    %236 = llvm.add %233, %235  : i64
    %237 = llvm.extractvalue %91[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %238 = llvm.add %223, %228  : i64
    %239 = llvm.add %238, %233  : i64
    %240 = llvm.getelementptr %237[%239] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %241 = llvm.load %240 : !llvm.ptr<i32>
    %242 = llvm.extractvalue %122[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %243 = llvm.mlir.constant(4 : index) : i64
    %244 = llvm.mul %223, %243  : i64
    %245 = llvm.mlir.constant(4 : index) : i64
    %246 = llvm.mul %228, %245  : i64
    %247 = llvm.add %244, %246  : i64
    %248 = llvm.add %247, %236  : i64
    %249 = llvm.getelementptr %242[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %241, %249 : !llvm.ptr<i32>
    %250 = llvm.add %233, %232  : i64
    llvm.br ^bb32(%250 : i64)
  ^bb34:  // pred: ^bb32
    %251 = llvm.add %228, %227  : i64
    llvm.br ^bb30(%251 : i64)
  ^bb35:  // pred: ^bb30
    %252 = llvm.add %223, %222  : i64
    llvm.br ^bb28(%252 : i64)
  ^bb36:  // pred: ^bb28
    %253 = llvm.mlir.constant(2 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.null : !llvm.ptr<i64>
    %256 = llvm.getelementptr %255[%253] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %257 = llvm.ptrtoint %256 : !llvm.ptr<i64> to i64
    %258 = llvm.mlir.constant(16 : index) : i64
    %259 = llvm.add %257, %258  : i64
    %260 = llvm.call @malloc(%259) : (i64) -> !llvm.ptr<i8>
    %261 = llvm.bitcast %260 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %262 = llvm.ptrtoint %261 : !llvm.ptr<i64> to i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.sub %258, %263  : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.urem %265, %258  : i64
    %267 = llvm.sub %265, %266  : i64
    %268 = llvm.inttoptr %267 : i64 to !llvm.ptr<i64>
    %269 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %270 = llvm.insertvalue %261, %269[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.insertvalue %268, %270[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.insertvalue %272, %271[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %274 = llvm.insertvalue %253, %273[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %275 = llvm.insertvalue %254, %274[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %276 = llvm.mlir.constant(0 : index) : i64
    %277 = llvm.mlir.constant(2 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%276 : i64)
  ^bb37(%279: i64):  // 2 preds: ^bb36, ^bb38
    %280 = llvm.icmp "slt" %279, %277 : i64
    llvm.cond_br %280, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %281 = llvm.extractvalue %275[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.getelementptr %281[%279] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %8, %282 : !llvm.ptr<i64>
    %283 = llvm.add %279, %278  : i64
    llvm.br ^bb37(%283 : i64)
  ^bb39:  // pred: ^bb37
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.mlir.null : !llvm.ptr<i64>
    %287 = llvm.getelementptr %286[%284] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %288 = llvm.ptrtoint %287 : !llvm.ptr<i64> to i64
    %289 = llvm.mlir.constant(16 : index) : i64
    %290 = llvm.add %288, %289  : i64
    %291 = llvm.call @malloc(%290) : (i64) -> !llvm.ptr<i8>
    %292 = llvm.bitcast %291 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %293 = llvm.ptrtoint %292 : !llvm.ptr<i64> to i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.sub %289, %294  : i64
    %296 = llvm.add %293, %295  : i64
    %297 = llvm.urem %296, %289  : i64
    %298 = llvm.sub %296, %297  : i64
    %299 = llvm.inttoptr %298 : i64 to !llvm.ptr<i64>
    %300 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %301 = llvm.insertvalue %292, %300[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %302 = llvm.insertvalue %299, %301[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.insertvalue %303, %302[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.insertvalue %284, %304[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.insertvalue %285, %305[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.mlir.constant(2 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%307 : i64)
  ^bb40(%310: i64):  // 2 preds: ^bb39, ^bb41
    %311 = llvm.icmp "slt" %310, %308 : i64
    llvm.cond_br %311, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %312 = llvm.extractvalue %275[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %313 = llvm.getelementptr %312[%310] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %314 = llvm.load %313 : !llvm.ptr<i64>
    %315 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %316 = llvm.load %315 : !llvm.ptr<i64>
    %317 = llvm.mul %314, %316  : i64
    %318 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %319 = llvm.getelementptr %318[%310] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %317, %319 : !llvm.ptr<i64>
    %320 = llvm.add %310, %309  : i64
    llvm.br ^bb40(%320 : i64)
  ^bb42:  // pred: ^bb40
    %321 = llvm.mlir.constant(2 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.mlir.null : !llvm.ptr<i1>
    %324 = llvm.getelementptr %323[%321] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %325 = llvm.ptrtoint %324 : !llvm.ptr<i1> to i64
    %326 = llvm.mlir.constant(16 : index) : i64
    %327 = llvm.add %325, %326  : i64
    %328 = llvm.call @malloc(%327) : (i64) -> !llvm.ptr<i8>
    %329 = llvm.bitcast %328 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %330 = llvm.ptrtoint %329 : !llvm.ptr<i1> to i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.sub %326, %331  : i64
    %333 = llvm.add %330, %332  : i64
    %334 = llvm.urem %333, %326  : i64
    %335 = llvm.sub %333, %334  : i64
    %336 = llvm.inttoptr %335 : i64 to !llvm.ptr<i1>
    %337 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %338 = llvm.insertvalue %329, %337[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %339 = llvm.insertvalue %336, %338[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.insertvalue %340, %339[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %342 = llvm.insertvalue %321, %341[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %343 = llvm.insertvalue %322, %342[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %344 = llvm.mlir.constant(0 : index) : i64
    %345 = llvm.mlir.constant(2 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%344 : i64)
  ^bb43(%347: i64):  // 2 preds: ^bb42, ^bb44
    %348 = llvm.icmp "slt" %347, %345 : i64
    llvm.cond_br %348, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %349 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %350 = llvm.getelementptr %349[%347] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %351 = llvm.load %350 : !llvm.ptr<i64>
    %352 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %353 = llvm.getelementptr %352[%347] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %354 = llvm.load %353 : !llvm.ptr<i64>
    %355 = llvm.icmp "eq" %351, %354 : i64
    %356 = llvm.extractvalue %343[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %357 = llvm.getelementptr %356[%347] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %355, %357 : !llvm.ptr<i1>
    %358 = llvm.add %347, %346  : i64
    llvm.br ^bb43(%358 : i64)
  ^bb45:  // pred: ^bb43
    %359 = llvm.mlir.constant(2 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.mlir.null : !llvm.ptr<i64>
    %362 = llvm.getelementptr %361[%359] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %363 = llvm.ptrtoint %362 : !llvm.ptr<i64> to i64
    %364 = llvm.mlir.constant(16 : index) : i64
    %365 = llvm.add %363, %364  : i64
    %366 = llvm.call @malloc(%365) : (i64) -> !llvm.ptr<i8>
    %367 = llvm.bitcast %366 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %368 = llvm.ptrtoint %367 : !llvm.ptr<i64> to i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.sub %364, %369  : i64
    %371 = llvm.add %368, %370  : i64
    %372 = llvm.urem %371, %364  : i64
    %373 = llvm.sub %371, %372  : i64
    %374 = llvm.inttoptr %373 : i64 to !llvm.ptr<i64>
    %375 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %376 = llvm.insertvalue %367, %375[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %377 = llvm.insertvalue %374, %376[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %378 = llvm.mlir.constant(0 : index) : i64
    %379 = llvm.insertvalue %378, %377[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %380 = llvm.insertvalue %359, %379[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %381 = llvm.insertvalue %360, %380[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %382 = llvm.mlir.constant(0 : index) : i64
    %383 = llvm.mlir.constant(2 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%382 : i64)
  ^bb46(%385: i64):  // 2 preds: ^bb45, ^bb47
    %386 = llvm.icmp "slt" %385, %383 : i64
    llvm.cond_br %386, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %387 = llvm.extractvalue %343[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %388 = llvm.getelementptr %387[%385] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %389 = llvm.load %388 : !llvm.ptr<i1>
    %390 = llvm.extractvalue %275[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %391 = llvm.getelementptr %390[%385] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %392 = llvm.load %391 : !llvm.ptr<i64>
    %393 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %394 = llvm.getelementptr %393[%385] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %395 = llvm.load %394 : !llvm.ptr<i64>
    %396 = llvm.select %389, %392, %395 : i1, i64
    %397 = llvm.extractvalue %381[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %398 = llvm.getelementptr %397[%385] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %396, %398 : !llvm.ptr<i64>
    %399 = llvm.add %385, %384  : i64
    llvm.br ^bb46(%399 : i64)
  ^bb48:  // pred: ^bb46
    %400 = llvm.mlir.constant(1 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.mlir.null : !llvm.ptr<i32>
    %404 = llvm.getelementptr %403[%400] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %405 = llvm.ptrtoint %404 : !llvm.ptr<i32> to i64
    %406 = llvm.mlir.constant(16 : index) : i64
    %407 = llvm.add %405, %406  : i64
    %408 = llvm.call @malloc(%407) : (i64) -> !llvm.ptr<i8>
    %409 = llvm.bitcast %408 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %410 = llvm.ptrtoint %409 : !llvm.ptr<i32> to i64
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.sub %406, %411  : i64
    %413 = llvm.add %410, %412  : i64
    %414 = llvm.urem %413, %406  : i64
    %415 = llvm.sub %413, %414  : i64
    %416 = llvm.inttoptr %415 : i64 to !llvm.ptr<i32>
    %417 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %418 = llvm.insertvalue %409, %417[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %419 = llvm.insertvalue %416, %418[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %420 = llvm.mlir.constant(0 : index) : i64
    %421 = llvm.insertvalue %420, %419[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %422 = llvm.insertvalue %400, %421[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %423 = llvm.insertvalue %401, %422[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %424 = llvm.insertvalue %401, %423[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %425 = llvm.insertvalue %402, %424[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %426 = llvm.mlir.constant(0 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%426 : i64)
  ^bb49(%429: i64):  // 2 preds: ^bb48, ^bb53
    %430 = llvm.icmp "slt" %429, %427 : i64
    llvm.cond_br %430, ^bb50, ^bb54
  ^bb50:  // pred: ^bb49
    %431 = llvm.mlir.constant(0 : index) : i64
    %432 = llvm.mlir.constant(1 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%431 : i64)
  ^bb51(%434: i64):  // 2 preds: ^bb50, ^bb52
    %435 = llvm.icmp "slt" %434, %432 : i64
    llvm.cond_br %435, ^bb52, ^bb53
  ^bb52:  // pred: ^bb51
    %436 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %437 = llvm.add %9, %9  : i64
    %438 = llvm.getelementptr %436[%437] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %439 = llvm.load %438 : !llvm.ptr<i32>
    %440 = llvm.extractvalue %425[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %441 = llvm.add %429, %434  : i64
    %442 = llvm.getelementptr %440[%441] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %439, %442 : !llvm.ptr<i32>
    %443 = llvm.add %434, %433  : i64
    llvm.br ^bb51(%443 : i64)
  ^bb53:  // pred: ^bb51
    %444 = llvm.add %429, %428  : i64
    llvm.br ^bb49(%444 : i64)
  ^bb54:  // pred: ^bb49
    %445 = llvm.mlir.constant(2 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.mlir.null : !llvm.ptr<i32>
    %451 = llvm.getelementptr %450[%445] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %452 = llvm.ptrtoint %451 : !llvm.ptr<i32> to i64
    %453 = llvm.mlir.constant(16 : index) : i64
    %454 = llvm.add %452, %453  : i64
    %455 = llvm.call @malloc(%454) : (i64) -> !llvm.ptr<i8>
    %456 = llvm.bitcast %455 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %457 = llvm.ptrtoint %456 : !llvm.ptr<i32> to i64
    %458 = llvm.mlir.constant(1 : index) : i64
    %459 = llvm.sub %453, %458  : i64
    %460 = llvm.add %457, %459  : i64
    %461 = llvm.urem %460, %453  : i64
    %462 = llvm.sub %460, %461  : i64
    %463 = llvm.inttoptr %462 : i64 to !llvm.ptr<i32>
    %464 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %465 = llvm.insertvalue %456, %464[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.insertvalue %463, %465[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.mlir.constant(0 : index) : i64
    %468 = llvm.insertvalue %467, %466[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.insertvalue %445, %468[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.insertvalue %446, %469[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.insertvalue %447, %470[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.insertvalue %448, %471[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.insertvalue %446, %472[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %447, %473[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %448, %474[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %449, %475[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.mlir.constant(2 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%477 : i64)
  ^bb55(%480: i64):  // 2 preds: ^bb54, ^bb65
    %481 = llvm.icmp "slt" %480, %478 : i64
    llvm.cond_br %481, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %482 = llvm.mlir.constant(0 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%482 : i64)
  ^bb57(%485: i64):  // 2 preds: ^bb56, ^bb64
    %486 = llvm.icmp "slt" %485, %483 : i64
    llvm.cond_br %486, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %487 = llvm.mlir.constant(0 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%487 : i64)
  ^bb59(%490: i64):  // 2 preds: ^bb58, ^bb63
    %491 = llvm.icmp "slt" %490, %488 : i64
    llvm.cond_br %491, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %492 = llvm.mlir.constant(0 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%492 : i64)
  ^bb61(%495: i64):  // 2 preds: ^bb60, ^bb62
    %496 = llvm.icmp "slt" %495, %493 : i64
    llvm.cond_br %496, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %497 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %498 = llvm.add %490, %495  : i64
    %499 = llvm.getelementptr %497[%498] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %500 = llvm.load %499 : !llvm.ptr<i32>
    %501 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.add %480, %485  : i64
    %503 = llvm.add %502, %490  : i64
    %504 = llvm.add %503, %495  : i64
    %505 = llvm.getelementptr %501[%504] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %506 = llvm.load %505 : !llvm.ptr<i32>
    %507 = llvm.add %500, %506  : i32
    %508 = llvm.extractvalue %476[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %509 = llvm.add %480, %485  : i64
    %510 = llvm.add %509, %490  : i64
    %511 = llvm.add %510, %495  : i64
    %512 = llvm.getelementptr %508[%511] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %507, %512 : !llvm.ptr<i32>
    %513 = llvm.add %495, %494  : i64
    llvm.br ^bb61(%513 : i64)
  ^bb63:  // pred: ^bb61
    %514 = llvm.add %490, %489  : i64
    llvm.br ^bb59(%514 : i64)
  ^bb64:  // pred: ^bb59
    %515 = llvm.add %485, %484  : i64
    llvm.br ^bb57(%515 : i64)
  ^bb65:  // pred: ^bb57
    %516 = llvm.add %480, %479  : i64
    llvm.br ^bb55(%516 : i64)
  ^bb66:  // pred: ^bb55
    %517 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %518 = llvm.insertvalue %20, %517[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %519 = llvm.insertvalue %122, %518[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %520 = llvm.insertvalue %425, %519[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %521 = llvm.insertvalue %476, %520[3] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %521 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v6_0", "v0_0", "v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %8, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %29, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>) -> ()
    %30 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %31 = llvm.extractvalue %30[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %32 = llvm.extractvalue %30[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %33 = llvm.extractvalue %30[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %34 = llvm.extractvalue %30[3] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %35 = llvm.mlir.constant(4 : i64) : i64
    %36 = llvm.mlir.constant(32 : i64) : i64
    %37 = llvm.call @malloc(%36) : (i64) -> !llvm.ptr<i8>
    %38 = llvm.bitcast %37 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %39 = llvm.mlir.constant(1 : i64) : i64
    %40 = llvm.call @omTensorCreateUntyped(%39) : (i64) -> !llvm.ptr<i8>
    %41 = llvm.mlir.constant(0 : i64) : i64
    %42 = llvm.extractvalue %31[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.bitcast %42 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %44 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.bitcast %44 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%40, %41, %43, %45) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %46 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%40, %46) : (!llvm.ptr<i8>, i64) -> ()
    %47 = llvm.call @omTensorGetShape(%40) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %48 = llvm.call @omTensorGetStrides(%40) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %49 = llvm.mlir.constant(0 : i64) : i64
    %50 = llvm.extractvalue %31[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.getelementptr %47[%49] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %50, %51 : !llvm.ptr<i64>
    %52 = llvm.extractvalue %31[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.getelementptr %48[%49] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %52, %53 : !llvm.ptr<i64>
    %54 = llvm.mlir.constant(0 : i64) : i64
    %55 = llvm.getelementptr %38[%54] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %40, %55 : !llvm.ptr<ptr<i8>>
    %56 = llvm.mlir.constant(3 : i64) : i64
    %57 = llvm.call @omTensorCreateUntyped(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.mlir.constant(1 : i64) : i64
    %59 = llvm.extractvalue %32[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %60 = llvm.bitcast %59 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %61 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%57, %58, %60, %62) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %63 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%57, %63) : (!llvm.ptr<i8>, i64) -> ()
    %64 = llvm.call @omTensorGetShape(%57) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %65 = llvm.call @omTensorGetStrides(%57) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %66 = llvm.mlir.constant(0 : i64) : i64
    %67 = llvm.extractvalue %32[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %64[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %32[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.getelementptr %65[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.extractvalue %32[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %64[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %32[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %65[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(2 : i64) : i64
    %77 = llvm.extractvalue %32[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %78 = llvm.getelementptr %64[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %32[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %80 = llvm.getelementptr %65[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(1 : i64) : i64
    %82 = llvm.getelementptr %38[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %57, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(2 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %33[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %33[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %33[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %33[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %33[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.getelementptr %38[%103] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %104 : !llvm.ptr<ptr<i8>>
    %105 = llvm.mlir.constant(4 : i64) : i64
    %106 = llvm.call @omTensorCreateUntyped(%105) : (i64) -> !llvm.ptr<i8>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.bitcast %108 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %110 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.bitcast %110 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%106, %107, %109, %111) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %112 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%106, %112) : (!llvm.ptr<i8>, i64) -> ()
    %113 = llvm.call @omTensorGetShape(%106) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %114 = llvm.call @omTensorGetStrides(%106) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %115 = llvm.mlir.constant(0 : i64) : i64
    %116 = llvm.extractvalue %34[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %113[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.extractvalue %34[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %114[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.mlir.constant(1 : i64) : i64
    %121 = llvm.extractvalue %34[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %113[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.extractvalue %34[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %114[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.mlir.constant(2 : i64) : i64
    %126 = llvm.extractvalue %34[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.getelementptr %113[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %127 : !llvm.ptr<i64>
    %128 = llvm.extractvalue %34[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %114[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.mlir.constant(3 : i64) : i64
    %131 = llvm.extractvalue %34[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.getelementptr %113[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %131, %132 : !llvm.ptr<i64>
    %133 = llvm.extractvalue %34[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.getelementptr %114[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.mlir.constant(3 : i64) : i64
    %136 = llvm.getelementptr %38[%135] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %106, %136 : !llvm.ptr<ptr<i8>>
    %137 = llvm.call @omTensorListCreate(%38, %35, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %137 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<64 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<64 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<257 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<257 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

