module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v6_0", "v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
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
    %16 = llvm.mlir.constant(1 : i64) : i64
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %19 = llvm.bitcast %18 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.insertvalue %19, %20[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %19, %21[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(0 : index) : i64
    %24 = llvm.insertvalue %23, %22[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(4 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %30 = llvm.bitcast %29 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %31 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %32 = llvm.insertvalue %30, %31[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %36 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %37 = llvm.bitcast %36 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(4 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.null : !llvm.ptr<i32>
    %53 = llvm.getelementptr %52[%47] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %54 = llvm.ptrtoint %53 : !llvm.ptr<i32> to i64
    %55 = llvm.mlir.constant(16 : index) : i64
    %56 = llvm.add %54, %55  : i64
    %57 = llvm.call @malloc(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.bitcast %57 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %59 = llvm.ptrtoint %58 : !llvm.ptr<i32> to i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.sub %55, %60  : i64
    %62 = llvm.add %59, %61  : i64
    %63 = llvm.urem %62, %55  : i64
    %64 = llvm.sub %62, %63  : i64
    %65 = llvm.inttoptr %64 : i64 to !llvm.ptr<i32>
    %66 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %67 = llvm.insertvalue %58, %66[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %65, %67[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.insertvalue %69, %68[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %47, %70[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %48, %71[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %49, %72[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %50, %73[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %48, %74[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %49, %75[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %50, %76[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %51, %77[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(0 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%79 : i64)
  ^bb1(%82: i64):  // 2 preds: ^bb0, ^bb11
    %83 = llvm.icmp "slt" %82, %80 : i64
    llvm.cond_br %83, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%84 : i64)
  ^bb3(%87: i64):  // 2 preds: ^bb2, ^bb10
    %88 = llvm.icmp "slt" %87, %85 : i64
    llvm.cond_br %88, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%89 : i64)
  ^bb5(%92: i64):  // 2 preds: ^bb4, ^bb9
    %93 = llvm.icmp "slt" %92, %90 : i64
    llvm.cond_br %93, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %94 = llvm.mlir.constant(0 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%94 : i64)
  ^bb7(%97: i64):  // 2 preds: ^bb6, ^bb8
    %98 = llvm.icmp "slt" %97, %95 : i64
    llvm.cond_br %98, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %99 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.add %82, %87  : i64
    %101 = llvm.add %100, %92  : i64
    %102 = llvm.add %101, %97  : i64
    %103 = llvm.getelementptr %99[%102] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %104 = llvm.load %103 : !llvm.ptr<i32>
    %105 = llvm.extractvalue %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %106 = llvm.load %105 : !llvm.ptr<i32>
    %107 = llvm.icmp "sgt" %104, %106 : i32
    %108 = llvm.select %107, %104, %106 : i1, i32
    %109 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.add %82, %87  : i64
    %111 = llvm.add %110, %92  : i64
    %112 = llvm.add %111, %97  : i64
    %113 = llvm.getelementptr %109[%112] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %108, %113 : !llvm.ptr<i32>
    %114 = llvm.add %97, %96  : i64
    llvm.br ^bb7(%114 : i64)
  ^bb9:  // pred: ^bb7
    %115 = llvm.add %92, %91  : i64
    llvm.br ^bb5(%115 : i64)
  ^bb10:  // pred: ^bb5
    %116 = llvm.add %87, %86  : i64
    llvm.br ^bb3(%116 : i64)
  ^bb11:  // pred: ^bb3
    %117 = llvm.add %82, %81  : i64
    llvm.br ^bb1(%117 : i64)
  ^bb12:  // pred: ^bb1
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.null : !llvm.ptr<i32>
    %124 = llvm.getelementptr %123[%118] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %125 = llvm.ptrtoint %124 : !llvm.ptr<i32> to i64
    %126 = llvm.mlir.constant(16 : index) : i64
    %127 = llvm.add %125, %126  : i64
    %128 = llvm.call @malloc(%127) : (i64) -> !llvm.ptr<i8>
    %129 = llvm.bitcast %128 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %130 = llvm.ptrtoint %129 : !llvm.ptr<i32> to i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.sub %126, %131  : i64
    %133 = llvm.add %130, %132  : i64
    %134 = llvm.urem %133, %126  : i64
    %135 = llvm.sub %133, %134  : i64
    %136 = llvm.inttoptr %135 : i64 to !llvm.ptr<i32>
    %137 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %138 = llvm.insertvalue %129, %137[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.insertvalue %136, %138[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.mlir.constant(0 : index) : i64
    %141 = llvm.insertvalue %140, %139[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.insertvalue %118, %141[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.insertvalue %119, %142[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %120, %143[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %121, %144[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.insertvalue %119, %145[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %120, %146[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %121, %147[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %122, %148[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.mlir.constant(0 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%150 : i64)
  ^bb13(%153: i64):  // 2 preds: ^bb12, ^bb23
    %154 = llvm.icmp "slt" %153, %151 : i64
    llvm.cond_br %154, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %155 = llvm.mlir.constant(0 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%155 : i64)
  ^bb15(%158: i64):  // 2 preds: ^bb14, ^bb22
    %159 = llvm.icmp "slt" %158, %156 : i64
    llvm.cond_br %159, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%160 : i64)
  ^bb17(%163: i64):  // 2 preds: ^bb16, ^bb21
    %164 = llvm.icmp "slt" %163, %161 : i64
    llvm.cond_br %164, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%165 : i64)
  ^bb19(%168: i64):  // 2 preds: ^bb18, ^bb20
    %169 = llvm.icmp "slt" %168, %166 : i64
    llvm.cond_br %169, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %170 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.add %153, %158  : i64
    %172 = llvm.add %171, %163  : i64
    %173 = llvm.add %172, %168  : i64
    %174 = llvm.getelementptr %170[%173] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %175 = llvm.load %174 : !llvm.ptr<i32>
    %176 = llvm.extractvalue %149[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.add %153, %158  : i64
    %178 = llvm.add %177, %163  : i64
    %179 = llvm.add %178, %168  : i64
    %180 = llvm.getelementptr %176[%179] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %175, %180 : !llvm.ptr<i32>
    %181 = llvm.add %168, %167  : i64
    llvm.br ^bb19(%181 : i64)
  ^bb21:  // pred: ^bb19
    %182 = llvm.add %163, %162  : i64
    llvm.br ^bb17(%182 : i64)
  ^bb22:  // pred: ^bb17
    %183 = llvm.add %158, %157  : i64
    llvm.br ^bb15(%183 : i64)
  ^bb23:  // pred: ^bb15
    %184 = llvm.add %153, %152  : i64
    llvm.br ^bb13(%184 : i64)
  ^bb24:  // pred: ^bb13
    %185 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %186 = llvm.extractvalue %149[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.extractvalue %149[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.insertvalue %186, %185[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %189 = llvm.insertvalue %187, %188[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.insertvalue %190, %189[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.insertvalue %192, %191[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.insertvalue %194, %193[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.mlir.constant(4 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.mlir.null : !llvm.ptr<i64>
    %199 = llvm.getelementptr %198[%196] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %200 = llvm.ptrtoint %199 : !llvm.ptr<i64> to i64
    %201 = llvm.mlir.constant(16 : index) : i64
    %202 = llvm.add %200, %201  : i64
    %203 = llvm.call @malloc(%202) : (i64) -> !llvm.ptr<i8>
    %204 = llvm.bitcast %203 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %205 = llvm.ptrtoint %204 : !llvm.ptr<i64> to i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.sub %201, %206  : i64
    %208 = llvm.add %205, %207  : i64
    %209 = llvm.urem %208, %201  : i64
    %210 = llvm.sub %208, %209  : i64
    %211 = llvm.inttoptr %210 : i64 to !llvm.ptr<i64>
    %212 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %213 = llvm.insertvalue %204, %212[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.insertvalue %211, %213[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.insertvalue %215, %214[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.insertvalue %196, %216[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.insertvalue %197, %217[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(4 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%219 : i64)
  ^bb25(%222: i64):  // 2 preds: ^bb24, ^bb26
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %224 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.getelementptr %224[%222] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %16, %225 : !llvm.ptr<i64>
    %226 = llvm.add %222, %221  : i64
    llvm.br ^bb25(%226 : i64)
  ^bb27:  // pred: ^bb25
    %227 = llvm.mlir.constant(4 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.null : !llvm.ptr<i64>
    %230 = llvm.getelementptr %229[%227] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %231 = llvm.ptrtoint %230 : !llvm.ptr<i64> to i64
    %232 = llvm.mlir.constant(16 : index) : i64
    %233 = llvm.add %231, %232  : i64
    %234 = llvm.call @malloc(%233) : (i64) -> !llvm.ptr<i8>
    %235 = llvm.bitcast %234 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %236 = llvm.ptrtoint %235 : !llvm.ptr<i64> to i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.sub %232, %237  : i64
    %239 = llvm.add %236, %238  : i64
    %240 = llvm.urem %239, %232  : i64
    %241 = llvm.sub %239, %240  : i64
    %242 = llvm.inttoptr %241 : i64 to !llvm.ptr<i64>
    %243 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %244 = llvm.insertvalue %235, %243[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.insertvalue %242, %244[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.insertvalue %246, %245[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.insertvalue %227, %247[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %249 = llvm.insertvalue %228, %248[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %250 = llvm.mlir.constant(0 : index) : i64
    %251 = llvm.mlir.constant(4 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%250 : i64)
  ^bb28(%253: i64):  // 2 preds: ^bb27, ^bb29
    %254 = llvm.icmp "slt" %253, %251 : i64
    llvm.cond_br %254, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %255 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.getelementptr %255[%253] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %257 = llvm.load %256 : !llvm.ptr<i64>
    %258 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %259 = llvm.load %258 : !llvm.ptr<i64>
    %260 = llvm.mul %257, %259  : i64
    %261 = llvm.extractvalue %249[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.getelementptr %261[%253] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %260, %262 : !llvm.ptr<i64>
    %263 = llvm.add %253, %252  : i64
    llvm.br ^bb28(%263 : i64)
  ^bb30:  // pred: ^bb28
    %264 = llvm.mlir.constant(4 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.null : !llvm.ptr<i1>
    %267 = llvm.getelementptr %266[%264] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %268 = llvm.ptrtoint %267 : !llvm.ptr<i1> to i64
    %269 = llvm.mlir.constant(16 : index) : i64
    %270 = llvm.add %268, %269  : i64
    %271 = llvm.call @malloc(%270) : (i64) -> !llvm.ptr<i8>
    %272 = llvm.bitcast %271 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %273 = llvm.ptrtoint %272 : !llvm.ptr<i1> to i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.sub %269, %274  : i64
    %276 = llvm.add %273, %275  : i64
    %277 = llvm.urem %276, %269  : i64
    %278 = llvm.sub %276, %277  : i64
    %279 = llvm.inttoptr %278 : i64 to !llvm.ptr<i1>
    %280 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %281 = llvm.insertvalue %272, %280[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.insertvalue %279, %281[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.insertvalue %283, %282[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %285 = llvm.insertvalue %264, %284[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.insertvalue %265, %285[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.mlir.constant(4 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%287 : i64)
  ^bb31(%290: i64):  // 2 preds: ^bb30, ^bb32
    %291 = llvm.icmp "slt" %290, %288 : i64
    llvm.cond_br %291, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %292 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %293 = llvm.getelementptr %292[%290] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %294 = llvm.load %293 : !llvm.ptr<i64>
    %295 = llvm.extractvalue %249[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %296 = llvm.getelementptr %295[%290] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %297 = llvm.load %296 : !llvm.ptr<i64>
    %298 = llvm.icmp "eq" %294, %297 : i64
    %299 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %300 = llvm.getelementptr %299[%290] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %298, %300 : !llvm.ptr<i1>
    %301 = llvm.add %290, %289  : i64
    llvm.br ^bb31(%301 : i64)
  ^bb33:  // pred: ^bb31
    %302 = llvm.mlir.constant(4 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.mlir.null : !llvm.ptr<i64>
    %305 = llvm.getelementptr %304[%302] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %306 = llvm.ptrtoint %305 : !llvm.ptr<i64> to i64
    %307 = llvm.mlir.constant(16 : index) : i64
    %308 = llvm.add %306, %307  : i64
    %309 = llvm.call @malloc(%308) : (i64) -> !llvm.ptr<i8>
    %310 = llvm.bitcast %309 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %311 = llvm.ptrtoint %310 : !llvm.ptr<i64> to i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.sub %307, %312  : i64
    %314 = llvm.add %311, %313  : i64
    %315 = llvm.urem %314, %307  : i64
    %316 = llvm.sub %314, %315  : i64
    %317 = llvm.inttoptr %316 : i64 to !llvm.ptr<i64>
    %318 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %319 = llvm.insertvalue %310, %318[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %320 = llvm.insertvalue %317, %319[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.insertvalue %321, %320[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.insertvalue %302, %322[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %324 = llvm.insertvalue %303, %323[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.mlir.constant(4 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%325 : i64)
  ^bb34(%328: i64):  // 2 preds: ^bb33, ^bb35
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %330 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %331 = llvm.getelementptr %330[%328] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %332 = llvm.load %331 : !llvm.ptr<i1>
    %333 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %334 = llvm.getelementptr %333[%328] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %335 = llvm.load %334 : !llvm.ptr<i64>
    %336 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.getelementptr %336[%328] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %338 = llvm.load %337 : !llvm.ptr<i64>
    %339 = llvm.select %332, %335, %338 : i1, i64
    %340 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.getelementptr %340[%328] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %339, %341 : !llvm.ptr<i64>
    %342 = llvm.add %328, %327  : i64
    llvm.br ^bb34(%342 : i64)
  ^bb36:  // pred: ^bb34
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.mlir.null : !llvm.ptr<i32>
    %349 = llvm.getelementptr %348[%343] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %350 = llvm.ptrtoint %349 : !llvm.ptr<i32> to i64
    %351 = llvm.mlir.constant(16 : index) : i64
    %352 = llvm.add %350, %351  : i64
    %353 = llvm.call @malloc(%352) : (i64) -> !llvm.ptr<i8>
    %354 = llvm.bitcast %353 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %355 = llvm.ptrtoint %354 : !llvm.ptr<i32> to i64
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.sub %351, %356  : i64
    %358 = llvm.add %355, %357  : i64
    %359 = llvm.urem %358, %351  : i64
    %360 = llvm.sub %358, %359  : i64
    %361 = llvm.inttoptr %360 : i64 to !llvm.ptr<i32>
    %362 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %363 = llvm.insertvalue %354, %362[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.insertvalue %361, %363[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.mlir.constant(0 : index) : i64
    %366 = llvm.insertvalue %365, %364[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.insertvalue %343, %366[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.insertvalue %344, %367[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.insertvalue %345, %368[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %370 = llvm.insertvalue %346, %369[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.insertvalue %344, %370[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.insertvalue %345, %371[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.insertvalue %346, %372[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.insertvalue %347, %373[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.mlir.constant(0 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%375 : i64)
  ^bb37(%378: i64):  // 2 preds: ^bb36, ^bb47
    %379 = llvm.icmp "slt" %378, %376 : i64
    llvm.cond_br %379, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %380 = llvm.mlir.constant(0 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%380 : i64)
  ^bb39(%383: i64):  // 2 preds: ^bb38, ^bb46
    %384 = llvm.icmp "slt" %383, %381 : i64
    llvm.cond_br %384, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %385 = llvm.mlir.constant(0 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%385 : i64)
  ^bb41(%388: i64):  // 2 preds: ^bb40, ^bb45
    %389 = llvm.icmp "slt" %388, %386 : i64
    llvm.cond_br %389, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%390 : i64)
  ^bb43(%393: i64):  // 2 preds: ^bb42, ^bb44
    %394 = llvm.icmp "slt" %393, %391 : i64
    llvm.cond_br %394, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %395 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.add %17, %17  : i64
    %397 = llvm.add %396, %17  : i64
    %398 = llvm.add %397, %17  : i64
    %399 = llvm.getelementptr %395[%398] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %400 = llvm.load %399 : !llvm.ptr<i32>
    %401 = llvm.extractvalue %374[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.add %378, %383  : i64
    %403 = llvm.add %402, %388  : i64
    %404 = llvm.add %403, %393  : i64
    %405 = llvm.getelementptr %401[%404] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %400, %405 : !llvm.ptr<i32>
    %406 = llvm.add %393, %392  : i64
    llvm.br ^bb43(%406 : i64)
  ^bb45:  // pred: ^bb43
    %407 = llvm.add %388, %387  : i64
    llvm.br ^bb41(%407 : i64)
  ^bb46:  // pred: ^bb41
    %408 = llvm.add %383, %382  : i64
    llvm.br ^bb39(%408 : i64)
  ^bb47:  // pred: ^bb39
    %409 = llvm.add %378, %377  : i64
    llvm.br ^bb37(%409 : i64)
  ^bb48:  // pred: ^bb37
    %410 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %411 = llvm.insertvalue %195, %410[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %412 = llvm.insertvalue %374, %411[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %412 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) attributes {input_names = ["v6_0", "v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
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
    %16 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %16, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) -> ()
    %57 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %58 = llvm.extractvalue %57[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %59 = llvm.extractvalue %57[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %60 = llvm.mlir.constant(2 : i64) : i64
    %61 = llvm.mlir.constant(16 : i64) : i64
    %62 = llvm.call @malloc(%61) : (i64) -> !llvm.ptr<i8>
    %63 = llvm.bitcast %62 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.call @omTensorCreateUntyped(%64) : (i64) -> !llvm.ptr<i8>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %58[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.bitcast %67 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %69 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.bitcast %69 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%65, %66, %68, %70) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %71 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%65, %71) : (!llvm.ptr<i8>, i64) -> ()
    %72 = llvm.call @omTensorGetShape(%65) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %73 = llvm.call @omTensorGetStrides(%65) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %74 = llvm.mlir.constant(0 : i64) : i64
    %75 = llvm.extractvalue %58[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.getelementptr %72[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %58[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.getelementptr %73[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(0 : i64) : i64
    %80 = llvm.getelementptr %63[%79] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %65, %80 : !llvm.ptr<ptr<i8>>
    %81 = llvm.mlir.constant(4 : i64) : i64
    %82 = llvm.call @omTensorCreateUntyped(%81) : (i64) -> !llvm.ptr<i8>
    %83 = llvm.mlir.constant(1 : i64) : i64
    %84 = llvm.extractvalue %59[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.bitcast %84 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %86 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%82, %83, %85, %87) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %88 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%82, %88) : (!llvm.ptr<i8>, i64) -> ()
    %89 = llvm.call @omTensorGetShape(%82) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %90 = llvm.call @omTensorGetStrides(%82) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %91 = llvm.mlir.constant(0 : i64) : i64
    %92 = llvm.extractvalue %59[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.getelementptr %89[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.extractvalue %59[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %90[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.mlir.constant(1 : i64) : i64
    %97 = llvm.extractvalue %59[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %89[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.extractvalue %59[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %90[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.mlir.constant(2 : i64) : i64
    %102 = llvm.extractvalue %59[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %89[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.extractvalue %59[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %90[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.mlir.constant(3 : i64) : i64
    %107 = llvm.extractvalue %59[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %89[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.extractvalue %59[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %90[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.mlir.constant(1 : i64) : i64
    %112 = llvm.getelementptr %63[%111] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %82, %112 : !llvm.ptr<ptr<i8>>
    %113 = llvm.call @omTensorListCreate(%63, %60, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %113 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<129 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<129 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

