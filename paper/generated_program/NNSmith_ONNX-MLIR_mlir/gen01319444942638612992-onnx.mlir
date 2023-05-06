module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [3 , 1 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<4> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v2_0", "v1_0"], llvm.emit_c_interface, output_names = ["v6_0", "v7_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg18, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg19, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg20, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg17, %21[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg21, %22[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %25 = llvm.bitcast %24 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %26 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %27 = llvm.insertvalue %25, %26[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %25, %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.mlir.constant(0 : index) : i64
    %30 = llvm.insertvalue %29, %28[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.insertvalue %31, %30[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.insertvalue %33, %32[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.insertvalue %35, %34[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.insertvalue %37, %36[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.insertvalue %39, %38[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.insertvalue %41, %40[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.null : !llvm.ptr<i1>
    %53 = llvm.getelementptr %52[%47] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %54 = llvm.ptrtoint %53 : !llvm.ptr<i1> to i64
    %55 = llvm.mlir.constant(16 : index) : i64
    %56 = llvm.add %54, %55  : i64
    %57 = llvm.call @malloc(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.bitcast %57 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %59 = llvm.ptrtoint %58 : !llvm.ptr<i1> to i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.sub %55, %60  : i64
    %62 = llvm.add %59, %61  : i64
    %63 = llvm.urem %62, %55  : i64
    %64 = llvm.sub %62, %63  : i64
    %65 = llvm.inttoptr %64 : i64 to !llvm.ptr<i1>
    %66 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %67 = llvm.insertvalue %58, %66[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %65, %67[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.insertvalue %69, %68[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %47, %70[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %48, %71[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %49, %72[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %50, %73[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %48, %74[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %49, %75[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %50, %76[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %51, %77[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %105 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.add %82, %87  : i64
    %107 = llvm.add %106, %92  : i64
    %108 = llvm.add %107, %97  : i64
    %109 = llvm.getelementptr %105[%108] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %110 = llvm.load %109 : !llvm.ptr<i32>
    %111 = llvm.icmp "sgt" %104, %110 : i32
    %112 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.add %82, %87  : i64
    %114 = llvm.add %113, %92  : i64
    %115 = llvm.add %114, %97  : i64
    %116 = llvm.getelementptr %112[%115] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %111, %116 : !llvm.ptr<i1>
    %117 = llvm.add %97, %96  : i64
    llvm.br ^bb7(%117 : i64)
  ^bb9:  // pred: ^bb7
    %118 = llvm.add %92, %91  : i64
    llvm.br ^bb5(%118 : i64)
  ^bb10:  // pred: ^bb5
    %119 = llvm.add %87, %86  : i64
    llvm.br ^bb3(%119 : i64)
  ^bb11:  // pred: ^bb3
    %120 = llvm.add %82, %81  : i64
    llvm.br ^bb1(%120 : i64)
  ^bb12:  // pred: ^bb1
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.null : !llvm.ptr<i1>
    %127 = llvm.getelementptr %126[%121] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %128 = llvm.ptrtoint %127 : !llvm.ptr<i1> to i64
    %129 = llvm.mlir.constant(16 : index) : i64
    %130 = llvm.add %128, %129  : i64
    %131 = llvm.call @malloc(%130) : (i64) -> !llvm.ptr<i8>
    %132 = llvm.bitcast %131 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %133 = llvm.ptrtoint %132 : !llvm.ptr<i1> to i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.sub %129, %134  : i64
    %136 = llvm.add %133, %135  : i64
    %137 = llvm.urem %136, %129  : i64
    %138 = llvm.sub %136, %137  : i64
    %139 = llvm.inttoptr %138 : i64 to !llvm.ptr<i1>
    %140 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %141 = llvm.insertvalue %132, %140[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.insertvalue %139, %141[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.mlir.constant(0 : index) : i64
    %144 = llvm.insertvalue %143, %142[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %121, %144[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.insertvalue %122, %145[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %123, %146[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %124, %147[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %122, %148[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %123, %149[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %124, %150[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %125, %151[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%153 : i64)
  ^bb13(%156: i64):  // 2 preds: ^bb12, ^bb23
    %157 = llvm.icmp "slt" %156, %154 : i64
    llvm.cond_br %157, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%158 : i64)
  ^bb15(%161: i64):  // 2 preds: ^bb14, ^bb22
    %162 = llvm.icmp "slt" %161, %159 : i64
    llvm.cond_br %162, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%163 : i64)
  ^bb17(%166: i64):  // 2 preds: ^bb16, ^bb21
    %167 = llvm.icmp "slt" %166, %164 : i64
    llvm.cond_br %167, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%168 : i64)
  ^bb19(%171: i64):  // 2 preds: ^bb18, ^bb20
    %172 = llvm.icmp "slt" %171, %169 : i64
    llvm.cond_br %172, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %173 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.add %156, %161  : i64
    %175 = llvm.add %174, %166  : i64
    %176 = llvm.add %175, %171  : i64
    %177 = llvm.getelementptr %173[%176] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %178 = llvm.load %177 : !llvm.ptr<i1>
    %179 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.add %156, %161  : i64
    %181 = llvm.add %180, %166  : i64
    %182 = llvm.add %181, %171  : i64
    %183 = llvm.getelementptr %179[%182] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %184 = llvm.load %183 : !llvm.ptr<i1>
    %185 = llvm.and %178, %184  : i1
    %186 = llvm.extractvalue %152[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.add %156, %161  : i64
    %188 = llvm.add %187, %166  : i64
    %189 = llvm.add %188, %171  : i64
    %190 = llvm.getelementptr %186[%189] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %185, %190 : !llvm.ptr<i1>
    %191 = llvm.add %171, %170  : i64
    llvm.br ^bb19(%191 : i64)
  ^bb21:  // pred: ^bb19
    %192 = llvm.add %166, %165  : i64
    llvm.br ^bb17(%192 : i64)
  ^bb22:  // pred: ^bb17
    %193 = llvm.add %161, %160  : i64
    llvm.br ^bb15(%193 : i64)
  ^bb23:  // pred: ^bb15
    %194 = llvm.add %156, %155  : i64
    llvm.br ^bb13(%194 : i64)
  ^bb24:  // pred: ^bb13
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.mlir.constant(3 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.mlir.constant(3 : index) : i64
    %201 = llvm.mlir.null : !llvm.ptr<i32>
    %202 = llvm.getelementptr %201[%200] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %203 = llvm.ptrtoint %202 : !llvm.ptr<i32> to i64
    %204 = llvm.mlir.constant(16 : index) : i64
    %205 = llvm.add %203, %204  : i64
    %206 = llvm.call @malloc(%205) : (i64) -> !llvm.ptr<i8>
    %207 = llvm.bitcast %206 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %208 = llvm.ptrtoint %207 : !llvm.ptr<i32> to i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.sub %204, %209  : i64
    %211 = llvm.add %208, %210  : i64
    %212 = llvm.urem %211, %204  : i64
    %213 = llvm.sub %211, %212  : i64
    %214 = llvm.inttoptr %213 : i64 to !llvm.ptr<i32>
    %215 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %216 = llvm.insertvalue %207, %215[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.insertvalue %214, %216[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.insertvalue %218, %217[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.insertvalue %195, %219[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.insertvalue %196, %220[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.insertvalue %197, %221[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.insertvalue %198, %222[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.insertvalue %196, %223[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.insertvalue %197, %224[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.insertvalue %198, %225[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.insertvalue %199, %226[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.mlir.constant(0 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%228 : i64)
  ^bb25(%231: i64):  // 2 preds: ^bb24, ^bb35
    %232 = llvm.icmp "slt" %231, %229 : i64
    llvm.cond_br %232, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%233 : i64)
  ^bb27(%236: i64):  // 2 preds: ^bb26, ^bb34
    %237 = llvm.icmp "slt" %236, %234 : i64
    llvm.cond_br %237, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%238 : i64)
  ^bb29(%241: i64):  // 2 preds: ^bb28, ^bb33
    %242 = llvm.icmp "slt" %241, %239 : i64
    llvm.cond_br %242, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %243 = llvm.mlir.constant(0 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%243 : i64)
  ^bb31(%246: i64):  // 2 preds: ^bb30, ^bb32
    %247 = llvm.icmp "slt" %246, %244 : i64
    llvm.cond_br %247, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %248 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.add %231, %236  : i64
    %250 = llvm.add %249, %241  : i64
    %251 = llvm.add %250, %246  : i64
    %252 = llvm.getelementptr %248[%251] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %253 = llvm.load %252 : !llvm.ptr<i32>
    %254 = llvm.extractvalue %227[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.mlir.constant(3 : index) : i64
    %256 = llvm.mul %231, %255  : i64
    %257 = llvm.add %256, %236  : i64
    %258 = llvm.add %257, %241  : i64
    %259 = llvm.add %258, %246  : i64
    %260 = llvm.getelementptr %254[%259] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %253, %260 : !llvm.ptr<i32>
    %261 = llvm.add %246, %245  : i64
    llvm.br ^bb31(%261 : i64)
  ^bb33:  // pred: ^bb31
    %262 = llvm.add %241, %240  : i64
    llvm.br ^bb29(%262 : i64)
  ^bb34:  // pred: ^bb29
    %263 = llvm.add %236, %235  : i64
    llvm.br ^bb27(%263 : i64)
  ^bb35:  // pred: ^bb27
    %264 = llvm.add %231, %230  : i64
    llvm.br ^bb25(%264 : i64)
  ^bb36:  // pred: ^bb25
    %265 = llvm.mlir.constant(0 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%265 : i64)
  ^bb37(%268: i64):  // 2 preds: ^bb36, ^bb47
    %269 = llvm.icmp "slt" %268, %266 : i64
    llvm.cond_br %269, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %270 = llvm.mlir.constant(0 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%270 : i64)
  ^bb39(%273: i64):  // 2 preds: ^bb38, ^bb46
    %274 = llvm.icmp "slt" %273, %271 : i64
    llvm.cond_br %274, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %275 = llvm.mlir.constant(0 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%275 : i64)
  ^bb41(%278: i64):  // 2 preds: ^bb40, ^bb45
    %279 = llvm.icmp "slt" %278, %276 : i64
    llvm.cond_br %279, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%280 : i64)
  ^bb43(%283: i64):  // 2 preds: ^bb42, ^bb44
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.add %273, %285  : i64
    %287 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %288 = llvm.add %268, %273  : i64
    %289 = llvm.add %288, %278  : i64
    %290 = llvm.add %289, %283  : i64
    %291 = llvm.getelementptr %287[%290] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %292 = llvm.load %291 : !llvm.ptr<i32>
    %293 = llvm.extractvalue %227[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.mlir.constant(3 : index) : i64
    %295 = llvm.mul %268, %294  : i64
    %296 = llvm.add %295, %286  : i64
    %297 = llvm.add %296, %278  : i64
    %298 = llvm.add %297, %283  : i64
    %299 = llvm.getelementptr %293[%298] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %292, %299 : !llvm.ptr<i32>
    %300 = llvm.add %283, %282  : i64
    llvm.br ^bb43(%300 : i64)
  ^bb45:  // pred: ^bb43
    %301 = llvm.add %278, %277  : i64
    llvm.br ^bb41(%301 : i64)
  ^bb46:  // pred: ^bb41
    %302 = llvm.add %273, %272  : i64
    llvm.br ^bb39(%302 : i64)
  ^bb47:  // pred: ^bb39
    %303 = llvm.add %268, %267  : i64
    llvm.br ^bb37(%303 : i64)
  ^bb48:  // pred: ^bb37
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%304 : i64)
  ^bb49(%307: i64):  // 2 preds: ^bb48, ^bb59
    %308 = llvm.icmp "slt" %307, %305 : i64
    llvm.cond_br %308, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %309 = llvm.mlir.constant(0 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%309 : i64)
  ^bb51(%312: i64):  // 2 preds: ^bb50, ^bb58
    %313 = llvm.icmp "slt" %312, %310 : i64
    llvm.cond_br %313, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %314 = llvm.mlir.constant(0 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%314 : i64)
  ^bb53(%317: i64):  // 2 preds: ^bb52, ^bb57
    %318 = llvm.icmp "slt" %317, %315 : i64
    llvm.cond_br %318, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%319 : i64)
  ^bb55(%322: i64):  // 2 preds: ^bb54, ^bb56
    %323 = llvm.icmp "slt" %322, %320 : i64
    llvm.cond_br %323, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %324 = llvm.mlir.constant(2 : index) : i64
    %325 = llvm.add %312, %324  : i64
    %326 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.add %307, %312  : i64
    %328 = llvm.add %327, %317  : i64
    %329 = llvm.add %328, %322  : i64
    %330 = llvm.getelementptr %326[%329] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %331 = llvm.load %330 : !llvm.ptr<i32>
    %332 = llvm.extractvalue %227[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.mlir.constant(3 : index) : i64
    %334 = llvm.mul %307, %333  : i64
    %335 = llvm.add %334, %325  : i64
    %336 = llvm.add %335, %317  : i64
    %337 = llvm.add %336, %322  : i64
    %338 = llvm.getelementptr %332[%337] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %331, %338 : !llvm.ptr<i32>
    %339 = llvm.add %322, %321  : i64
    llvm.br ^bb55(%339 : i64)
  ^bb57:  // pred: ^bb55
    %340 = llvm.add %317, %316  : i64
    llvm.br ^bb53(%340 : i64)
  ^bb58:  // pred: ^bb53
    %341 = llvm.add %312, %311  : i64
    llvm.br ^bb51(%341 : i64)
  ^bb59:  // pred: ^bb51
    %342 = llvm.add %307, %306  : i64
    llvm.br ^bb49(%342 : i64)
  ^bb60:  // pred: ^bb49
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.mlir.constant(3 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.mlir.constant(3 : index) : i64
    %349 = llvm.mlir.null : !llvm.ptr<i64>
    %350 = llvm.getelementptr %349[%348] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %351 = llvm.ptrtoint %350 : !llvm.ptr<i64> to i64
    %352 = llvm.mlir.constant(16 : index) : i64
    %353 = llvm.add %351, %352  : i64
    %354 = llvm.call @malloc(%353) : (i64) -> !llvm.ptr<i8>
    %355 = llvm.bitcast %354 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %356 = llvm.ptrtoint %355 : !llvm.ptr<i64> to i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.sub %352, %357  : i64
    %359 = llvm.add %356, %358  : i64
    %360 = llvm.urem %359, %352  : i64
    %361 = llvm.sub %359, %360  : i64
    %362 = llvm.inttoptr %361 : i64 to !llvm.ptr<i64>
    %363 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %364 = llvm.insertvalue %355, %363[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.insertvalue %362, %364[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = llvm.insertvalue %366, %365[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.insertvalue %343, %367[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.insertvalue %344, %368[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %370 = llvm.insertvalue %345, %369[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.insertvalue %346, %370[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.insertvalue %344, %371[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.insertvalue %345, %372[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.insertvalue %346, %373[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.insertvalue %347, %374[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.mlir.constant(0 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%376 : i64)
  ^bb61(%379: i64):  // 2 preds: ^bb60, ^bb71
    %380 = llvm.icmp "slt" %379, %377 : i64
    llvm.cond_br %380, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %381 = llvm.mlir.constant(0 : index) : i64
    %382 = llvm.mlir.constant(3 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%381 : i64)
  ^bb63(%384: i64):  // 2 preds: ^bb62, ^bb70
    %385 = llvm.icmp "slt" %384, %382 : i64
    llvm.cond_br %385, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %386 = llvm.mlir.constant(0 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%386 : i64)
  ^bb65(%389: i64):  // 2 preds: ^bb64, ^bb69
    %390 = llvm.icmp "slt" %389, %387 : i64
    llvm.cond_br %390, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %391 = llvm.mlir.constant(0 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%391 : i64)
  ^bb67(%394: i64):  // 2 preds: ^bb66, ^bb68
    %395 = llvm.icmp "slt" %394, %392 : i64
    llvm.cond_br %395, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %396 = llvm.extractvalue %227[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.mlir.constant(3 : index) : i64
    %398 = llvm.mul %379, %397  : i64
    %399 = llvm.add %398, %384  : i64
    %400 = llvm.add %399, %389  : i64
    %401 = llvm.add %400, %394  : i64
    %402 = llvm.getelementptr %396[%401] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %403 = llvm.load %402 : !llvm.ptr<i32>
    %404 = llvm.sext %403 : i32 to i64
    %405 = llvm.extractvalue %375[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.mlir.constant(3 : index) : i64
    %407 = llvm.mul %379, %406  : i64
    %408 = llvm.add %407, %384  : i64
    %409 = llvm.add %408, %389  : i64
    %410 = llvm.add %409, %394  : i64
    %411 = llvm.getelementptr %405[%410] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %404, %411 : !llvm.ptr<i64>
    %412 = llvm.add %394, %393  : i64
    llvm.br ^bb67(%412 : i64)
  ^bb69:  // pred: ^bb67
    %413 = llvm.add %389, %388  : i64
    llvm.br ^bb65(%413 : i64)
  ^bb70:  // pred: ^bb65
    %414 = llvm.add %384, %383  : i64
    llvm.br ^bb63(%414 : i64)
  ^bb71:  // pred: ^bb63
    %415 = llvm.add %379, %378  : i64
    llvm.br ^bb61(%415 : i64)
  ^bb72:  // pred: ^bb61
    %416 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %417 = llvm.extractvalue %375[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.extractvalue %375[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.insertvalue %417, %416[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.insertvalue %418, %419[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.mlir.constant(0 : index) : i64
    %422 = llvm.insertvalue %421, %420[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.mlir.constant(3 : index) : i64
    %424 = llvm.insertvalue %423, %422[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.insertvalue %425, %424[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.insertvalue %427, %426[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.mlir.constant(1 : index) : i64
    %430 = llvm.insertvalue %429, %428[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.mlir.constant(1 : index) : i64
    %432 = llvm.insertvalue %431, %430[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.mlir.constant(1 : index) : i64
    %434 = llvm.insertvalue %433, %432[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.insertvalue %435, %434[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.mlir.constant(1 : index) : i64
    %438 = llvm.insertvalue %437, %436[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    %440 = llvm.insertvalue %152, %439[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %441 = llvm.insertvalue %438, %440[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %441 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v2_0", "v1_0"], llvm.emit_c_interface, output_names = ["v6_0", "v7_0"]} {
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
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %12[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %12[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %55[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %56[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.getelementptr %55[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %56[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %84, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.mlir.constant(2 : i64) : i64
    %89 = llvm.mlir.constant(16 : i64) : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %92 = llvm.mlir.constant(4 : i64) : i64
    %93 = llvm.call @omTensorCreateUntyped(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %97 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%93, %94, %96, %98) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %99 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%93, %99) : (!llvm.ptr<i8>, i64) -> ()
    %100 = llvm.call @omTensorGetShape(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.call @omTensorGetStrides(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.mlir.constant(0 : i64) : i64
    %103 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %100[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %101[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %100[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %101[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %100[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %101[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(3 : i64) : i64
    %118 = llvm.extractvalue %86[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %100[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.extractvalue %86[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %101[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.mlir.constant(0 : i64) : i64
    %123 = llvm.getelementptr %91[%122] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %93, %123 : !llvm.ptr<ptr<i8>>
    %124 = llvm.mlir.constant(4 : i64) : i64
    %125 = llvm.call @omTensorCreateUntyped(%124) : (i64) -> !llvm.ptr<i8>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.bitcast %127 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %129 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.bitcast %129 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%125, %126, %128, %130) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %131 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%125, %131) : (!llvm.ptr<i8>, i64) -> ()
    %132 = llvm.call @omTensorGetShape(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %133 = llvm.call @omTensorGetStrides(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %134 = llvm.mlir.constant(0 : i64) : i64
    %135 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %132[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %133[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.mlir.constant(1 : i64) : i64
    %140 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %132[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %133[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.mlir.constant(2 : i64) : i64
    %145 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %132[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %133[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(3 : i64) : i64
    %150 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.getelementptr %132[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<140 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<140 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

