module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v6_0", "v0_0", "v1_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %16 = llvm.mlir.constant(0 : i32) : i32
    %17 = llvm.mlir.constant(1 : i64) : i64
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %23 = llvm.insertvalue %21, %22[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(4 : index) : i64
    %28 = llvm.insertvalue %27, %26[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.insertvalue %29, %28[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %32 = llvm.bitcast %31 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %33 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %34 = llvm.insertvalue %32, %33[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %38 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %39 = llvm.bitcast %38 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %40 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %41 = llvm.insertvalue %39, %40[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.insertvalue %39, %41[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(0 : index) : i64
    %44 = llvm.insertvalue %43, %42[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(4 : index) : i64
    %46 = llvm.insertvalue %45, %44[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.insertvalue %47, %46[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(2 : index) : i64
    %52 = llvm.mlir.constant(2 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.mlir.constant(4 : index) : i64
    %55 = llvm.mlir.constant(4 : index) : i64
    %56 = llvm.mlir.constant(4 : index) : i64
    %57 = llvm.mlir.null : !llvm.ptr<i32>
    %58 = llvm.getelementptr %57[%56] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %59 = llvm.ptrtoint %58 : !llvm.ptr<i32> to i64
    %60 = llvm.mlir.constant(16 : index) : i64
    %61 = llvm.add %59, %60  : i64
    %62 = llvm.call @malloc(%61) : (i64) -> !llvm.ptr<i8>
    %63 = llvm.bitcast %62 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %64 = llvm.ptrtoint %63 : !llvm.ptr<i32> to i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.sub %60, %65  : i64
    %67 = llvm.add %64, %66  : i64
    %68 = llvm.urem %67, %60  : i64
    %69 = llvm.sub %67, %68  : i64
    %70 = llvm.inttoptr %69 : i64 to !llvm.ptr<i32>
    %71 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %72 = llvm.insertvalue %63, %71[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %70, %72[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.insertvalue %74, %73[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %49, %75[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %50, %76[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %51, %77[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %52, %78[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.insertvalue %55, %79[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.insertvalue %54, %80[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.insertvalue %52, %81[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.insertvalue %53, %82[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%84 : i64)
  ^bb1(%87: i64):  // 2 preds: ^bb0, ^bb11
    %88 = llvm.icmp "slt" %87, %85 : i64
    llvm.cond_br %88, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%89 : i64)
  ^bb3(%92: i64):  // 2 preds: ^bb2, ^bb10
    %93 = llvm.icmp "slt" %92, %90 : i64
    llvm.cond_br %93, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %94 = llvm.mlir.constant(0 : index) : i64
    %95 = llvm.mlir.constant(2 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%94 : i64)
  ^bb5(%97: i64):  // 2 preds: ^bb4, ^bb9
    %98 = llvm.icmp "slt" %97, %95 : i64
    llvm.cond_br %98, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%99 : i64)
  ^bb7(%102: i64):  // 2 preds: ^bb6, ^bb8
    %103 = llvm.icmp "slt" %102, %100 : i64
    llvm.cond_br %103, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %104 = llvm.extractvalue %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %105 = llvm.load %104 : !llvm.ptr<i32>
    %106 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.mlir.constant(4 : index) : i64
    %108 = llvm.mul %87, %107  : i64
    %109 = llvm.mlir.constant(4 : index) : i64
    %110 = llvm.mul %92, %109  : i64
    %111 = llvm.add %108, %110  : i64
    %112 = llvm.mlir.constant(2 : index) : i64
    %113 = llvm.mul %97, %112  : i64
    %114 = llvm.add %111, %113  : i64
    %115 = llvm.add %114, %102  : i64
    %116 = llvm.getelementptr %106[%115] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %117 = llvm.load %116 : !llvm.ptr<i32>
    %118 = llvm.add %105, %117  : i32
    %119 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.mlir.constant(4 : index) : i64
    %121 = llvm.mul %87, %120  : i64
    %122 = llvm.mlir.constant(4 : index) : i64
    %123 = llvm.mul %92, %122  : i64
    %124 = llvm.add %121, %123  : i64
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mul %97, %125  : i64
    %127 = llvm.add %124, %126  : i64
    %128 = llvm.add %127, %102  : i64
    %129 = llvm.getelementptr %119[%128] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %118, %129 : !llvm.ptr<i32>
    %130 = llvm.add %102, %101  : i64
    llvm.br ^bb7(%130 : i64)
  ^bb9:  // pred: ^bb7
    %131 = llvm.add %97, %96  : i64
    llvm.br ^bb5(%131 : i64)
  ^bb10:  // pred: ^bb5
    %132 = llvm.add %92, %91  : i64
    llvm.br ^bb3(%132 : i64)
  ^bb11:  // pred: ^bb3
    %133 = llvm.add %87, %86  : i64
    llvm.br ^bb1(%133 : i64)
  ^bb12:  // pred: ^bb1
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.mlir.constant(2 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mlir.constant(2 : index) : i64
    %141 = llvm.mlir.null : !llvm.ptr<i32>
    %142 = llvm.getelementptr %141[%140] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %143 = llvm.ptrtoint %142 : !llvm.ptr<i32> to i64
    %144 = llvm.mlir.constant(16 : index) : i64
    %145 = llvm.add %143, %144  : i64
    %146 = llvm.call @malloc(%145) : (i64) -> !llvm.ptr<i8>
    %147 = llvm.bitcast %146 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %148 = llvm.ptrtoint %147 : !llvm.ptr<i32> to i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.sub %144, %149  : i64
    %151 = llvm.add %148, %150  : i64
    %152 = llvm.urem %151, %144  : i64
    %153 = llvm.sub %151, %152  : i64
    %154 = llvm.inttoptr %153 : i64 to !llvm.ptr<i32>
    %155 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %156 = llvm.insertvalue %147, %155[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %154, %156[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.insertvalue %158, %157[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %134, %159[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.insertvalue %135, %160[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %136, %161[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.insertvalue %137, %162[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.insertvalue %139, %163[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.insertvalue %136, %164[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.insertvalue %137, %165[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.insertvalue %138, %166[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%168 : i64)
  ^bb13(%171: i64):  // 2 preds: ^bb12, ^bb23
    %172 = llvm.icmp "slt" %171, %169 : i64
    llvm.cond_br %172, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %173 = llvm.mlir.constant(0 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%173 : i64)
  ^bb15(%176: i64):  // 2 preds: ^bb14, ^bb22
    %177 = llvm.icmp "slt" %176, %174 : i64
    llvm.cond_br %177, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.mlir.constant(2 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%178 : i64)
  ^bb17(%181: i64):  // 2 preds: ^bb16, ^bb21
    %182 = llvm.icmp "slt" %181, %179 : i64
    llvm.cond_br %182, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%183 : i64)
  ^bb19(%186: i64):  // 2 preds: ^bb18, ^bb20
    %187 = llvm.icmp "slt" %186, %184 : i64
    llvm.cond_br %187, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %188 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.mlir.constant(4 : index) : i64
    %190 = llvm.mul %171, %189  : i64
    %191 = llvm.mlir.constant(4 : index) : i64
    %192 = llvm.mul %176, %191  : i64
    %193 = llvm.add %190, %192  : i64
    %194 = llvm.mlir.constant(2 : index) : i64
    %195 = llvm.mul %181, %194  : i64
    %196 = llvm.add %193, %195  : i64
    %197 = llvm.add %196, %186  : i64
    %198 = llvm.getelementptr %188[%197] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %199 = llvm.load %198 : !llvm.ptr<i32>
    %200 = llvm.extractvalue %167[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.mlir.constant(2 : index) : i64
    %202 = llvm.mul %171, %201  : i64
    %203 = llvm.mlir.constant(2 : index) : i64
    %204 = llvm.mul %176, %203  : i64
    %205 = llvm.add %202, %204  : i64
    %206 = llvm.add %205, %181  : i64
    %207 = llvm.add %206, %186  : i64
    %208 = llvm.getelementptr %200[%207] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %199, %208 : !llvm.ptr<i32>
    %209 = llvm.add %186, %185  : i64
    llvm.br ^bb19(%209 : i64)
  ^bb21:  // pred: ^bb19
    %210 = llvm.add %181, %180  : i64
    llvm.br ^bb17(%210 : i64)
  ^bb22:  // pred: ^bb17
    %211 = llvm.add %176, %175  : i64
    llvm.br ^bb15(%211 : i64)
  ^bb23:  // pred: ^bb15
    %212 = llvm.add %171, %170  : i64
    llvm.br ^bb13(%212 : i64)
  ^bb24:  // pred: ^bb13
    %213 = llvm.mlir.constant(4 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.null : !llvm.ptr<i64>
    %216 = llvm.getelementptr %215[%213] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %217 = llvm.ptrtoint %216 : !llvm.ptr<i64> to i64
    %218 = llvm.mlir.constant(16 : index) : i64
    %219 = llvm.add %217, %218  : i64
    %220 = llvm.call @malloc(%219) : (i64) -> !llvm.ptr<i8>
    %221 = llvm.bitcast %220 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %222 = llvm.ptrtoint %221 : !llvm.ptr<i64> to i64
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.sub %218, %223  : i64
    %225 = llvm.add %222, %224  : i64
    %226 = llvm.urem %225, %218  : i64
    %227 = llvm.sub %225, %226  : i64
    %228 = llvm.inttoptr %227 : i64 to !llvm.ptr<i64>
    %229 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %230 = llvm.insertvalue %221, %229[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %231 = llvm.insertvalue %228, %230[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.insertvalue %232, %231[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %234 = llvm.insertvalue %213, %233[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %235 = llvm.insertvalue %214, %234[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(4 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%236 : i64)
  ^bb25(%239: i64):  // 2 preds: ^bb24, ^bb26
    %240 = llvm.icmp "slt" %239, %237 : i64
    llvm.cond_br %240, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %241 = llvm.extractvalue %235[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.getelementptr %241[%239] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %17, %242 : !llvm.ptr<i64>
    %243 = llvm.add %239, %238  : i64
    llvm.br ^bb25(%243 : i64)
  ^bb27:  // pred: ^bb25
    %244 = llvm.mlir.constant(4 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.null : !llvm.ptr<i64>
    %247 = llvm.getelementptr %246[%244] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %248 = llvm.ptrtoint %247 : !llvm.ptr<i64> to i64
    %249 = llvm.mlir.constant(16 : index) : i64
    %250 = llvm.add %248, %249  : i64
    %251 = llvm.call @malloc(%250) : (i64) -> !llvm.ptr<i8>
    %252 = llvm.bitcast %251 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %253 = llvm.ptrtoint %252 : !llvm.ptr<i64> to i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.sub %249, %254  : i64
    %256 = llvm.add %253, %255  : i64
    %257 = llvm.urem %256, %249  : i64
    %258 = llvm.sub %256, %257  : i64
    %259 = llvm.inttoptr %258 : i64 to !llvm.ptr<i64>
    %260 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %261 = llvm.insertvalue %252, %260[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.insertvalue %259, %261[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.mlir.constant(0 : index) : i64
    %264 = llvm.insertvalue %263, %262[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.insertvalue %244, %264[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.insertvalue %245, %265[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.mlir.constant(4 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%267 : i64)
  ^bb28(%270: i64):  // 2 preds: ^bb27, ^bb29
    %271 = llvm.icmp "slt" %270, %268 : i64
    llvm.cond_br %271, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %272 = llvm.extractvalue %235[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %273 = llvm.getelementptr %272[%270] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %274 = llvm.load %273 : !llvm.ptr<i64>
    %275 = llvm.extractvalue %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %276 = llvm.load %275 : !llvm.ptr<i64>
    %277 = llvm.mul %274, %276  : i64
    %278 = llvm.extractvalue %266[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %279 = llvm.getelementptr %278[%270] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %277, %279 : !llvm.ptr<i64>
    %280 = llvm.add %270, %269  : i64
    llvm.br ^bb28(%280 : i64)
  ^bb30:  // pred: ^bb28
    %281 = llvm.mlir.constant(4 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    %283 = llvm.mlir.null : !llvm.ptr<i1>
    %284 = llvm.getelementptr %283[%281] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %285 = llvm.ptrtoint %284 : !llvm.ptr<i1> to i64
    %286 = llvm.mlir.constant(16 : index) : i64
    %287 = llvm.add %285, %286  : i64
    %288 = llvm.call @malloc(%287) : (i64) -> !llvm.ptr<i8>
    %289 = llvm.bitcast %288 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %290 = llvm.ptrtoint %289 : !llvm.ptr<i1> to i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.sub %286, %291  : i64
    %293 = llvm.add %290, %292  : i64
    %294 = llvm.urem %293, %286  : i64
    %295 = llvm.sub %293, %294  : i64
    %296 = llvm.inttoptr %295 : i64 to !llvm.ptr<i1>
    %297 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %298 = llvm.insertvalue %289, %297[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %299 = llvm.insertvalue %296, %298[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %300 = llvm.mlir.constant(0 : index) : i64
    %301 = llvm.insertvalue %300, %299[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %302 = llvm.insertvalue %281, %301[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.insertvalue %282, %302[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.mlir.constant(4 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%304 : i64)
  ^bb31(%307: i64):  // 2 preds: ^bb30, ^bb32
    %308 = llvm.icmp "slt" %307, %305 : i64
    llvm.cond_br %308, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %309 = llvm.extractvalue %30[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %310 = llvm.getelementptr %309[%307] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %311 = llvm.load %310 : !llvm.ptr<i64>
    %312 = llvm.extractvalue %266[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %313 = llvm.getelementptr %312[%307] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %314 = llvm.load %313 : !llvm.ptr<i64>
    %315 = llvm.icmp "eq" %311, %314 : i64
    %316 = llvm.extractvalue %303[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %317 = llvm.getelementptr %316[%307] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %315, %317 : !llvm.ptr<i1>
    %318 = llvm.add %307, %306  : i64
    llvm.br ^bb31(%318 : i64)
  ^bb33:  // pred: ^bb31
    %319 = llvm.mlir.constant(4 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.null : !llvm.ptr<i64>
    %322 = llvm.getelementptr %321[%319] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %323 = llvm.ptrtoint %322 : !llvm.ptr<i64> to i64
    %324 = llvm.mlir.constant(16 : index) : i64
    %325 = llvm.add %323, %324  : i64
    %326 = llvm.call @malloc(%325) : (i64) -> !llvm.ptr<i8>
    %327 = llvm.bitcast %326 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %328 = llvm.ptrtoint %327 : !llvm.ptr<i64> to i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.sub %324, %329  : i64
    %331 = llvm.add %328, %330  : i64
    %332 = llvm.urem %331, %324  : i64
    %333 = llvm.sub %331, %332  : i64
    %334 = llvm.inttoptr %333 : i64 to !llvm.ptr<i64>
    %335 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %336 = llvm.insertvalue %327, %335[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.insertvalue %334, %336[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %338 = llvm.mlir.constant(0 : index) : i64
    %339 = llvm.insertvalue %338, %337[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %340 = llvm.insertvalue %319, %339[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.insertvalue %320, %340[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(4 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%342 : i64)
  ^bb34(%345: i64):  // 2 preds: ^bb33, ^bb35
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %347 = llvm.extractvalue %303[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %348 = llvm.getelementptr %347[%345] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %349 = llvm.load %348 : !llvm.ptr<i1>
    %350 = llvm.extractvalue %235[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %351 = llvm.getelementptr %350[%345] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %352 = llvm.load %351 : !llvm.ptr<i64>
    %353 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %354 = llvm.getelementptr %353[%345] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %355 = llvm.load %354 : !llvm.ptr<i64>
    %356 = llvm.select %349, %352, %355 : i1, i64
    %357 = llvm.extractvalue %341[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %358 = llvm.getelementptr %357[%345] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %356, %358 : !llvm.ptr<i64>
    %359 = llvm.add %345, %344  : i64
    llvm.br ^bb34(%359 : i64)
  ^bb36:  // pred: ^bb34
    %360 = llvm.extractvalue %341[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %361 = llvm.getelementptr %360[%18] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %362 = llvm.load %361 : !llvm.ptr<i64>
    %363 = llvm.extractvalue %341[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %364 = llvm.getelementptr %363[%19] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %365 = llvm.load %364 : !llvm.ptr<i64>
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mlir.constant(2 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.mlir.constant(4 : index) : i64
    %370 = llvm.mul %369, %365  : i64
    %371 = llvm.mul %370, %362  : i64
    %372 = llvm.mlir.null : !llvm.ptr<i32>
    %373 = llvm.getelementptr %372[%371] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %374 = llvm.ptrtoint %373 : !llvm.ptr<i32> to i64
    %375 = llvm.mlir.constant(16 : index) : i64
    %376 = llvm.add %374, %375  : i64
    %377 = llvm.call @malloc(%376) : (i64) -> !llvm.ptr<i8>
    %378 = llvm.bitcast %377 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %379 = llvm.ptrtoint %378 : !llvm.ptr<i32> to i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.sub %375, %380  : i64
    %382 = llvm.add %379, %381  : i64
    %383 = llvm.urem %382, %375  : i64
    %384 = llvm.sub %382, %383  : i64
    %385 = llvm.inttoptr %384 : i64 to !llvm.ptr<i32>
    %386 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %387 = llvm.insertvalue %378, %386[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.insertvalue %385, %387[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.insertvalue %389, %388[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.insertvalue %362, %390[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.insertvalue %365, %391[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.insertvalue %366, %392[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.insertvalue %367, %393[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.insertvalue %370, %394[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.insertvalue %369, %395[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.insertvalue %367, %396[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %368, %397[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.mlir.constant(0 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%399 : i64)
  ^bb37(%401: i64):  // 2 preds: ^bb36, ^bb47
    %402 = llvm.icmp "slt" %401, %362 : i64
    llvm.cond_br %402, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %403 = llvm.mlir.constant(0 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%403 : i64)
  ^bb39(%405: i64):  // 2 preds: ^bb38, ^bb46
    %406 = llvm.icmp "slt" %405, %365 : i64
    llvm.cond_br %406, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %407 = llvm.mlir.constant(0 : index) : i64
    %408 = llvm.mlir.constant(2 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%407 : i64)
  ^bb41(%410: i64):  // 2 preds: ^bb40, ^bb45
    %411 = llvm.icmp "slt" %410, %408 : i64
    llvm.cond_br %411, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %412 = llvm.mlir.constant(0 : index) : i64
    %413 = llvm.mlir.constant(2 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%412 : i64)
  ^bb43(%415: i64):  // 2 preds: ^bb42, ^bb44
    %416 = llvm.icmp "slt" %415, %413 : i64
    llvm.cond_br %416, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %417 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.mlir.constant(4 : index) : i64
    %419 = llvm.mul %18, %418  : i64
    %420 = llvm.mlir.constant(4 : index) : i64
    %421 = llvm.mul %18, %420  : i64
    %422 = llvm.add %419, %421  : i64
    %423 = llvm.mlir.constant(2 : index) : i64
    %424 = llvm.mul %410, %423  : i64
    %425 = llvm.add %422, %424  : i64
    %426 = llvm.add %425, %415  : i64
    %427 = llvm.getelementptr %417[%426] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %428 = llvm.load %427 : !llvm.ptr<i32>
    %429 = llvm.extractvalue %398[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.extractvalue %398[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.mul %401, %430  : i64
    %432 = llvm.mlir.constant(4 : index) : i64
    %433 = llvm.mul %405, %432  : i64
    %434 = llvm.add %431, %433  : i64
    %435 = llvm.mlir.constant(2 : index) : i64
    %436 = llvm.mul %410, %435  : i64
    %437 = llvm.add %434, %436  : i64
    %438 = llvm.add %437, %415  : i64
    %439 = llvm.getelementptr %429[%438] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %428, %439 : !llvm.ptr<i32>
    %440 = llvm.add %415, %414  : i64
    llvm.br ^bb43(%440 : i64)
  ^bb45:  // pred: ^bb43
    %441 = llvm.add %410, %409  : i64
    llvm.br ^bb41(%441 : i64)
  ^bb46:  // pred: ^bb41
    %442 = llvm.add %405, %404  : i64
    llvm.br ^bb39(%442 : i64)
  ^bb47:  // pred: ^bb39
    %443 = llvm.add %401, %400  : i64
    llvm.br ^bb37(%443 : i64)
  ^bb48:  // pred: ^bb37
    %444 = llvm.mlir.constant(1 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    %446 = llvm.mlir.constant(2 : index) : i64
    %447 = llvm.mlir.constant(2 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    %449 = llvm.mlir.constant(4 : index) : i64
    %450 = llvm.mlir.constant(4 : index) : i64
    %451 = llvm.mlir.constant(4 : index) : i64
    %452 = llvm.mlir.null : !llvm.ptr<i32>
    %453 = llvm.getelementptr %452[%451] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %454 = llvm.ptrtoint %453 : !llvm.ptr<i32> to i64
    %455 = llvm.mlir.constant(16 : index) : i64
    %456 = llvm.add %454, %455  : i64
    %457 = llvm.call @malloc(%456) : (i64) -> !llvm.ptr<i8>
    %458 = llvm.bitcast %457 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %459 = llvm.ptrtoint %458 : !llvm.ptr<i32> to i64
    %460 = llvm.mlir.constant(1 : index) : i64
    %461 = llvm.sub %455, %460  : i64
    %462 = llvm.add %459, %461  : i64
    %463 = llvm.urem %462, %455  : i64
    %464 = llvm.sub %462, %463  : i64
    %465 = llvm.inttoptr %464 : i64 to !llvm.ptr<i32>
    %466 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %467 = llvm.insertvalue %458, %466[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.insertvalue %465, %467[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.mlir.constant(0 : index) : i64
    %470 = llvm.insertvalue %469, %468[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.insertvalue %444, %470[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.insertvalue %445, %471[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.insertvalue %446, %472[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %447, %473[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %450, %474[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %449, %475[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.insertvalue %447, %476[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.insertvalue %448, %477[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.mlir.constant(0 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    %481 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%479 : i64)
  ^bb49(%482: i64):  // 2 preds: ^bb48, ^bb59
    %483 = llvm.icmp "slt" %482, %480 : i64
    llvm.cond_br %483, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %484 = llvm.mlir.constant(0 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    %486 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%484 : i64)
  ^bb51(%487: i64):  // 2 preds: ^bb50, ^bb58
    %488 = llvm.icmp "slt" %487, %485 : i64
    llvm.cond_br %488, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %489 = llvm.mlir.constant(0 : index) : i64
    %490 = llvm.mlir.constant(2 : index) : i64
    %491 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%489 : i64)
  ^bb53(%492: i64):  // 2 preds: ^bb52, ^bb57
    %493 = llvm.icmp "slt" %492, %490 : i64
    llvm.cond_br %493, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %494 = llvm.mlir.constant(0 : index) : i64
    %495 = llvm.mlir.constant(2 : index) : i64
    %496 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%494 : i64)
  ^bb55(%497: i64):  // 2 preds: ^bb54, ^bb56
    %498 = llvm.icmp "slt" %497, %495 : i64
    llvm.cond_br %498, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %499 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %500 = llvm.mlir.constant(4 : index) : i64
    %501 = llvm.mul %18, %500  : i64
    %502 = llvm.mlir.constant(4 : index) : i64
    %503 = llvm.mul %18, %502  : i64
    %504 = llvm.add %501, %503  : i64
    %505 = llvm.mlir.constant(2 : index) : i64
    %506 = llvm.mul %492, %505  : i64
    %507 = llvm.add %504, %506  : i64
    %508 = llvm.add %507, %497  : i64
    %509 = llvm.getelementptr %499[%508] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %510 = llvm.load %509 : !llvm.ptr<i32>
    %511 = llvm.extractvalue %398[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.extractvalue %398[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.mul %482, %512  : i64
    %514 = llvm.mlir.constant(4 : index) : i64
    %515 = llvm.mul %487, %514  : i64
    %516 = llvm.add %513, %515  : i64
    %517 = llvm.mlir.constant(2 : index) : i64
    %518 = llvm.mul %492, %517  : i64
    %519 = llvm.add %516, %518  : i64
    %520 = llvm.add %519, %497  : i64
    %521 = llvm.getelementptr %511[%520] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %522 = llvm.load %521 : !llvm.ptr<i32>
    %523 = llvm.add %510, %522  : i32
    %524 = llvm.extractvalue %478[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %525 = llvm.mlir.constant(4 : index) : i64
    %526 = llvm.mul %482, %525  : i64
    %527 = llvm.mlir.constant(4 : index) : i64
    %528 = llvm.mul %487, %527  : i64
    %529 = llvm.add %526, %528  : i64
    %530 = llvm.mlir.constant(2 : index) : i64
    %531 = llvm.mul %492, %530  : i64
    %532 = llvm.add %529, %531  : i64
    %533 = llvm.add %532, %497  : i64
    %534 = llvm.getelementptr %524[%533] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %523, %534 : !llvm.ptr<i32>
    %535 = llvm.add %497, %496  : i64
    llvm.br ^bb55(%535 : i64)
  ^bb57:  // pred: ^bb55
    %536 = llvm.add %492, %491  : i64
    llvm.br ^bb53(%536 : i64)
  ^bb58:  // pred: ^bb53
    %537 = llvm.add %487, %486  : i64
    llvm.br ^bb51(%537 : i64)
  ^bb59:  // pred: ^bb51
    %538 = llvm.add %482, %481  : i64
    llvm.br ^bb49(%538 : i64)
  ^bb60:  // pred: ^bb49
    %539 = llvm.mlir.constant(1 : index) : i64
    %540 = llvm.mlir.constant(1 : index) : i64
    %541 = llvm.mlir.constant(2 : index) : i64
    %542 = llvm.mlir.constant(2 : index) : i64
    %543 = llvm.mlir.constant(1 : index) : i64
    %544 = llvm.mlir.constant(4 : index) : i64
    %545 = llvm.mlir.constant(4 : index) : i64
    %546 = llvm.mlir.constant(4 : index) : i64
    %547 = llvm.mlir.null : !llvm.ptr<i1>
    %548 = llvm.getelementptr %547[%546] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %549 = llvm.ptrtoint %548 : !llvm.ptr<i1> to i64
    %550 = llvm.mlir.constant(16 : index) : i64
    %551 = llvm.add %549, %550  : i64
    %552 = llvm.call @malloc(%551) : (i64) -> !llvm.ptr<i8>
    %553 = llvm.bitcast %552 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %554 = llvm.ptrtoint %553 : !llvm.ptr<i1> to i64
    %555 = llvm.mlir.constant(1 : index) : i64
    %556 = llvm.sub %550, %555  : i64
    %557 = llvm.add %554, %556  : i64
    %558 = llvm.urem %557, %550  : i64
    %559 = llvm.sub %557, %558  : i64
    %560 = llvm.inttoptr %559 : i64 to !llvm.ptr<i1>
    %561 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %562 = llvm.insertvalue %553, %561[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %563 = llvm.insertvalue %560, %562[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %564 = llvm.mlir.constant(0 : index) : i64
    %565 = llvm.insertvalue %564, %563[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %566 = llvm.insertvalue %539, %565[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %567 = llvm.insertvalue %540, %566[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %568 = llvm.insertvalue %541, %567[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %569 = llvm.insertvalue %542, %568[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %570 = llvm.insertvalue %545, %569[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %571 = llvm.insertvalue %544, %570[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %572 = llvm.insertvalue %542, %571[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %573 = llvm.insertvalue %543, %572[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %574 = llvm.mlir.constant(0 : index) : i64
    %575 = llvm.mlir.constant(1 : index) : i64
    %576 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%574 : i64)
  ^bb61(%577: i64):  // 2 preds: ^bb60, ^bb71
    %578 = llvm.icmp "slt" %577, %575 : i64
    llvm.cond_br %578, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %579 = llvm.mlir.constant(0 : index) : i64
    %580 = llvm.mlir.constant(1 : index) : i64
    %581 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%579 : i64)
  ^bb63(%582: i64):  // 2 preds: ^bb62, ^bb70
    %583 = llvm.icmp "slt" %582, %580 : i64
    llvm.cond_br %583, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %584 = llvm.mlir.constant(0 : index) : i64
    %585 = llvm.mlir.constant(2 : index) : i64
    %586 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%584 : i64)
  ^bb65(%587: i64):  // 2 preds: ^bb64, ^bb69
    %588 = llvm.icmp "slt" %587, %585 : i64
    llvm.cond_br %588, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %589 = llvm.mlir.constant(0 : index) : i64
    %590 = llvm.mlir.constant(2 : index) : i64
    %591 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%589 : i64)
  ^bb67(%592: i64):  // 2 preds: ^bb66, ^bb68
    %593 = llvm.icmp "slt" %592, %590 : i64
    llvm.cond_br %593, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %594 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %595 = llvm.mlir.constant(4 : index) : i64
    %596 = llvm.mul %577, %595  : i64
    %597 = llvm.mlir.constant(4 : index) : i64
    %598 = llvm.mul %582, %597  : i64
    %599 = llvm.add %596, %598  : i64
    %600 = llvm.mlir.constant(2 : index) : i64
    %601 = llvm.mul %587, %600  : i64
    %602 = llvm.add %599, %601  : i64
    %603 = llvm.add %602, %592  : i64
    %604 = llvm.getelementptr %594[%603] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %605 = llvm.load %604 : !llvm.ptr<i32>
    %606 = llvm.icmp "ne" %605, %16 : i32
    %607 = llvm.extractvalue %573[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %608 = llvm.mlir.constant(4 : index) : i64
    %609 = llvm.mul %577, %608  : i64
    %610 = llvm.mlir.constant(4 : index) : i64
    %611 = llvm.mul %582, %610  : i64
    %612 = llvm.add %609, %611  : i64
    %613 = llvm.mlir.constant(2 : index) : i64
    %614 = llvm.mul %587, %613  : i64
    %615 = llvm.add %612, %614  : i64
    %616 = llvm.add %615, %592  : i64
    %617 = llvm.getelementptr %607[%616] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %606, %617 : !llvm.ptr<i1>
    %618 = llvm.add %592, %591  : i64
    llvm.br ^bb67(%618 : i64)
  ^bb69:  // pred: ^bb67
    %619 = llvm.add %587, %586  : i64
    llvm.br ^bb65(%619 : i64)
  ^bb70:  // pred: ^bb65
    %620 = llvm.add %582, %581  : i64
    llvm.br ^bb63(%620 : i64)
  ^bb71:  // pred: ^bb63
    %621 = llvm.add %577, %576  : i64
    llvm.br ^bb61(%621 : i64)
  ^bb72:  // pred: ^bb61
    %622 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %623 = llvm.insertvalue %167, %622[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %624 = llvm.insertvalue %478, %623[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %625 = llvm.insertvalue %573, %624[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %625 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) attributes {input_names = ["v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v6_0", "v0_0", "v1_0"]} {
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
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %16 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %16, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %54, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) -> ()
    %57 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %58 = llvm.extractvalue %57[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %59 = llvm.extractvalue %57[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %60 = llvm.extractvalue %57[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %61 = llvm.mlir.constant(3 : i64) : i64
    %62 = llvm.mlir.constant(24 : i64) : i64
    %63 = llvm.call @malloc(%62) : (i64) -> !llvm.ptr<i8>
    %64 = llvm.bitcast %63 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %65 = llvm.mlir.constant(4 : i64) : i64
    %66 = llvm.call @omTensorCreateUntyped(%65) : (i64) -> !llvm.ptr<i8>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %58[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.bitcast %68 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %70 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.bitcast %70 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%66, %67, %69, %71) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %72 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%66, %72) : (!llvm.ptr<i8>, i64) -> ()
    %73 = llvm.call @omTensorGetShape(%66) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %74 = llvm.call @omTensorGetStrides(%66) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %75 = llvm.mlir.constant(0 : i64) : i64
    %76 = llvm.extractvalue %58[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.getelementptr %73[%75] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.extractvalue %58[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %74[%75] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %58[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %73[%80] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.extractvalue %58[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.getelementptr %74[%80] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %83, %84 : !llvm.ptr<i64>
    %85 = llvm.mlir.constant(2 : i64) : i64
    %86 = llvm.extractvalue %58[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.getelementptr %73[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.extractvalue %58[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %74[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %88, %89 : !llvm.ptr<i64>
    %90 = llvm.mlir.constant(3 : i64) : i64
    %91 = llvm.extractvalue %58[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %73[%90] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.extractvalue %58[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.getelementptr %74[%90] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %93, %94 : !llvm.ptr<i64>
    %95 = llvm.mlir.constant(0 : i64) : i64
    %96 = llvm.getelementptr %64[%95] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %66, %96 : !llvm.ptr<ptr<i8>>
    %97 = llvm.mlir.constant(4 : i64) : i64
    %98 = llvm.call @omTensorCreateUntyped(%97) : (i64) -> !llvm.ptr<i8>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %59[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.bitcast %100 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %102 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.bitcast %102 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%98, %99, %101, %103) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %104 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%98, %104) : (!llvm.ptr<i8>, i64) -> ()
    %105 = llvm.call @omTensorGetShape(%98) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %106 = llvm.call @omTensorGetStrides(%98) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %107 = llvm.mlir.constant(0 : i64) : i64
    %108 = llvm.extractvalue %59[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %105[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.extractvalue %59[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %106[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.mlir.constant(1 : i64) : i64
    %113 = llvm.extractvalue %59[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %105[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %59[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %106[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(2 : i64) : i64
    %118 = llvm.extractvalue %59[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %105[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.extractvalue %59[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %106[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.mlir.constant(3 : i64) : i64
    %123 = llvm.extractvalue %59[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %105[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.extractvalue %59[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.getelementptr %106[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %125, %126 : !llvm.ptr<i64>
    %127 = llvm.mlir.constant(1 : i64) : i64
    %128 = llvm.getelementptr %64[%127] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %98, %128 : !llvm.ptr<ptr<i8>>
    %129 = llvm.mlir.constant(4 : i64) : i64
    %130 = llvm.call @omTensorCreateUntyped(%129) : (i64) -> !llvm.ptr<i8>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %60[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.bitcast %132 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %134 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.bitcast %134 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%130, %131, %133, %135) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %136 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%130, %136) : (!llvm.ptr<i8>, i64) -> ()
    %137 = llvm.call @omTensorGetShape(%130) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %138 = llvm.call @omTensorGetStrides(%130) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %139 = llvm.mlir.constant(0 : i64) : i64
    %140 = llvm.extractvalue %60[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %137[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.extractvalue %60[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %138[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.mlir.constant(1 : i64) : i64
    %145 = llvm.extractvalue %60[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %137[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %60[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %138[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(2 : i64) : i64
    %150 = llvm.extractvalue %60[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.getelementptr %137[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.extractvalue %60[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %138[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.mlir.constant(3 : i64) : i64
    %155 = llvm.extractvalue %60[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.getelementptr %137[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %155, %156 : !llvm.ptr<i64>
    %157 = llvm.extractvalue %60[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.getelementptr %138[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %157, %158 : !llvm.ptr<i64>
    %159 = llvm.mlir.constant(2 : i64) : i64
    %160 = llvm.getelementptr %64[%159] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %130, %160 : !llvm.ptr<ptr<i8>>
    %161 = llvm.call @omTensorListCreate(%64, %61, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %161 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<129 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<129 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<210 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<210 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

