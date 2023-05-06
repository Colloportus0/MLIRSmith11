module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 8] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.mlir.global internal constant @constant_3(dense<5> : tensor<1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x i32>>>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v0_0", "v6_0", "v1_0"]} {
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
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.mlir.constant(1 : i64) : i64
    %14 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<3 x i64>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(3 : index) : i64
    %22 = llvm.insertvalue %21, %20[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.insertvalue %23, %22[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %26 = llvm.bitcast %25 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x array<1 x array<1 x i32>>>>
    %33 = llvm.bitcast %32 : !llvm.ptr<array<1 x array<1 x array<1 x i32>>>> to !llvm.ptr<i32>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.insertvalue %39, %38[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.insertvalue %41, %40[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.insertvalue %47, %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.insertvalue %49, %48[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %51 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<3 x i64>>
    %52 = llvm.bitcast %51 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %53 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %54 = llvm.insertvalue %52, %53[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.insertvalue %56, %55[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.mlir.constant(3 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.mlir.constant(3 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.mlir.null : !llvm.ptr<i64>
    %65 = llvm.getelementptr %64[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.ptrtoint %65 : !llvm.ptr<i64> to i64
    %67 = llvm.mlir.constant(16 : index) : i64
    %68 = llvm.add %66, %67  : i64
    %69 = llvm.call @malloc(%68) : (i64) -> !llvm.ptr<i8>
    %70 = llvm.bitcast %69 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %71 = llvm.ptrtoint %70 : !llvm.ptr<i64> to i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.sub %67, %72  : i64
    %74 = llvm.add %71, %73  : i64
    %75 = llvm.urem %74, %67  : i64
    %76 = llvm.sub %74, %75  : i64
    %77 = llvm.inttoptr %76 : i64 to !llvm.ptr<i64>
    %78 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %79 = llvm.insertvalue %70, %78[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.insertvalue %77, %79[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.insertvalue %81, %80[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.insertvalue %62, %82[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.insertvalue %63, %83[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.mlir.constant(3 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%85 : i64)
  ^bb1(%88: i64):  // 2 preds: ^bb0, ^bb2
    %89 = llvm.icmp "slt" %88, %86 : i64
    llvm.cond_br %89, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %90 = llvm.extractvalue %84[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.getelementptr %90[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %91 : !llvm.ptr<i64>
    %92 = llvm.add %88, %87  : i64
    llvm.br ^bb1(%92 : i64)
  ^bb3:  // pred: ^bb1
    %93 = llvm.mlir.constant(3 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.mlir.null : !llvm.ptr<i64>
    %96 = llvm.getelementptr %95[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %97 = llvm.ptrtoint %96 : !llvm.ptr<i64> to i64
    %98 = llvm.mlir.constant(16 : index) : i64
    %99 = llvm.add %97, %98  : i64
    %100 = llvm.call @malloc(%99) : (i64) -> !llvm.ptr<i8>
    %101 = llvm.bitcast %100 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %102 = llvm.ptrtoint %101 : !llvm.ptr<i64> to i64
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.sub %98, %103  : i64
    %105 = llvm.add %102, %104  : i64
    %106 = llvm.urem %105, %98  : i64
    %107 = llvm.sub %105, %106  : i64
    %108 = llvm.inttoptr %107 : i64 to !llvm.ptr<i64>
    %109 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %110 = llvm.insertvalue %101, %109[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.insertvalue %108, %110[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.insertvalue %112, %111[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.insertvalue %93, %113[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.insertvalue %94, %114[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %116 = llvm.mlir.constant(0 : index) : i64
    %117 = llvm.mlir.constant(3 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%116 : i64)
  ^bb4(%119: i64):  // 2 preds: ^bb3, ^bb5
    %120 = llvm.icmp "slt" %119, %117 : i64
    llvm.cond_br %120, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %121 = llvm.extractvalue %84[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %122 = llvm.getelementptr %121[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %123 = llvm.load %122 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %125 = llvm.load %124 : !llvm.ptr<i64>
    %126 = llvm.mul %123, %125  : i64
    %127 = llvm.extractvalue %115[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %128 = llvm.getelementptr %127[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %128 : !llvm.ptr<i64>
    %129 = llvm.add %119, %118  : i64
    llvm.br ^bb4(%129 : i64)
  ^bb6:  // pred: ^bb4
    %130 = llvm.mlir.constant(3 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.null : !llvm.ptr<i1>
    %133 = llvm.getelementptr %132[%130] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %134 = llvm.ptrtoint %133 : !llvm.ptr<i1> to i64
    %135 = llvm.mlir.constant(16 : index) : i64
    %136 = llvm.add %134, %135  : i64
    %137 = llvm.call @malloc(%136) : (i64) -> !llvm.ptr<i8>
    %138 = llvm.bitcast %137 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %139 = llvm.ptrtoint %138 : !llvm.ptr<i1> to i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.sub %135, %140  : i64
    %142 = llvm.add %139, %141  : i64
    %143 = llvm.urem %142, %135  : i64
    %144 = llvm.sub %142, %143  : i64
    %145 = llvm.inttoptr %144 : i64 to !llvm.ptr<i1>
    %146 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %147 = llvm.insertvalue %138, %146[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.insertvalue %145, %147[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.mlir.constant(0 : index) : i64
    %150 = llvm.insertvalue %149, %148[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %151 = llvm.insertvalue %130, %150[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %152 = llvm.insertvalue %131, %151[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.mlir.constant(3 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%153 : i64)
  ^bb7(%156: i64):  // 2 preds: ^bb6, ^bb8
    %157 = llvm.icmp "slt" %156, %154 : i64
    llvm.cond_br %157, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %158 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.getelementptr %158[%156] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %160 = llvm.load %159 : !llvm.ptr<i64>
    %161 = llvm.extractvalue %115[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %162 = llvm.getelementptr %161[%156] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %163 = llvm.load %162 : !llvm.ptr<i64>
    %164 = llvm.icmp "eq" %160, %163 : i64
    %165 = llvm.extractvalue %152[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.getelementptr %165[%156] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %164, %166 : !llvm.ptr<i1>
    %167 = llvm.add %156, %155  : i64
    llvm.br ^bb7(%167 : i64)
  ^bb9:  // pred: ^bb7
    %168 = llvm.mlir.constant(3 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.null : !llvm.ptr<i64>
    %171 = llvm.getelementptr %170[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %172 = llvm.ptrtoint %171 : !llvm.ptr<i64> to i64
    %173 = llvm.mlir.constant(16 : index) : i64
    %174 = llvm.add %172, %173  : i64
    %175 = llvm.call @malloc(%174) : (i64) -> !llvm.ptr<i8>
    %176 = llvm.bitcast %175 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %177 = llvm.ptrtoint %176 : !llvm.ptr<i64> to i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.sub %173, %178  : i64
    %180 = llvm.add %177, %179  : i64
    %181 = llvm.urem %180, %173  : i64
    %182 = llvm.sub %180, %181  : i64
    %183 = llvm.inttoptr %182 : i64 to !llvm.ptr<i64>
    %184 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %185 = llvm.insertvalue %176, %184[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %186 = llvm.insertvalue %183, %185[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.insertvalue %187, %186[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %189 = llvm.insertvalue %168, %188[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.insertvalue %169, %189[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %191 = llvm.mlir.constant(0 : index) : i64
    %192 = llvm.mlir.constant(3 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%191 : i64)
  ^bb10(%194: i64):  // 2 preds: ^bb9, ^bb11
    %195 = llvm.icmp "slt" %194, %192 : i64
    llvm.cond_br %195, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %196 = llvm.extractvalue %152[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %197 = llvm.getelementptr %196[%194] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %198 = llvm.load %197 : !llvm.ptr<i1>
    %199 = llvm.extractvalue %84[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.getelementptr %199[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %201 = llvm.load %200 : !llvm.ptr<i64>
    %202 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.getelementptr %202[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %204 = llvm.load %203 : !llvm.ptr<i64>
    %205 = llvm.select %198, %201, %204 : i1, i64
    %206 = llvm.extractvalue %190[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %207 = llvm.getelementptr %206[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %205, %207 : !llvm.ptr<i64>
    %208 = llvm.add %194, %193  : i64
    llvm.br ^bb10(%208 : i64)
  ^bb12:  // pred: ^bb10
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.null : !llvm.ptr<i32>
    %214 = llvm.getelementptr %213[%209] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %215 = llvm.ptrtoint %214 : !llvm.ptr<i32> to i64
    %216 = llvm.mlir.constant(16 : index) : i64
    %217 = llvm.add %215, %216  : i64
    %218 = llvm.call @malloc(%217) : (i64) -> !llvm.ptr<i8>
    %219 = llvm.bitcast %218 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %220 = llvm.ptrtoint %219 : !llvm.ptr<i32> to i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.sub %216, %221  : i64
    %223 = llvm.add %220, %222  : i64
    %224 = llvm.urem %223, %216  : i64
    %225 = llvm.sub %223, %224  : i64
    %226 = llvm.inttoptr %225 : i64 to !llvm.ptr<i32>
    %227 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %228 = llvm.insertvalue %219, %227[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %229 = llvm.insertvalue %226, %228[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.insertvalue %230, %229[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %232 = llvm.insertvalue %209, %231[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %233 = llvm.insertvalue %210, %232[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %234 = llvm.insertvalue %211, %233[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %235 = llvm.insertvalue %210, %234[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %236 = llvm.insertvalue %211, %235[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %237 = llvm.insertvalue %212, %236[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%238 : i64)
  ^bb13(%241: i64):  // 2 preds: ^bb12, ^bb20
    %242 = llvm.icmp "slt" %241, %239 : i64
    llvm.cond_br %242, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %243 = llvm.mlir.constant(0 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%243 : i64)
  ^bb15(%246: i64):  // 2 preds: ^bb14, ^bb19
    %247 = llvm.icmp "slt" %246, %244 : i64
    llvm.cond_br %247, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%248 : i64)
  ^bb17(%251: i64):  // 2 preds: ^bb16, ^bb18
    %252 = llvm.icmp "slt" %251, %249 : i64
    llvm.cond_br %252, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %253 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %254 = llvm.add %12, %12  : i64
    %255 = llvm.add %254, %12  : i64
    %256 = llvm.getelementptr %253[%255] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %257 = llvm.load %256 : !llvm.ptr<i32>
    %258 = llvm.extractvalue %237[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %259 = llvm.add %241, %246  : i64
    %260 = llvm.add %259, %251  : i64
    %261 = llvm.getelementptr %258[%260] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %257, %261 : !llvm.ptr<i32>
    %262 = llvm.add %251, %250  : i64
    llvm.br ^bb17(%262 : i64)
  ^bb19:  // pred: ^bb17
    %263 = llvm.add %246, %245  : i64
    llvm.br ^bb15(%263 : i64)
  ^bb20:  // pred: ^bb15
    %264 = llvm.add %241, %240  : i64
    llvm.br ^bb13(%264 : i64)
  ^bb21:  // pred: ^bb13
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.constant(2 : index) : i64
    %267 = llvm.mlir.constant(2 : index) : i64
    %268 = llvm.mlir.constant(2 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(4 : index) : i64
    %271 = llvm.mlir.constant(8 : index) : i64
    %272 = llvm.mlir.constant(8 : index) : i64
    %273 = llvm.mlir.null : !llvm.ptr<i32>
    %274 = llvm.getelementptr %273[%272] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %275 = llvm.ptrtoint %274 : !llvm.ptr<i32> to i64
    %276 = llvm.mlir.constant(16 : index) : i64
    %277 = llvm.add %275, %276  : i64
    %278 = llvm.call @malloc(%277) : (i64) -> !llvm.ptr<i8>
    %279 = llvm.bitcast %278 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %280 = llvm.ptrtoint %279 : !llvm.ptr<i32> to i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.sub %276, %281  : i64
    %283 = llvm.add %280, %282  : i64
    %284 = llvm.urem %283, %276  : i64
    %285 = llvm.sub %283, %284  : i64
    %286 = llvm.inttoptr %285 : i64 to !llvm.ptr<i32>
    %287 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %288 = llvm.insertvalue %279, %287[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.insertvalue %286, %288[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.insertvalue %290, %289[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.insertvalue %265, %291[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %293 = llvm.insertvalue %266, %292[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.insertvalue %267, %293[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.insertvalue %268, %294[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.insertvalue %271, %295[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.insertvalue %270, %296[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.insertvalue %268, %297[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %269, %298[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.mlir.constant(0 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%300 : i64)
  ^bb22(%303: i64):  // 2 preds: ^bb21, ^bb32
    %304 = llvm.icmp "slt" %303, %301 : i64
    llvm.cond_br %304, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.mlir.constant(2 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%305 : i64)
  ^bb24(%308: i64):  // 2 preds: ^bb23, ^bb31
    %309 = llvm.icmp "slt" %308, %306 : i64
    llvm.cond_br %309, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.mlir.constant(2 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%310 : i64)
  ^bb26(%313: i64):  // 2 preds: ^bb25, ^bb30
    %314 = llvm.icmp "slt" %313, %311 : i64
    llvm.cond_br %314, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.mlir.constant(2 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%315 : i64)
  ^bb28(%318: i64):  // 2 preds: ^bb27, ^bb29
    %319 = llvm.icmp "slt" %318, %316 : i64
    llvm.cond_br %319, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %320 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.mlir.constant(8 : index) : i64
    %322 = llvm.mul %303, %321  : i64
    %323 = llvm.mlir.constant(4 : index) : i64
    %324 = llvm.mul %308, %323  : i64
    %325 = llvm.add %322, %324  : i64
    %326 = llvm.mlir.constant(2 : index) : i64
    %327 = llvm.mul %313, %326  : i64
    %328 = llvm.add %325, %327  : i64
    %329 = llvm.add %328, %318  : i64
    %330 = llvm.getelementptr %320[%329] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %331 = llvm.load %330 : !llvm.ptr<i32>
    %332 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %333 = llvm.add %12, %12  : i64
    %334 = llvm.add %333, %12  : i64
    %335 = llvm.getelementptr %332[%334] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %336 = llvm.load %335 : !llvm.ptr<i32>
    %337 = llvm.add %331, %336  : i32
    %338 = llvm.extractvalue %299[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.mlir.constant(8 : index) : i64
    %340 = llvm.mul %303, %339  : i64
    %341 = llvm.mlir.constant(4 : index) : i64
    %342 = llvm.mul %308, %341  : i64
    %343 = llvm.add %340, %342  : i64
    %344 = llvm.mlir.constant(2 : index) : i64
    %345 = llvm.mul %313, %344  : i64
    %346 = llvm.add %343, %345  : i64
    %347 = llvm.add %346, %318  : i64
    %348 = llvm.getelementptr %338[%347] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %337, %348 : !llvm.ptr<i32>
    %349 = llvm.add %318, %317  : i64
    llvm.br ^bb28(%349 : i64)
  ^bb30:  // pred: ^bb28
    %350 = llvm.add %313, %312  : i64
    llvm.br ^bb26(%350 : i64)
  ^bb31:  // pred: ^bb26
    %351 = llvm.add %308, %307  : i64
    llvm.br ^bb24(%351 : i64)
  ^bb32:  // pred: ^bb24
    %352 = llvm.add %303, %302  : i64
    llvm.br ^bb22(%352 : i64)
  ^bb33:  // pred: ^bb22
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.mlir.constant(2 : index) : i64
    %355 = llvm.mlir.constant(2 : index) : i64
    %356 = llvm.mlir.constant(2 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.constant(4 : index) : i64
    %359 = llvm.mlir.constant(8 : index) : i64
    %360 = llvm.mlir.constant(8 : index) : i64
    %361 = llvm.mlir.null : !llvm.ptr<i32>
    %362 = llvm.getelementptr %361[%360] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %363 = llvm.ptrtoint %362 : !llvm.ptr<i32> to i64
    %364 = llvm.mlir.constant(16 : index) : i64
    %365 = llvm.add %363, %364  : i64
    %366 = llvm.call @malloc(%365) : (i64) -> !llvm.ptr<i8>
    %367 = llvm.bitcast %366 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %368 = llvm.ptrtoint %367 : !llvm.ptr<i32> to i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.sub %364, %369  : i64
    %371 = llvm.add %368, %370  : i64
    %372 = llvm.urem %371, %364  : i64
    %373 = llvm.sub %371, %372  : i64
    %374 = llvm.inttoptr %373 : i64 to !llvm.ptr<i32>
    %375 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %376 = llvm.insertvalue %367, %375[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.insertvalue %374, %376[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.mlir.constant(0 : index) : i64
    %379 = llvm.insertvalue %378, %377[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.insertvalue %353, %379[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.insertvalue %354, %380[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.insertvalue %355, %381[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.insertvalue %356, %382[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.insertvalue %359, %383[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.insertvalue %358, %384[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.insertvalue %356, %385[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.insertvalue %357, %386[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.mlir.constant(0 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%388 : i64)
  ^bb34(%391: i64):  // 2 preds: ^bb33, ^bb44
    %392 = llvm.icmp "slt" %391, %389 : i64
    llvm.cond_br %392, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %393 = llvm.mlir.constant(0 : index) : i64
    %394 = llvm.mlir.constant(2 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%393 : i64)
  ^bb36(%396: i64):  // 2 preds: ^bb35, ^bb43
    %397 = llvm.icmp "slt" %396, %394 : i64
    llvm.cond_br %397, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.mlir.constant(2 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%398 : i64)
  ^bb38(%401: i64):  // 2 preds: ^bb37, ^bb42
    %402 = llvm.icmp "slt" %401, %399 : i64
    llvm.cond_br %402, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %403 = llvm.mlir.constant(0 : index) : i64
    %404 = llvm.mlir.constant(2 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%403 : i64)
  ^bb40(%406: i64):  // 2 preds: ^bb39, ^bb41
    %407 = llvm.icmp "slt" %406, %404 : i64
    llvm.cond_br %407, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %408 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.mlir.constant(8 : index) : i64
    %410 = llvm.mul %391, %409  : i64
    %411 = llvm.mlir.constant(4 : index) : i64
    %412 = llvm.mul %396, %411  : i64
    %413 = llvm.add %410, %412  : i64
    %414 = llvm.mlir.constant(2 : index) : i64
    %415 = llvm.mul %401, %414  : i64
    %416 = llvm.add %413, %415  : i64
    %417 = llvm.add %416, %406  : i64
    %418 = llvm.getelementptr %408[%417] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %419 = llvm.load %418 : !llvm.ptr<i32>
    %420 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %421 = llvm.add %12, %12  : i64
    %422 = llvm.add %421, %12  : i64
    %423 = llvm.getelementptr %420[%422] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %424 = llvm.load %423 : !llvm.ptr<i32>
    %425 = llvm.icmp "sgt" %419, %424 : i32
    %426 = llvm.select %425, %419, %424 : i1, i32
    %427 = llvm.extractvalue %387[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.mlir.constant(8 : index) : i64
    %429 = llvm.mul %391, %428  : i64
    %430 = llvm.mlir.constant(4 : index) : i64
    %431 = llvm.mul %396, %430  : i64
    %432 = llvm.add %429, %431  : i64
    %433 = llvm.mlir.constant(2 : index) : i64
    %434 = llvm.mul %401, %433  : i64
    %435 = llvm.add %432, %434  : i64
    %436 = llvm.add %435, %406  : i64
    %437 = llvm.getelementptr %427[%436] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %426, %437 : !llvm.ptr<i32>
    %438 = llvm.add %406, %405  : i64
    llvm.br ^bb40(%438 : i64)
  ^bb42:  // pred: ^bb40
    %439 = llvm.add %401, %400  : i64
    llvm.br ^bb38(%439 : i64)
  ^bb43:  // pred: ^bb38
    %440 = llvm.add %396, %395  : i64
    llvm.br ^bb36(%440 : i64)
  ^bb44:  // pred: ^bb36
    %441 = llvm.add %391, %390  : i64
    llvm.br ^bb34(%441 : i64)
  ^bb45:  // pred: ^bb34
    %442 = llvm.mlir.constant(1 : index) : i64
    %443 = llvm.mlir.constant(2 : index) : i64
    %444 = llvm.mlir.constant(2 : index) : i64
    %445 = llvm.mlir.constant(8 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.mlir.constant(16 : index) : i64
    %448 = llvm.mlir.constant(32 : index) : i64
    %449 = llvm.mlir.constant(32 : index) : i64
    %450 = llvm.mlir.null : !llvm.ptr<i32>
    %451 = llvm.getelementptr %450[%449] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %469 = llvm.insertvalue %442, %468[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.insertvalue %443, %469[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.insertvalue %444, %470[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.insertvalue %445, %471[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.insertvalue %448, %472[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %447, %473[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %445, %474[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %446, %475[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.mlir.constant(1 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%477 : i64)
  ^bb46(%480: i64):  // 2 preds: ^bb45, ^bb56
    %481 = llvm.icmp "slt" %480, %478 : i64
    llvm.cond_br %481, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %482 = llvm.mlir.constant(0 : index) : i64
    %483 = llvm.mlir.constant(2 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%482 : i64)
  ^bb48(%485: i64):  // 2 preds: ^bb47, ^bb55
    %486 = llvm.icmp "slt" %485, %483 : i64
    llvm.cond_br %486, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %487 = llvm.mlir.constant(0 : index) : i64
    %488 = llvm.mlir.constant(2 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%487 : i64)
  ^bb50(%490: i64):  // 2 preds: ^bb49, ^bb54
    %491 = llvm.icmp "slt" %490, %488 : i64
    llvm.cond_br %491, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %492 = llvm.mlir.constant(0 : index) : i64
    %493 = llvm.mlir.constant(2 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%492 : i64)
  ^bb52(%495: i64):  // 2 preds: ^bb51, ^bb53
    %496 = llvm.icmp "slt" %495, %493 : i64
    llvm.cond_br %496, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %497 = llvm.extractvalue %299[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.mlir.constant(8 : index) : i64
    %499 = llvm.mul %480, %498  : i64
    %500 = llvm.mlir.constant(4 : index) : i64
    %501 = llvm.mul %485, %500  : i64
    %502 = llvm.add %499, %501  : i64
    %503 = llvm.mlir.constant(2 : index) : i64
    %504 = llvm.mul %490, %503  : i64
    %505 = llvm.add %502, %504  : i64
    %506 = llvm.add %505, %495  : i64
    %507 = llvm.getelementptr %497[%506] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %508 = llvm.load %507 : !llvm.ptr<i32>
    %509 = llvm.extractvalue %476[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.mlir.constant(32 : index) : i64
    %511 = llvm.mul %480, %510  : i64
    %512 = llvm.mlir.constant(16 : index) : i64
    %513 = llvm.mul %485, %512  : i64
    %514 = llvm.add %511, %513  : i64
    %515 = llvm.mlir.constant(8 : index) : i64
    %516 = llvm.mul %490, %515  : i64
    %517 = llvm.add %514, %516  : i64
    %518 = llvm.add %517, %495  : i64
    %519 = llvm.getelementptr %509[%518] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %508, %519 : !llvm.ptr<i32>
    %520 = llvm.add %495, %494  : i64
    llvm.br ^bb52(%520 : i64)
  ^bb54:  // pred: ^bb52
    %521 = llvm.add %490, %489  : i64
    llvm.br ^bb50(%521 : i64)
  ^bb55:  // pred: ^bb50
    %522 = llvm.add %485, %484  : i64
    llvm.br ^bb48(%522 : i64)
  ^bb56:  // pred: ^bb48
    %523 = llvm.add %480, %479  : i64
    llvm.br ^bb46(%523 : i64)
  ^bb57:  // pred: ^bb46
    %524 = llvm.mlir.constant(0 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%524 : i64)
  ^bb58(%527: i64):  // 2 preds: ^bb57, ^bb68
    %528 = llvm.icmp "slt" %527, %525 : i64
    llvm.cond_br %528, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %529 = llvm.mlir.constant(0 : index) : i64
    %530 = llvm.mlir.constant(2 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%529 : i64)
  ^bb60(%532: i64):  // 2 preds: ^bb59, ^bb67
    %533 = llvm.icmp "slt" %532, %530 : i64
    llvm.cond_br %533, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %534 = llvm.mlir.constant(0 : index) : i64
    %535 = llvm.mlir.constant(2 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%534 : i64)
  ^bb62(%537: i64):  // 2 preds: ^bb61, ^bb66
    %538 = llvm.icmp "slt" %537, %535 : i64
    llvm.cond_br %538, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %539 = llvm.mlir.constant(0 : index) : i64
    %540 = llvm.mlir.constant(2 : index) : i64
    %541 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%539 : i64)
  ^bb64(%542: i64):  // 2 preds: ^bb63, ^bb65
    %543 = llvm.icmp "slt" %542, %540 : i64
    llvm.cond_br %543, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %544 = llvm.mlir.constant(2 : index) : i64
    %545 = llvm.add %542, %544  : i64
    %546 = llvm.extractvalue %299[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %547 = llvm.mlir.constant(8 : index) : i64
    %548 = llvm.mul %527, %547  : i64
    %549 = llvm.mlir.constant(4 : index) : i64
    %550 = llvm.mul %532, %549  : i64
    %551 = llvm.add %548, %550  : i64
    %552 = llvm.mlir.constant(2 : index) : i64
    %553 = llvm.mul %537, %552  : i64
    %554 = llvm.add %551, %553  : i64
    %555 = llvm.add %554, %542  : i64
    %556 = llvm.getelementptr %546[%555] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %557 = llvm.load %556 : !llvm.ptr<i32>
    %558 = llvm.extractvalue %476[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %559 = llvm.mlir.constant(32 : index) : i64
    %560 = llvm.mul %527, %559  : i64
    %561 = llvm.mlir.constant(16 : index) : i64
    %562 = llvm.mul %532, %561  : i64
    %563 = llvm.add %560, %562  : i64
    %564 = llvm.mlir.constant(8 : index) : i64
    %565 = llvm.mul %537, %564  : i64
    %566 = llvm.add %563, %565  : i64
    %567 = llvm.add %566, %545  : i64
    %568 = llvm.getelementptr %558[%567] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %557, %568 : !llvm.ptr<i32>
    %569 = llvm.add %542, %541  : i64
    llvm.br ^bb64(%569 : i64)
  ^bb66:  // pred: ^bb64
    %570 = llvm.add %537, %536  : i64
    llvm.br ^bb62(%570 : i64)
  ^bb67:  // pred: ^bb62
    %571 = llvm.add %532, %531  : i64
    llvm.br ^bb60(%571 : i64)
  ^bb68:  // pred: ^bb60
    %572 = llvm.add %527, %526  : i64
    llvm.br ^bb58(%572 : i64)
  ^bb69:  // pred: ^bb58
    %573 = llvm.mlir.constant(0 : index) : i64
    %574 = llvm.mlir.constant(1 : index) : i64
    %575 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%573 : i64)
  ^bb70(%576: i64):  // 2 preds: ^bb69, ^bb80
    %577 = llvm.icmp "slt" %576, %574 : i64
    llvm.cond_br %577, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %578 = llvm.mlir.constant(0 : index) : i64
    %579 = llvm.mlir.constant(2 : index) : i64
    %580 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%578 : i64)
  ^bb72(%581: i64):  // 2 preds: ^bb71, ^bb79
    %582 = llvm.icmp "slt" %581, %579 : i64
    llvm.cond_br %582, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %583 = llvm.mlir.constant(0 : index) : i64
    %584 = llvm.mlir.constant(2 : index) : i64
    %585 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%583 : i64)
  ^bb74(%586: i64):  // 2 preds: ^bb73, ^bb78
    %587 = llvm.icmp "slt" %586, %584 : i64
    llvm.cond_br %587, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %588 = llvm.mlir.constant(0 : index) : i64
    %589 = llvm.mlir.constant(2 : index) : i64
    %590 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%588 : i64)
  ^bb76(%591: i64):  // 2 preds: ^bb75, ^bb77
    %592 = llvm.icmp "slt" %591, %589 : i64
    llvm.cond_br %592, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %593 = llvm.mlir.constant(4 : index) : i64
    %594 = llvm.add %591, %593  : i64
    %595 = llvm.extractvalue %299[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %596 = llvm.mlir.constant(8 : index) : i64
    %597 = llvm.mul %576, %596  : i64
    %598 = llvm.mlir.constant(4 : index) : i64
    %599 = llvm.mul %581, %598  : i64
    %600 = llvm.add %597, %599  : i64
    %601 = llvm.mlir.constant(2 : index) : i64
    %602 = llvm.mul %586, %601  : i64
    %603 = llvm.add %600, %602  : i64
    %604 = llvm.add %603, %591  : i64
    %605 = llvm.getelementptr %595[%604] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %606 = llvm.load %605 : !llvm.ptr<i32>
    %607 = llvm.extractvalue %476[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %608 = llvm.mlir.constant(32 : index) : i64
    %609 = llvm.mul %576, %608  : i64
    %610 = llvm.mlir.constant(16 : index) : i64
    %611 = llvm.mul %581, %610  : i64
    %612 = llvm.add %609, %611  : i64
    %613 = llvm.mlir.constant(8 : index) : i64
    %614 = llvm.mul %586, %613  : i64
    %615 = llvm.add %612, %614  : i64
    %616 = llvm.add %615, %594  : i64
    %617 = llvm.getelementptr %607[%616] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %606, %617 : !llvm.ptr<i32>
    %618 = llvm.add %591, %590  : i64
    llvm.br ^bb76(%618 : i64)
  ^bb78:  // pred: ^bb76
    %619 = llvm.add %586, %585  : i64
    llvm.br ^bb74(%619 : i64)
  ^bb79:  // pred: ^bb74
    %620 = llvm.add %581, %580  : i64
    llvm.br ^bb72(%620 : i64)
  ^bb80:  // pred: ^bb72
    %621 = llvm.add %576, %575  : i64
    llvm.br ^bb70(%621 : i64)
  ^bb81:  // pred: ^bb70
    %622 = llvm.mlir.constant(0 : index) : i64
    %623 = llvm.mlir.constant(1 : index) : i64
    %624 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%622 : i64)
  ^bb82(%625: i64):  // 2 preds: ^bb81, ^bb92
    %626 = llvm.icmp "slt" %625, %623 : i64
    llvm.cond_br %626, ^bb83, ^bb93
  ^bb83:  // pred: ^bb82
    %627 = llvm.mlir.constant(0 : index) : i64
    %628 = llvm.mlir.constant(2 : index) : i64
    %629 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb84(%627 : i64)
  ^bb84(%630: i64):  // 2 preds: ^bb83, ^bb91
    %631 = llvm.icmp "slt" %630, %628 : i64
    llvm.cond_br %631, ^bb85, ^bb92
  ^bb85:  // pred: ^bb84
    %632 = llvm.mlir.constant(0 : index) : i64
    %633 = llvm.mlir.constant(2 : index) : i64
    %634 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb86(%632 : i64)
  ^bb86(%635: i64):  // 2 preds: ^bb85, ^bb90
    %636 = llvm.icmp "slt" %635, %633 : i64
    llvm.cond_br %636, ^bb87, ^bb91
  ^bb87:  // pred: ^bb86
    %637 = llvm.mlir.constant(0 : index) : i64
    %638 = llvm.mlir.constant(2 : index) : i64
    %639 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%637 : i64)
  ^bb88(%640: i64):  // 2 preds: ^bb87, ^bb89
    %641 = llvm.icmp "slt" %640, %638 : i64
    llvm.cond_br %641, ^bb89, ^bb90
  ^bb89:  // pred: ^bb88
    %642 = llvm.mlir.constant(6 : index) : i64
    %643 = llvm.add %640, %642  : i64
    %644 = llvm.extractvalue %387[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %645 = llvm.mlir.constant(8 : index) : i64
    %646 = llvm.mul %625, %645  : i64
    %647 = llvm.mlir.constant(4 : index) : i64
    %648 = llvm.mul %630, %647  : i64
    %649 = llvm.add %646, %648  : i64
    %650 = llvm.mlir.constant(2 : index) : i64
    %651 = llvm.mul %635, %650  : i64
    %652 = llvm.add %649, %651  : i64
    %653 = llvm.add %652, %640  : i64
    %654 = llvm.getelementptr %644[%653] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %655 = llvm.load %654 : !llvm.ptr<i32>
    %656 = llvm.extractvalue %476[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %657 = llvm.mlir.constant(32 : index) : i64
    %658 = llvm.mul %625, %657  : i64
    %659 = llvm.mlir.constant(16 : index) : i64
    %660 = llvm.mul %630, %659  : i64
    %661 = llvm.add %658, %660  : i64
    %662 = llvm.mlir.constant(8 : index) : i64
    %663 = llvm.mul %635, %662  : i64
    %664 = llvm.add %661, %663  : i64
    %665 = llvm.add %664, %643  : i64
    %666 = llvm.getelementptr %656[%665] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %655, %666 : !llvm.ptr<i32>
    %667 = llvm.add %640, %639  : i64
    llvm.br ^bb88(%667 : i64)
  ^bb90:  // pred: ^bb88
    %668 = llvm.add %635, %634  : i64
    llvm.br ^bb86(%668 : i64)
  ^bb91:  // pred: ^bb86
    %669 = llvm.add %630, %629  : i64
    llvm.br ^bb84(%669 : i64)
  ^bb92:  // pred: ^bb84
    %670 = llvm.add %625, %624  : i64
    llvm.br ^bb82(%670 : i64)
  ^bb93:  // pred: ^bb82
    %671 = llvm.mlir.constant(1 : index) : i64
    %672 = llvm.mlir.constant(2 : index) : i64
    %673 = llvm.mlir.constant(2 : index) : i64
    %674 = llvm.mlir.constant(2 : index) : i64
    %675 = llvm.mlir.constant(1 : index) : i64
    %676 = llvm.mlir.constant(4 : index) : i64
    %677 = llvm.mlir.constant(8 : index) : i64
    %678 = llvm.mlir.constant(8 : index) : i64
    %679 = llvm.mlir.null : !llvm.ptr<i1>
    %680 = llvm.getelementptr %679[%678] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %681 = llvm.ptrtoint %680 : !llvm.ptr<i1> to i64
    %682 = llvm.mlir.constant(16 : index) : i64
    %683 = llvm.add %681, %682  : i64
    %684 = llvm.call @malloc(%683) : (i64) -> !llvm.ptr<i8>
    %685 = llvm.bitcast %684 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %686 = llvm.ptrtoint %685 : !llvm.ptr<i1> to i64
    %687 = llvm.mlir.constant(1 : index) : i64
    %688 = llvm.sub %682, %687  : i64
    %689 = llvm.add %686, %688  : i64
    %690 = llvm.urem %689, %682  : i64
    %691 = llvm.sub %689, %690  : i64
    %692 = llvm.inttoptr %691 : i64 to !llvm.ptr<i1>
    %693 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %694 = llvm.insertvalue %685, %693[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %695 = llvm.insertvalue %692, %694[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %696 = llvm.mlir.constant(0 : index) : i64
    %697 = llvm.insertvalue %696, %695[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %698 = llvm.insertvalue %671, %697[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %699 = llvm.insertvalue %672, %698[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %700 = llvm.insertvalue %673, %699[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %701 = llvm.insertvalue %674, %700[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %702 = llvm.insertvalue %677, %701[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %703 = llvm.insertvalue %676, %702[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %704 = llvm.insertvalue %674, %703[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %705 = llvm.insertvalue %675, %704[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %706 = llvm.mlir.constant(0 : index) : i64
    %707 = llvm.mlir.constant(1 : index) : i64
    %708 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%706 : i64)
  ^bb94(%709: i64):  // 2 preds: ^bb93, ^bb104
    %710 = llvm.icmp "slt" %709, %707 : i64
    llvm.cond_br %710, ^bb95, ^bb105
  ^bb95:  // pred: ^bb94
    %711 = llvm.mlir.constant(0 : index) : i64
    %712 = llvm.mlir.constant(2 : index) : i64
    %713 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb96(%711 : i64)
  ^bb96(%714: i64):  // 2 preds: ^bb95, ^bb103
    %715 = llvm.icmp "slt" %714, %712 : i64
    llvm.cond_br %715, ^bb97, ^bb104
  ^bb97:  // pred: ^bb96
    %716 = llvm.mlir.constant(0 : index) : i64
    %717 = llvm.mlir.constant(2 : index) : i64
    %718 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb98(%716 : i64)
  ^bb98(%719: i64):  // 2 preds: ^bb97, ^bb102
    %720 = llvm.icmp "slt" %719, %717 : i64
    llvm.cond_br %720, ^bb99, ^bb103
  ^bb99:  // pred: ^bb98
    %721 = llvm.mlir.constant(0 : index) : i64
    %722 = llvm.mlir.constant(2 : index) : i64
    %723 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb100(%721 : i64)
  ^bb100(%724: i64):  // 2 preds: ^bb99, ^bb101
    %725 = llvm.icmp "slt" %724, %722 : i64
    llvm.cond_br %725, ^bb101, ^bb102
  ^bb101:  // pred: ^bb100
    %726 = llvm.extractvalue %387[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %727 = llvm.mlir.constant(8 : index) : i64
    %728 = llvm.mul %709, %727  : i64
    %729 = llvm.mlir.constant(4 : index) : i64
    %730 = llvm.mul %714, %729  : i64
    %731 = llvm.add %728, %730  : i64
    %732 = llvm.mlir.constant(2 : index) : i64
    %733 = llvm.mul %719, %732  : i64
    %734 = llvm.add %731, %733  : i64
    %735 = llvm.add %734, %724  : i64
    %736 = llvm.getelementptr %726[%735] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %737 = llvm.load %736 : !llvm.ptr<i32>
    %738 = llvm.extractvalue %387[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %739 = llvm.mlir.constant(8 : index) : i64
    %740 = llvm.mul %709, %739  : i64
    %741 = llvm.mlir.constant(4 : index) : i64
    %742 = llvm.mul %714, %741  : i64
    %743 = llvm.add %740, %742  : i64
    %744 = llvm.mlir.constant(2 : index) : i64
    %745 = llvm.mul %719, %744  : i64
    %746 = llvm.add %743, %745  : i64
    %747 = llvm.add %746, %724  : i64
    %748 = llvm.getelementptr %738[%747] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %749 = llvm.load %748 : !llvm.ptr<i32>
    %750 = llvm.icmp "sgt" %737, %749 : i32
    %751 = llvm.extractvalue %705[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %752 = llvm.mlir.constant(8 : index) : i64
    %753 = llvm.mul %709, %752  : i64
    %754 = llvm.mlir.constant(4 : index) : i64
    %755 = llvm.mul %714, %754  : i64
    %756 = llvm.add %753, %755  : i64
    %757 = llvm.mlir.constant(2 : index) : i64
    %758 = llvm.mul %719, %757  : i64
    %759 = llvm.add %756, %758  : i64
    %760 = llvm.add %759, %724  : i64
    %761 = llvm.getelementptr %751[%760] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %750, %761 : !llvm.ptr<i1>
    %762 = llvm.add %724, %723  : i64
    llvm.br ^bb100(%762 : i64)
  ^bb102:  // pred: ^bb100
    %763 = llvm.add %719, %718  : i64
    llvm.br ^bb98(%763 : i64)
  ^bb103:  // pred: ^bb98
    %764 = llvm.add %714, %713  : i64
    llvm.br ^bb96(%764 : i64)
  ^bb104:  // pred: ^bb96
    %765 = llvm.add %709, %708  : i64
    llvm.br ^bb94(%765 : i64)
  ^bb105:  // pred: ^bb94
    %766 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %767 = llvm.insertvalue %237, %766[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %768 = llvm.insertvalue %476, %767[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %769 = llvm.insertvalue %705, %768[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %769 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v0_0", "v6_0", "v1_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(3 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(0 : i64) : i64
    %78 = llvm.getelementptr %51[%77] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %78 : !llvm.ptr<ptr<i8>>
    %79 = llvm.mlir.constant(4 : i64) : i64
    %80 = llvm.call @omTensorCreateUntyped(%79) : (i64) -> !llvm.ptr<i8>
    %81 = llvm.mlir.constant(1 : i64) : i64
    %82 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.bitcast %82 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %84 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.bitcast %84 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%80, %81, %83, %85) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %86 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%80, %86) : (!llvm.ptr<i8>, i64) -> ()
    %87 = llvm.call @omTensorGetShape(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.call @omTensorGetStrides(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %89 = llvm.mlir.constant(0 : i64) : i64
    %90 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.getelementptr %87[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.getelementptr %88[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %87[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %88[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(2 : i64) : i64
    %100 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %87[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %88[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(3 : i64) : i64
    %105 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %87[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %88[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(1 : i64) : i64
    %110 = llvm.getelementptr %51[%109] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %80, %110 : !llvm.ptr<ptr<i8>>
    %111 = llvm.mlir.constant(4 : i64) : i64
    %112 = llvm.call @omTensorCreateUntyped(%111) : (i64) -> !llvm.ptr<i8>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.bitcast %114 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %116 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.bitcast %116 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%112, %113, %115, %117) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %118 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%112, %118) : (!llvm.ptr<i8>, i64) -> ()
    %119 = llvm.call @omTensorGetShape(%112) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %120 = llvm.call @omTensorGetStrides(%112) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %121 = llvm.mlir.constant(0 : i64) : i64
    %122 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %119[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.getelementptr %120[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %119[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %120[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(2 : i64) : i64
    %132 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %119[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %120[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(3 : i64) : i64
    %137 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %119[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %120[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(2 : i64) : i64
    %142 = llvm.getelementptr %51[%141] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %112, %142 : !llvm.ptr<ptr<i8>>
    %143 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %143 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<206 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<206 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

