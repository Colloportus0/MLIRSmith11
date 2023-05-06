module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 2] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 2] , \22name\22 : \22v7_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<[[[[3, 6], [7, 5]]], [[[3, 7], [6, 3]]]]> : tensor<2x1x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<2 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_5(dense<true> : tensor<2x2xi1>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x i1>>
  llvm.mlir.global internal constant @constant_4(dense<true> : tensor<i1>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i1>
  llvm.mlir.global internal constant @constant_3(dense<[2, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[2, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v1_0", "v8_0", "v7_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.mlir.constant(1 : i64) : i64
    %5 = llvm.mlir.constant(0 : index) : i64
    %6 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %7 = llvm.bitcast %6 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %8 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %9 = llvm.insertvalue %7, %8[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %7, %9[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.mlir.constant(0 : index) : i64
    %12 = llvm.insertvalue %11, %10[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = llvm.mlir.constant(4 : index) : i64
    %14 = llvm.insertvalue %13, %12[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.insertvalue %15, %14[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %18 = llvm.bitcast %17 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %19 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %24 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %25 = llvm.bitcast %24 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %26 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %27 = llvm.insertvalue %25, %26[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.insertvalue %25, %27[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.constant(0 : index) : i64
    %30 = llvm.insertvalue %29, %28[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.constant(4 : index) : i64
    %32 = llvm.insertvalue %31, %30[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.insertvalue %33, %32[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i1>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<1 x i1>> to !llvm.ptr<i1>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %42 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<2 x array<2 x i1>>>
    %43 = llvm.bitcast %42 : !llvm.ptr<array<2 x array<2 x i1>>> to !llvm.ptr<i1>
    %44 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>
    %45 = llvm.insertvalue %43, %44[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %46 = llvm.insertvalue %43, %45[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.mlir.constant(0 : index) : i64
    %48 = llvm.insertvalue %47, %46[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.mlir.constant(2 : index) : i64
    %50 = llvm.insertvalue %49, %48[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.mlir.constant(2 : index) : i64
    %52 = llvm.insertvalue %51, %50[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.mlir.constant(2 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %57 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<2 x array<1 x array<2 x array<2 x i32>>>>>
    %58 = llvm.bitcast %57 : !llvm.ptr<array<2 x array<1 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %60 = llvm.insertvalue %58, %59[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(2 : index) : i64
    %65 = llvm.insertvalue %64, %63[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(4 : index) : i64
    %67 = llvm.insertvalue %66, %65[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(4 : index) : i64
    %71 = llvm.insertvalue %70, %69[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(2 : index) : i64
    %73 = llvm.insertvalue %72, %71[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(2 : index) : i64
    %75 = llvm.insertvalue %74, %73[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.insertvalue %76, %75[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.insertvalue %78, %77[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(2 : index) : i64
    %81 = llvm.mlir.constant(2 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(4 : index) : i64
    %84 = llvm.mlir.null : !llvm.ptr<i1>
    %85 = llvm.getelementptr %84[%83] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %86 = llvm.ptrtoint %85 : !llvm.ptr<i1> to i64
    %87 = llvm.mlir.constant(16 : index) : i64
    %88 = llvm.add %86, %87  : i64
    %89 = llvm.call @malloc(%88) : (i64) -> !llvm.ptr<i8>
    %90 = llvm.bitcast %89 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %91 = llvm.ptrtoint %90 : !llvm.ptr<i1> to i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.sub %87, %92  : i64
    %94 = llvm.add %91, %93  : i64
    %95 = llvm.urem %94, %87  : i64
    %96 = llvm.sub %94, %95  : i64
    %97 = llvm.inttoptr %96 : i64 to !llvm.ptr<i1>
    %98 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>
    %99 = llvm.insertvalue %90, %98[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %100 = llvm.insertvalue %97, %99[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.insertvalue %101, %100[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.insertvalue %80, %102[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.insertvalue %81, %103[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.insertvalue %81, %104[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.insertvalue %82, %105[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%107 : i64)
  ^bb1(%110: i64):  // 2 preds: ^bb0, ^bb5
    %111 = llvm.icmp "slt" %110, %108 : i64
    llvm.cond_br %111, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%112 : i64)
  ^bb3(%115: i64):  // 2 preds: ^bb2, ^bb4
    %116 = llvm.icmp "slt" %115, %113 : i64
    llvm.cond_br %116, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %117 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %118 = llvm.mlir.constant(2 : index) : i64
    %119 = llvm.mul %110, %118  : i64
    %120 = llvm.add %119, %115  : i64
    %121 = llvm.getelementptr %117[%120] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %122 = llvm.load %121 : !llvm.ptr<i1>
    %123 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %124 = llvm.load %123 : !llvm.ptr<i1>
    %125 = llvm.or %122, %124  : i1
    %126 = llvm.extractvalue %106[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %127 = llvm.mlir.constant(2 : index) : i64
    %128 = llvm.mul %110, %127  : i64
    %129 = llvm.add %128, %115  : i64
    %130 = llvm.getelementptr %126[%129] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %125, %130 : !llvm.ptr<i1>
    %131 = llvm.add %115, %114  : i64
    llvm.br ^bb3(%131 : i64)
  ^bb5:  // pred: ^bb3
    %132 = llvm.add %110, %109  : i64
    llvm.br ^bb1(%132 : i64)
  ^bb6:  // pred: ^bb1
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.null : !llvm.ptr<i32>
    %135 = llvm.getelementptr %134[%133] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %136 = llvm.ptrtoint %135 : !llvm.ptr<i32> to i64
    %137 = llvm.call @malloc(%136) : (i64) -> !llvm.ptr<i8>
    %138 = llvm.bitcast %137 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %139 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %140 = llvm.insertvalue %138, %139[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %141 = llvm.insertvalue %138, %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.insertvalue %142, %141[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %144 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %145 = llvm.load %144 : !llvm.ptr<i32>
    %146 = llvm.mlir.constant(false) : i1
    %147 = "llvm.intr.abs"(%145, %146) : (i32, i1) -> i32
    %148 = llvm.extractvalue %143[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %147, %148 : !llvm.ptr<i32>
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.mlir.constant(2 : index) : i64
    %152 = llvm.mlir.constant(2 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.constant(4 : index) : i64
    %155 = llvm.mlir.constant(4 : index) : i64
    %156 = llvm.mlir.constant(8 : index) : i64
    %157 = llvm.mlir.null : !llvm.ptr<i32>
    %158 = llvm.getelementptr %157[%156] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %159 = llvm.ptrtoint %158 : !llvm.ptr<i32> to i64
    %160 = llvm.mlir.constant(16 : index) : i64
    %161 = llvm.add %159, %160  : i64
    %162 = llvm.call @malloc(%161) : (i64) -> !llvm.ptr<i8>
    %163 = llvm.bitcast %162 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %164 = llvm.ptrtoint %163 : !llvm.ptr<i32> to i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.sub %160, %165  : i64
    %167 = llvm.add %164, %166  : i64
    %168 = llvm.urem %167, %160  : i64
    %169 = llvm.sub %167, %168  : i64
    %170 = llvm.inttoptr %169 : i64 to !llvm.ptr<i32>
    %171 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %172 = llvm.insertvalue %163, %171[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.insertvalue %170, %172[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.insertvalue %174, %173[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.insertvalue %149, %175[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.insertvalue %150, %176[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.insertvalue %151, %177[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.insertvalue %152, %178[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.insertvalue %155, %179[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.insertvalue %154, %180[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.insertvalue %152, %181[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.insertvalue %153, %182[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.mlir.constant(2 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%184 : i64)
  ^bb7(%187: i64):  // 2 preds: ^bb6, ^bb17
    %188 = llvm.icmp "slt" %187, %185 : i64
    llvm.cond_br %188, ^bb8, ^bb18
  ^bb8:  // pred: ^bb7
    %189 = llvm.mlir.constant(0 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%189 : i64)
  ^bb9(%192: i64):  // 2 preds: ^bb8, ^bb16
    %193 = llvm.icmp "slt" %192, %190 : i64
    llvm.cond_br %193, ^bb10, ^bb17
  ^bb10:  // pred: ^bb9
    %194 = llvm.mlir.constant(0 : index) : i64
    %195 = llvm.mlir.constant(2 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb11(%194 : i64)
  ^bb11(%197: i64):  // 2 preds: ^bb10, ^bb15
    %198 = llvm.icmp "slt" %197, %195 : i64
    llvm.cond_br %198, ^bb12, ^bb16
  ^bb12:  // pred: ^bb11
    %199 = llvm.mlir.constant(0 : index) : i64
    %200 = llvm.mlir.constant(2 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%199 : i64)
  ^bb13(%202: i64):  // 2 preds: ^bb12, ^bb14
    %203 = llvm.icmp "slt" %202, %200 : i64
    llvm.cond_br %203, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %204 = llvm.extractvalue %106[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %205 = llvm.mlir.constant(2 : index) : i64
    %206 = llvm.mul %197, %205  : i64
    %207 = llvm.add %206, %202  : i64
    %208 = llvm.getelementptr %204[%207] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %209 = llvm.load %208 : !llvm.ptr<i1>
    %210 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %211 = llvm.load %210 : !llvm.ptr<i32>
    %212 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.mlir.constant(4 : index) : i64
    %214 = llvm.mul %187, %213  : i64
    %215 = llvm.mlir.constant(4 : index) : i64
    %216 = llvm.mul %192, %215  : i64
    %217 = llvm.add %214, %216  : i64
    %218 = llvm.mlir.constant(2 : index) : i64
    %219 = llvm.mul %197, %218  : i64
    %220 = llvm.add %217, %219  : i64
    %221 = llvm.add %220, %202  : i64
    %222 = llvm.getelementptr %212[%221] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %223 = llvm.load %222 : !llvm.ptr<i32>
    %224 = llvm.select %209, %211, %223 : i1, i32
    %225 = llvm.extractvalue %183[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.mlir.constant(4 : index) : i64
    %227 = llvm.mul %187, %226  : i64
    %228 = llvm.mlir.constant(4 : index) : i64
    %229 = llvm.mul %192, %228  : i64
    %230 = llvm.add %227, %229  : i64
    %231 = llvm.mlir.constant(2 : index) : i64
    %232 = llvm.mul %197, %231  : i64
    %233 = llvm.add %230, %232  : i64
    %234 = llvm.add %233, %202  : i64
    %235 = llvm.getelementptr %225[%234] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %224, %235 : !llvm.ptr<i32>
    %236 = llvm.add %202, %201  : i64
    llvm.br ^bb13(%236 : i64)
  ^bb15:  // pred: ^bb13
    %237 = llvm.add %197, %196  : i64
    llvm.br ^bb11(%237 : i64)
  ^bb16:  // pred: ^bb11
    %238 = llvm.add %192, %191  : i64
    llvm.br ^bb9(%238 : i64)
  ^bb17:  // pred: ^bb9
    %239 = llvm.add %187, %186  : i64
    llvm.br ^bb7(%239 : i64)
  ^bb18:  // pred: ^bb7
    %240 = llvm.mlir.constant(2 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mlir.constant(2 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(4 : index) : i64
    %246 = llvm.mlir.constant(4 : index) : i64
    %247 = llvm.mlir.constant(8 : index) : i64
    %248 = llvm.mlir.null : !llvm.ptr<i32>
    %249 = llvm.getelementptr %248[%247] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %250 = llvm.ptrtoint %249 : !llvm.ptr<i32> to i64
    %251 = llvm.mlir.constant(16 : index) : i64
    %252 = llvm.add %250, %251  : i64
    %253 = llvm.call @malloc(%252) : (i64) -> !llvm.ptr<i8>
    %254 = llvm.bitcast %253 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %255 = llvm.ptrtoint %254 : !llvm.ptr<i32> to i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.sub %251, %256  : i64
    %258 = llvm.add %255, %257  : i64
    %259 = llvm.urem %258, %251  : i64
    %260 = llvm.sub %258, %259  : i64
    %261 = llvm.inttoptr %260 : i64 to !llvm.ptr<i32>
    %262 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %263 = llvm.insertvalue %254, %262[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.insertvalue %261, %263[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.mlir.constant(0 : index) : i64
    %266 = llvm.insertvalue %265, %264[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.insertvalue %240, %266[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.insertvalue %241, %267[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.insertvalue %242, %268[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.insertvalue %243, %269[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.insertvalue %246, %270[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.insertvalue %245, %271[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.insertvalue %243, %272[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %244, %273[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.mlir.constant(0 : index) : i64
    %276 = llvm.mlir.constant(2 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%275 : i64)
  ^bb19(%278: i64):  // 2 preds: ^bb18, ^bb29
    %279 = llvm.icmp "slt" %278, %276 : i64
    llvm.cond_br %279, ^bb20, ^bb30
  ^bb20:  // pred: ^bb19
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%280 : i64)
  ^bb21(%283: i64):  // 2 preds: ^bb20, ^bb28
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb22, ^bb29
  ^bb22:  // pred: ^bb21
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(2 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb23(%285 : i64)
  ^bb23(%288: i64):  // 2 preds: ^bb22, ^bb27
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb24, ^bb28
  ^bb24:  // pred: ^bb23
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.mlir.constant(2 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%290 : i64)
  ^bb25(%293: i64):  // 2 preds: ^bb24, ^bb26
    %294 = llvm.icmp "slt" %293, %291 : i64
    llvm.cond_br %294, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %295 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.mlir.constant(4 : index) : i64
    %297 = llvm.mul %278, %296  : i64
    %298 = llvm.mlir.constant(4 : index) : i64
    %299 = llvm.mul %283, %298  : i64
    %300 = llvm.add %297, %299  : i64
    %301 = llvm.mlir.constant(2 : index) : i64
    %302 = llvm.mul %288, %301  : i64
    %303 = llvm.add %300, %302  : i64
    %304 = llvm.add %303, %293  : i64
    %305 = llvm.getelementptr %295[%304] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %306 = llvm.load %305 : !llvm.ptr<i32>
    %307 = llvm.extractvalue %183[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.mlir.constant(4 : index) : i64
    %309 = llvm.mul %278, %308  : i64
    %310 = llvm.mlir.constant(4 : index) : i64
    %311 = llvm.mul %283, %310  : i64
    %312 = llvm.add %309, %311  : i64
    %313 = llvm.mlir.constant(2 : index) : i64
    %314 = llvm.mul %288, %313  : i64
    %315 = llvm.add %312, %314  : i64
    %316 = llvm.add %315, %293  : i64
    %317 = llvm.getelementptr %307[%316] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %318 = llvm.load %317 : !llvm.ptr<i32>
    %319 = llvm.icmp "slt" %306, %318 : i32
    %320 = llvm.select %319, %306, %318 : i1, i32
    %321 = llvm.extractvalue %274[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.mlir.constant(4 : index) : i64
    %323 = llvm.mul %278, %322  : i64
    %324 = llvm.mlir.constant(4 : index) : i64
    %325 = llvm.mul %283, %324  : i64
    %326 = llvm.add %323, %325  : i64
    %327 = llvm.mlir.constant(2 : index) : i64
    %328 = llvm.mul %288, %327  : i64
    %329 = llvm.add %326, %328  : i64
    %330 = llvm.add %329, %293  : i64
    %331 = llvm.getelementptr %321[%330] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %320, %331 : !llvm.ptr<i32>
    %332 = llvm.add %293, %292  : i64
    llvm.br ^bb25(%332 : i64)
  ^bb27:  // pred: ^bb25
    %333 = llvm.add %288, %287  : i64
    llvm.br ^bb23(%333 : i64)
  ^bb28:  // pred: ^bb23
    %334 = llvm.add %283, %282  : i64
    llvm.br ^bb21(%334 : i64)
  ^bb29:  // pred: ^bb21
    %335 = llvm.add %278, %277  : i64
    llvm.br ^bb19(%335 : i64)
  ^bb30:  // pred: ^bb19
    %336 = llvm.mlir.constant(4 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    %338 = llvm.mlir.null : !llvm.ptr<i64>
    %339 = llvm.getelementptr %338[%336] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %340 = llvm.ptrtoint %339 : !llvm.ptr<i64> to i64
    %341 = llvm.mlir.constant(16 : index) : i64
    %342 = llvm.add %340, %341  : i64
    %343 = llvm.call @malloc(%342) : (i64) -> !llvm.ptr<i8>
    %344 = llvm.bitcast %343 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %345 = llvm.ptrtoint %344 : !llvm.ptr<i64> to i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.sub %341, %346  : i64
    %348 = llvm.add %345, %347  : i64
    %349 = llvm.urem %348, %341  : i64
    %350 = llvm.sub %348, %349  : i64
    %351 = llvm.inttoptr %350 : i64 to !llvm.ptr<i64>
    %352 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %353 = llvm.insertvalue %344, %352[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %354 = llvm.insertvalue %351, %353[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %355 = llvm.mlir.constant(0 : index) : i64
    %356 = llvm.insertvalue %355, %354[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %357 = llvm.insertvalue %336, %356[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %358 = llvm.insertvalue %337, %357[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %359 = llvm.mlir.constant(0 : index) : i64
    %360 = llvm.mlir.constant(4 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%359 : i64)
  ^bb31(%362: i64):  // 2 preds: ^bb30, ^bb32
    %363 = llvm.icmp "slt" %362, %360 : i64
    llvm.cond_br %363, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %364 = llvm.extractvalue %358[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %365 = llvm.getelementptr %364[%362] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %4, %365 : !llvm.ptr<i64>
    %366 = llvm.add %362, %361  : i64
    llvm.br ^bb31(%366 : i64)
  ^bb33:  // pred: ^bb31
    %367 = llvm.mlir.constant(4 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.mlir.null : !llvm.ptr<i64>
    %370 = llvm.getelementptr %369[%367] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %371 = llvm.ptrtoint %370 : !llvm.ptr<i64> to i64
    %372 = llvm.mlir.constant(16 : index) : i64
    %373 = llvm.add %371, %372  : i64
    %374 = llvm.call @malloc(%373) : (i64) -> !llvm.ptr<i8>
    %375 = llvm.bitcast %374 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %376 = llvm.ptrtoint %375 : !llvm.ptr<i64> to i64
    %377 = llvm.mlir.constant(1 : index) : i64
    %378 = llvm.sub %372, %377  : i64
    %379 = llvm.add %376, %378  : i64
    %380 = llvm.urem %379, %372  : i64
    %381 = llvm.sub %379, %380  : i64
    %382 = llvm.inttoptr %381 : i64 to !llvm.ptr<i64>
    %383 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %384 = llvm.insertvalue %375, %383[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %385 = llvm.insertvalue %382, %384[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %386 = llvm.mlir.constant(0 : index) : i64
    %387 = llvm.insertvalue %386, %385[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %388 = llvm.insertvalue %367, %387[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %389 = llvm.insertvalue %368, %388[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.mlir.constant(4 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%390 : i64)
  ^bb34(%393: i64):  // 2 preds: ^bb33, ^bb35
    %394 = llvm.icmp "slt" %393, %391 : i64
    llvm.cond_br %394, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %395 = llvm.extractvalue %358[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %396 = llvm.getelementptr %395[%393] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %397 = llvm.load %396 : !llvm.ptr<i64>
    %398 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %399 = llvm.load %398 : !llvm.ptr<i64>
    %400 = llvm.mul %397, %399  : i64
    %401 = llvm.extractvalue %389[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %402 = llvm.getelementptr %401[%393] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %400, %402 : !llvm.ptr<i64>
    %403 = llvm.add %393, %392  : i64
    llvm.br ^bb34(%403 : i64)
  ^bb36:  // pred: ^bb34
    %404 = llvm.mlir.constant(4 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    %406 = llvm.mlir.null : !llvm.ptr<i1>
    %407 = llvm.getelementptr %406[%404] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %408 = llvm.ptrtoint %407 : !llvm.ptr<i1> to i64
    %409 = llvm.mlir.constant(16 : index) : i64
    %410 = llvm.add %408, %409  : i64
    %411 = llvm.call @malloc(%410) : (i64) -> !llvm.ptr<i8>
    %412 = llvm.bitcast %411 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %413 = llvm.ptrtoint %412 : !llvm.ptr<i1> to i64
    %414 = llvm.mlir.constant(1 : index) : i64
    %415 = llvm.sub %409, %414  : i64
    %416 = llvm.add %413, %415  : i64
    %417 = llvm.urem %416, %409  : i64
    %418 = llvm.sub %416, %417  : i64
    %419 = llvm.inttoptr %418 : i64 to !llvm.ptr<i1>
    %420 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %421 = llvm.insertvalue %412, %420[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %422 = llvm.insertvalue %419, %421[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %423 = llvm.mlir.constant(0 : index) : i64
    %424 = llvm.insertvalue %423, %422[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %425 = llvm.insertvalue %404, %424[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %426 = llvm.insertvalue %405, %425[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %427 = llvm.mlir.constant(0 : index) : i64
    %428 = llvm.mlir.constant(4 : index) : i64
    %429 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%427 : i64)
  ^bb37(%430: i64):  // 2 preds: ^bb36, ^bb38
    %431 = llvm.icmp "slt" %430, %428 : i64
    llvm.cond_br %431, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %432 = llvm.extractvalue %16[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %433 = llvm.getelementptr %432[%430] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %434 = llvm.load %433 : !llvm.ptr<i64>
    %435 = llvm.extractvalue %389[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %436 = llvm.getelementptr %435[%430] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %437 = llvm.load %436 : !llvm.ptr<i64>
    %438 = llvm.icmp "eq" %434, %437 : i64
    %439 = llvm.extractvalue %426[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %440 = llvm.getelementptr %439[%430] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %438, %440 : !llvm.ptr<i1>
    %441 = llvm.add %430, %429  : i64
    llvm.br ^bb37(%441 : i64)
  ^bb39:  // pred: ^bb37
    %442 = llvm.mlir.constant(4 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    %444 = llvm.mlir.null : !llvm.ptr<i64>
    %445 = llvm.getelementptr %444[%442] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %446 = llvm.ptrtoint %445 : !llvm.ptr<i64> to i64
    %447 = llvm.mlir.constant(16 : index) : i64
    %448 = llvm.add %446, %447  : i64
    %449 = llvm.call @malloc(%448) : (i64) -> !llvm.ptr<i8>
    %450 = llvm.bitcast %449 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %451 = llvm.ptrtoint %450 : !llvm.ptr<i64> to i64
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.sub %447, %452  : i64
    %454 = llvm.add %451, %453  : i64
    %455 = llvm.urem %454, %447  : i64
    %456 = llvm.sub %454, %455  : i64
    %457 = llvm.inttoptr %456 : i64 to !llvm.ptr<i64>
    %458 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %459 = llvm.insertvalue %450, %458[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %460 = llvm.insertvalue %457, %459[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.insertvalue %461, %460[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %463 = llvm.insertvalue %442, %462[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %464 = llvm.insertvalue %443, %463[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %465 = llvm.mlir.constant(0 : index) : i64
    %466 = llvm.mlir.constant(4 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%465 : i64)
  ^bb40(%468: i64):  // 2 preds: ^bb39, ^bb41
    %469 = llvm.icmp "slt" %468, %466 : i64
    llvm.cond_br %469, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %470 = llvm.extractvalue %426[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %471 = llvm.getelementptr %470[%468] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %472 = llvm.load %471 : !llvm.ptr<i1>
    %473 = llvm.extractvalue %358[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %474 = llvm.getelementptr %473[%468] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %475 = llvm.load %474 : !llvm.ptr<i64>
    %476 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %477 = llvm.getelementptr %476[%468] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %478 = llvm.load %477 : !llvm.ptr<i64>
    %479 = llvm.select %472, %475, %478 : i1, i64
    %480 = llvm.extractvalue %464[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %481 = llvm.getelementptr %480[%468] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %479, %481 : !llvm.ptr<i64>
    %482 = llvm.add %468, %467  : i64
    llvm.br ^bb40(%482 : i64)
  ^bb42:  // pred: ^bb40
    %483 = llvm.mlir.constant(2 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.mlir.constant(2 : index) : i64
    %486 = llvm.mlir.constant(2 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    %488 = llvm.mlir.constant(4 : index) : i64
    %489 = llvm.mlir.constant(4 : index) : i64
    %490 = llvm.mlir.constant(8 : index) : i64
    %491 = llvm.mlir.null : !llvm.ptr<i32>
    %492 = llvm.getelementptr %491[%490] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %493 = llvm.ptrtoint %492 : !llvm.ptr<i32> to i64
    %494 = llvm.mlir.constant(16 : index) : i64
    %495 = llvm.add %493, %494  : i64
    %496 = llvm.call @malloc(%495) : (i64) -> !llvm.ptr<i8>
    %497 = llvm.bitcast %496 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %498 = llvm.ptrtoint %497 : !llvm.ptr<i32> to i64
    %499 = llvm.mlir.constant(1 : index) : i64
    %500 = llvm.sub %494, %499  : i64
    %501 = llvm.add %498, %500  : i64
    %502 = llvm.urem %501, %494  : i64
    %503 = llvm.sub %501, %502  : i64
    %504 = llvm.inttoptr %503 : i64 to !llvm.ptr<i32>
    %505 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %506 = llvm.insertvalue %497, %505[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %507 = llvm.insertvalue %504, %506[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.mlir.constant(0 : index) : i64
    %509 = llvm.insertvalue %508, %507[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.insertvalue %483, %509[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.insertvalue %484, %510[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.insertvalue %485, %511[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.insertvalue %486, %512[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %514 = llvm.insertvalue %489, %513[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %515 = llvm.insertvalue %488, %514[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %516 = llvm.insertvalue %486, %515[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.insertvalue %487, %516[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.mlir.constant(0 : index) : i64
    %519 = llvm.mlir.constant(2 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%518 : i64)
  ^bb43(%521: i64):  // 2 preds: ^bb42, ^bb53
    %522 = llvm.icmp "slt" %521, %519 : i64
    llvm.cond_br %522, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %523 = llvm.mlir.constant(0 : index) : i64
    %524 = llvm.mlir.constant(1 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%523 : i64)
  ^bb45(%526: i64):  // 2 preds: ^bb44, ^bb52
    %527 = llvm.icmp "slt" %526, %524 : i64
    llvm.cond_br %527, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %528 = llvm.mlir.constant(0 : index) : i64
    %529 = llvm.mlir.constant(2 : index) : i64
    %530 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%528 : i64)
  ^bb47(%531: i64):  // 2 preds: ^bb46, ^bb51
    %532 = llvm.icmp "slt" %531, %529 : i64
    llvm.cond_br %532, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %533 = llvm.mlir.constant(0 : index) : i64
    %534 = llvm.mlir.constant(2 : index) : i64
    %535 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%533 : i64)
  ^bb49(%536: i64):  // 2 preds: ^bb48, ^bb50
    %537 = llvm.icmp "slt" %536, %534 : i64
    llvm.cond_br %537, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %538 = llvm.extractvalue %183[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %539 = llvm.mlir.constant(4 : index) : i64
    %540 = llvm.mul %521, %539  : i64
    %541 = llvm.mlir.constant(4 : index) : i64
    %542 = llvm.mul %5, %541  : i64
    %543 = llvm.add %540, %542  : i64
    %544 = llvm.mlir.constant(2 : index) : i64
    %545 = llvm.mul %531, %544  : i64
    %546 = llvm.add %543, %545  : i64
    %547 = llvm.add %546, %536  : i64
    %548 = llvm.getelementptr %538[%547] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %549 = llvm.load %548 : !llvm.ptr<i32>
    %550 = llvm.extractvalue %517[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %551 = llvm.mlir.constant(4 : index) : i64
    %552 = llvm.mul %521, %551  : i64
    %553 = llvm.mlir.constant(4 : index) : i64
    %554 = llvm.mul %526, %553  : i64
    %555 = llvm.add %552, %554  : i64
    %556 = llvm.mlir.constant(2 : index) : i64
    %557 = llvm.mul %531, %556  : i64
    %558 = llvm.add %555, %557  : i64
    %559 = llvm.add %558, %536  : i64
    %560 = llvm.getelementptr %550[%559] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %549, %560 : !llvm.ptr<i32>
    %561 = llvm.add %536, %535  : i64
    llvm.br ^bb49(%561 : i64)
  ^bb51:  // pred: ^bb49
    %562 = llvm.add %531, %530  : i64
    llvm.br ^bb47(%562 : i64)
  ^bb52:  // pred: ^bb47
    %563 = llvm.add %526, %525  : i64
    llvm.br ^bb45(%563 : i64)
  ^bb53:  // pred: ^bb45
    %564 = llvm.add %521, %520  : i64
    llvm.br ^bb43(%564 : i64)
  ^bb54:  // pred: ^bb43
    %565 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %566 = llvm.insertvalue %143, %565[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %567 = llvm.insertvalue %274, %566[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %568 = llvm.insertvalue %517, %567[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %568 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v1_0", "v8_0", "v7_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.call @main_graph(%1, %2, %3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %4, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) -> ()
    %16 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %17 = llvm.extractvalue %16[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %18 = llvm.extractvalue %16[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %19 = llvm.extractvalue %16[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %20 = llvm.mlir.constant(3 : i64) : i64
    %21 = llvm.mlir.constant(24 : i64) : i64
    %22 = llvm.call @malloc(%21) : (i64) -> !llvm.ptr<i8>
    %23 = llvm.bitcast %22 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %24 = llvm.mlir.constant(0 : i64) : i64
    %25 = llvm.call @omTensorCreateUntyped(%24) : (i64) -> !llvm.ptr<i8>
    %26 = llvm.mlir.constant(1 : i64) : i64
    %27 = llvm.extractvalue %17[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.bitcast %27 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %29 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %30 = llvm.bitcast %29 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%25, %26, %28, %30) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %31 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%25, %31) : (!llvm.ptr<i8>, i64) -> ()
    %32 = llvm.call @omTensorGetShape(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %33 = llvm.call @omTensorGetStrides(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %34 = llvm.mlir.constant(0 : i64) : i64
    %35 = llvm.getelementptr %23[%34] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %25, %35 : !llvm.ptr<ptr<i8>>
    %36 = llvm.mlir.constant(4 : i64) : i64
    %37 = llvm.call @omTensorCreateUntyped(%36) : (i64) -> !llvm.ptr<i8>
    %38 = llvm.mlir.constant(1 : i64) : i64
    %39 = llvm.extractvalue %18[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.bitcast %39 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %41 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.bitcast %41 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%37, %38, %40, %42) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %43 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%37, %43) : (!llvm.ptr<i8>, i64) -> ()
    %44 = llvm.call @omTensorGetShape(%37) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %45 = llvm.call @omTensorGetStrides(%37) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %46 = llvm.mlir.constant(0 : i64) : i64
    %47 = llvm.extractvalue %18[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.getelementptr %44[%46] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %47, %48 : !llvm.ptr<i64>
    %49 = llvm.extractvalue %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.getelementptr %45[%46] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %49, %50 : !llvm.ptr<i64>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.extractvalue %18[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.getelementptr %44[%51] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %52, %53 : !llvm.ptr<i64>
    %54 = llvm.extractvalue %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.getelementptr %45[%51] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %54, %55 : !llvm.ptr<i64>
    %56 = llvm.mlir.constant(2 : i64) : i64
    %57 = llvm.extractvalue %18[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.getelementptr %44[%56] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %57, %58 : !llvm.ptr<i64>
    %59 = llvm.extractvalue %18[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.getelementptr %45[%56] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %59, %60 : !llvm.ptr<i64>
    %61 = llvm.mlir.constant(3 : i64) : i64
    %62 = llvm.extractvalue %18[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %44[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %18[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %45[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.getelementptr %23[%66] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %37, %67 : !llvm.ptr<ptr<i8>>
    %68 = llvm.mlir.constant(4 : i64) : i64
    %69 = llvm.call @omTensorCreateUntyped(%68) : (i64) -> !llvm.ptr<i8>
    %70 = llvm.mlir.constant(1 : i64) : i64
    %71 = llvm.extractvalue %19[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.bitcast %71 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %73 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.bitcast %73 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%69, %70, %72, %74) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %75 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%69, %75) : (!llvm.ptr<i8>, i64) -> ()
    %76 = llvm.call @omTensorGetShape(%69) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %77 = llvm.call @omTensorGetStrides(%69) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %78 = llvm.mlir.constant(0 : i64) : i64
    %79 = llvm.extractvalue %19[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %76[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.extractvalue %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %77[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.mlir.constant(1 : i64) : i64
    %84 = llvm.extractvalue %19[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %76[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.extractvalue %19[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.getelementptr %77[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.mlir.constant(2 : i64) : i64
    %89 = llvm.extractvalue %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %76[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %19[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %77[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(3 : i64) : i64
    %94 = llvm.extractvalue %19[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %76[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %19[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %77[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.getelementptr %23[%98] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %69, %99 : !llvm.ptr<ptr<i8>>
    %100 = llvm.call @omTensorListCreate(%23, %20, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %100 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<198 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<198 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

