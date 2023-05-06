module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2 , 2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: !llvm.ptr<i32>, %arg4: !llvm.ptr<i32>, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr<i1>, %arg17: !llvm.ptr<i1>, %arg18: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v7_0", "v6_0", "v3_0"], llvm.emit_c_interface, output_names = ["v2_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %5 = llvm.insertvalue %arg3, %4[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg5, %6[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg11, %8[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg7, %9[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg12, %10[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg8, %11[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg13, %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.insertvalue %arg9, %13[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %15 = llvm.insertvalue %arg14, %14[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %16 = llvm.insertvalue %arg10, %15[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64)>
    %19 = llvm.insertvalue %arg16, %18[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %20 = llvm.insertvalue %arg17, %19[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %21 = llvm.insertvalue %arg18, %20[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %22 = llvm.mlir.constant(1 : i64) : i64
    %23 = llvm.mlir.constant(-2147483648 : i32) : i32
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %26 = llvm.bitcast %25 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.constant(4 : index) : i64
    %33 = llvm.insertvalue %32, %31[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %37 = llvm.bitcast %36 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %43 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %44 = llvm.bitcast %43 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %45 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %46 = llvm.insertvalue %44, %45[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.insertvalue %44, %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.insertvalue %48, %47[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.constant(4 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.constant(2 : index) : i64
    %57 = llvm.mlir.constant(2 : index) : i64
    %58 = llvm.mlir.constant(2 : index) : i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.mlir.constant(4 : index) : i64
    %61 = llvm.mlir.constant(8 : index) : i64
    %62 = llvm.mlir.constant(8 : index) : i64
    %63 = llvm.mlir.constant(8 : index) : i64
    %64 = llvm.mlir.null : !llvm.ptr<i32>
    %65 = llvm.getelementptr %64[%63] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %66 = llvm.ptrtoint %65 : !llvm.ptr<i32> to i64
    %67 = llvm.mlir.constant(16 : index) : i64
    %68 = llvm.add %66, %67  : i64
    %69 = llvm.call @malloc(%68) : (i64) -> !llvm.ptr<i8>
    %70 = llvm.bitcast %69 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %71 = llvm.ptrtoint %70 : !llvm.ptr<i32> to i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.sub %67, %72  : i64
    %74 = llvm.add %71, %73  : i64
    %75 = llvm.urem %74, %67  : i64
    %76 = llvm.sub %74, %75  : i64
    %77 = llvm.inttoptr %76 : i64 to !llvm.ptr<i32>
    %78 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %79 = llvm.insertvalue %70, %78[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %80 = llvm.insertvalue %77, %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.insertvalue %81, %80[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %83 = llvm.insertvalue %54, %82[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %84 = llvm.insertvalue %55, %83[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %85 = llvm.insertvalue %56, %84[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %86 = llvm.insertvalue %57, %85[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %87 = llvm.insertvalue %58, %86[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %88 = llvm.insertvalue %62, %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %89 = llvm.insertvalue %61, %88[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %90 = llvm.insertvalue %60, %89[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %91 = llvm.insertvalue %58, %90[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %92 = llvm.insertvalue %59, %91[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %93 = llvm.mlir.constant(0 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%93 : i64)
  ^bb1(%96: i64):  // 2 preds: ^bb0, ^bb14
    %97 = llvm.icmp "slt" %96, %94 : i64
    llvm.cond_br %97, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%98 : i64)
  ^bb3(%101: i64):  // 2 preds: ^bb2, ^bb13
    %102 = llvm.icmp "slt" %101, %99 : i64
    llvm.cond_br %102, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.mlir.constant(2 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%103 : i64)
  ^bb5(%106: i64):  // 2 preds: ^bb4, ^bb12
    %107 = llvm.icmp "slt" %106, %104 : i64
    llvm.cond_br %107, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.mlir.constant(2 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%108 : i64)
  ^bb7(%111: i64):  // 2 preds: ^bb6, ^bb11
    %112 = llvm.icmp "slt" %111, %109 : i64
    llvm.cond_br %112, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%113 : i64)
  ^bb9(%116: i64):  // 2 preds: ^bb8, ^bb10
    %117 = llvm.icmp "slt" %116, %114 : i64
    llvm.cond_br %117, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %118 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %119 = llvm.load %118 : !llvm.ptr<i1>
    %120 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %121 = llvm.mlir.constant(8 : index) : i64
    %122 = llvm.mul %96, %121  : i64
    %123 = llvm.mlir.constant(8 : index) : i64
    %124 = llvm.mul %101, %123  : i64
    %125 = llvm.add %122, %124  : i64
    %126 = llvm.mlir.constant(4 : index) : i64
    %127 = llvm.mul %106, %126  : i64
    %128 = llvm.add %125, %127  : i64
    %129 = llvm.mlir.constant(2 : index) : i64
    %130 = llvm.mul %111, %129  : i64
    %131 = llvm.add %128, %130  : i64
    %132 = llvm.add %131, %116  : i64
    %133 = llvm.getelementptr %120[%132] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %134 = llvm.load %133 : !llvm.ptr<i32>
    %135 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %136 = llvm.load %135 : !llvm.ptr<i32>
    %137 = llvm.select %119, %134, %136 : i1, i32
    %138 = llvm.extractvalue %92[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %139 = llvm.mlir.constant(8 : index) : i64
    %140 = llvm.mul %96, %139  : i64
    %141 = llvm.mlir.constant(8 : index) : i64
    %142 = llvm.mul %101, %141  : i64
    %143 = llvm.add %140, %142  : i64
    %144 = llvm.mlir.constant(4 : index) : i64
    %145 = llvm.mul %106, %144  : i64
    %146 = llvm.add %143, %145  : i64
    %147 = llvm.mlir.constant(2 : index) : i64
    %148 = llvm.mul %111, %147  : i64
    %149 = llvm.add %146, %148  : i64
    %150 = llvm.add %149, %116  : i64
    %151 = llvm.getelementptr %138[%150] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %137, %151 : !llvm.ptr<i32>
    %152 = llvm.add %116, %115  : i64
    llvm.br ^bb9(%152 : i64)
  ^bb11:  // pred: ^bb9
    %153 = llvm.add %111, %110  : i64
    llvm.br ^bb7(%153 : i64)
  ^bb12:  // pred: ^bb7
    %154 = llvm.add %106, %105  : i64
    llvm.br ^bb5(%154 : i64)
  ^bb13:  // pred: ^bb5
    %155 = llvm.add %101, %100  : i64
    llvm.br ^bb3(%155 : i64)
  ^bb14:  // pred: ^bb3
    %156 = llvm.add %96, %95  : i64
    llvm.br ^bb1(%156 : i64)
  ^bb15:  // pred: ^bb1
    %157 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %158 = llvm.extractvalue %92[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %159 = llvm.extractvalue %92[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %160 = llvm.insertvalue %158, %157[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %161 = llvm.insertvalue %159, %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.insertvalue %162, %161[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.insertvalue %164, %163[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %166 = llvm.mlir.constant(8 : index) : i64
    %167 = llvm.insertvalue %166, %165[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %168 = llvm.mlir.constant(2 : index) : i64
    %169 = llvm.insertvalue %168, %167[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %170 = llvm.mlir.constant(4 : index) : i64
    %171 = llvm.insertvalue %170, %169[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.insertvalue %172, %171[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %174 = llvm.mlir.constant(4 : index) : i64
    %175 = llvm.insertvalue %174, %173[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %176 = llvm.mlir.constant(2 : index) : i64
    %177 = llvm.insertvalue %176, %175[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %178 = llvm.mlir.constant(2 : index) : i64
    %179 = llvm.insertvalue %178, %177[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %180 = llvm.mlir.constant(2 : index) : i64
    %181 = llvm.insertvalue %180, %179[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.insertvalue %182, %181[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(2 : index) : i64
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(4 : index) : i64
    %190 = llvm.mlir.constant(4 : index) : i64
    %191 = llvm.mlir.constant(4 : index) : i64
    %192 = llvm.mlir.null : !llvm.ptr<i32>
    %193 = llvm.getelementptr %192[%191] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %194 = llvm.ptrtoint %193 : !llvm.ptr<i32> to i64
    %195 = llvm.mlir.constant(16 : index) : i64
    %196 = llvm.add %194, %195  : i64
    %197 = llvm.call @malloc(%196) : (i64) -> !llvm.ptr<i8>
    %198 = llvm.bitcast %197 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %199 = llvm.ptrtoint %198 : !llvm.ptr<i32> to i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.sub %195, %200  : i64
    %202 = llvm.add %199, %201  : i64
    %203 = llvm.urem %202, %195  : i64
    %204 = llvm.sub %202, %203  : i64
    %205 = llvm.inttoptr %204 : i64 to !llvm.ptr<i32>
    %206 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %207 = llvm.insertvalue %198, %206[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.insertvalue %205, %207[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.insertvalue %209, %208[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.insertvalue %184, %210[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.insertvalue %185, %211[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %186, %212[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %187, %213[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.insertvalue %190, %214[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %189, %215[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.insertvalue %187, %216[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %188, %217[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%219 : i64)
  ^bb16(%222: i64):  // 2 preds: ^bb15, ^bb26
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%224 : i64)
  ^bb18(%227: i64):  // 2 preds: ^bb17, ^bb25
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.mlir.constant(2 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%229 : i64)
  ^bb20(%232: i64):  // 2 preds: ^bb19, ^bb24
    %233 = llvm.icmp "slt" %232, %230 : i64
    llvm.cond_br %233, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(2 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%234 : i64)
  ^bb22(%237: i64):  // 2 preds: ^bb21, ^bb23
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %239 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.mlir.constant(4 : index) : i64
    %241 = llvm.mul %222, %240  : i64
    %242 = llvm.mlir.constant(4 : index) : i64
    %243 = llvm.mul %227, %242  : i64
    %244 = llvm.add %241, %243  : i64
    %245 = llvm.mlir.constant(2 : index) : i64
    %246 = llvm.mul %232, %245  : i64
    %247 = llvm.add %244, %246  : i64
    %248 = llvm.add %247, %237  : i64
    %249 = llvm.getelementptr %239[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %23, %249 : !llvm.ptr<i32>
    %250 = llvm.add %237, %236  : i64
    llvm.br ^bb22(%250 : i64)
  ^bb24:  // pred: ^bb22
    %251 = llvm.add %232, %231  : i64
    llvm.br ^bb20(%251 : i64)
  ^bb25:  // pred: ^bb20
    %252 = llvm.add %227, %226  : i64
    llvm.br ^bb18(%252 : i64)
  ^bb26:  // pred: ^bb18
    %253 = llvm.add %222, %221  : i64
    llvm.br ^bb16(%253 : i64)
  ^bb27:  // pred: ^bb16
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%254 : i64)
  ^bb28(%257: i64):  // 2 preds: ^bb27, ^bb41
    %258 = llvm.icmp "slt" %257, %255 : i64
    llvm.cond_br %258, ^bb29, ^bb42
  ^bb29:  // pred: ^bb28
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.mlir.constant(2 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%259 : i64)
  ^bb30(%262: i64):  // 2 preds: ^bb29, ^bb40
    %263 = llvm.icmp "slt" %262, %260 : i64
    llvm.cond_br %263, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%264 : i64)
  ^bb32(%267: i64):  // 2 preds: ^bb31, ^bb39
    %268 = llvm.icmp "slt" %267, %265 : i64
    llvm.cond_br %268, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %269 = llvm.mlir.constant(0 : index) : i64
    %270 = llvm.mlir.constant(2 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%269 : i64)
  ^bb34(%272: i64):  // 2 preds: ^bb33, ^bb38
    %273 = llvm.icmp "slt" %272, %270 : i64
    llvm.cond_br %273, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %274 = llvm.mlir.constant(0 : index) : i64
    %275 = llvm.mlir.constant(2 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%274 : i64)
  ^bb36(%277: i64):  // 2 preds: ^bb35, ^bb37
    %278 = llvm.icmp "slt" %277, %275 : i64
    llvm.cond_br %278, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %279 = llvm.extractvalue %183[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %280 = llvm.mlir.constant(8 : index) : i64
    %281 = llvm.mul %257, %280  : i64
    %282 = llvm.mlir.constant(4 : index) : i64
    %283 = llvm.mul %262, %282  : i64
    %284 = llvm.add %281, %283  : i64
    %285 = llvm.mlir.constant(4 : index) : i64
    %286 = llvm.mul %267, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.mlir.constant(2 : index) : i64
    %289 = llvm.mul %272, %288  : i64
    %290 = llvm.add %287, %289  : i64
    %291 = llvm.add %290, %277  : i64
    %292 = llvm.getelementptr %279[%291] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %293 = llvm.load %292 : !llvm.ptr<i32>
    %294 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.mlir.constant(4 : index) : i64
    %296 = llvm.mul %257, %295  : i64
    %297 = llvm.mlir.constant(4 : index) : i64
    %298 = llvm.mul %267, %297  : i64
    %299 = llvm.add %296, %298  : i64
    %300 = llvm.mlir.constant(2 : index) : i64
    %301 = llvm.mul %272, %300  : i64
    %302 = llvm.add %299, %301  : i64
    %303 = llvm.add %302, %277  : i64
    %304 = llvm.getelementptr %294[%303] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %305 = llvm.load %304 : !llvm.ptr<i32>
    %306 = llvm.icmp "sgt" %305, %293 : i32
    %307 = llvm.select %306, %305, %293 : i1, i32
    %308 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.mlir.constant(4 : index) : i64
    %310 = llvm.mul %257, %309  : i64
    %311 = llvm.mlir.constant(4 : index) : i64
    %312 = llvm.mul %267, %311  : i64
    %313 = llvm.add %310, %312  : i64
    %314 = llvm.mlir.constant(2 : index) : i64
    %315 = llvm.mul %272, %314  : i64
    %316 = llvm.add %313, %315  : i64
    %317 = llvm.add %316, %277  : i64
    %318 = llvm.getelementptr %308[%317] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %307, %318 : !llvm.ptr<i32>
    %319 = llvm.add %277, %276  : i64
    llvm.br ^bb36(%319 : i64)
  ^bb38:  // pred: ^bb36
    %320 = llvm.add %272, %271  : i64
    llvm.br ^bb34(%320 : i64)
  ^bb39:  // pred: ^bb34
    %321 = llvm.add %267, %266  : i64
    llvm.br ^bb32(%321 : i64)
  ^bb40:  // pred: ^bb32
    %322 = llvm.add %262, %261  : i64
    llvm.br ^bb30(%322 : i64)
  ^bb41:  // pred: ^bb30
    %323 = llvm.add %257, %256  : i64
    llvm.br ^bb28(%323 : i64)
  ^bb42:  // pred: ^bb28
    %324 = llvm.mlir.constant(4 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mlir.null : !llvm.ptr<i64>
    %327 = llvm.getelementptr %326[%324] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %328 = llvm.ptrtoint %327 : !llvm.ptr<i64> to i64
    %329 = llvm.mlir.constant(16 : index) : i64
    %330 = llvm.add %328, %329  : i64
    %331 = llvm.call @malloc(%330) : (i64) -> !llvm.ptr<i8>
    %332 = llvm.bitcast %331 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %333 = llvm.ptrtoint %332 : !llvm.ptr<i64> to i64
    %334 = llvm.mlir.constant(1 : index) : i64
    %335 = llvm.sub %329, %334  : i64
    %336 = llvm.add %333, %335  : i64
    %337 = llvm.urem %336, %329  : i64
    %338 = llvm.sub %336, %337  : i64
    %339 = llvm.inttoptr %338 : i64 to !llvm.ptr<i64>
    %340 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %341 = llvm.insertvalue %332, %340[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %342 = llvm.insertvalue %339, %341[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %343 = llvm.mlir.constant(0 : index) : i64
    %344 = llvm.insertvalue %343, %342[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %345 = llvm.insertvalue %324, %344[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %346 = llvm.insertvalue %325, %345[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.mlir.constant(4 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%347 : i64)
  ^bb43(%350: i64):  // 2 preds: ^bb42, ^bb44
    %351 = llvm.icmp "slt" %350, %348 : i64
    llvm.cond_br %351, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %352 = llvm.extractvalue %346[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %353 = llvm.getelementptr %352[%350] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %22, %353 : !llvm.ptr<i64>
    %354 = llvm.add %350, %349  : i64
    llvm.br ^bb43(%354 : i64)
  ^bb45:  // pred: ^bb43
    %355 = llvm.mlir.constant(4 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.mlir.null : !llvm.ptr<i64>
    %358 = llvm.getelementptr %357[%355] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %359 = llvm.ptrtoint %358 : !llvm.ptr<i64> to i64
    %360 = llvm.mlir.constant(16 : index) : i64
    %361 = llvm.add %359, %360  : i64
    %362 = llvm.call @malloc(%361) : (i64) -> !llvm.ptr<i8>
    %363 = llvm.bitcast %362 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %364 = llvm.ptrtoint %363 : !llvm.ptr<i64> to i64
    %365 = llvm.mlir.constant(1 : index) : i64
    %366 = llvm.sub %360, %365  : i64
    %367 = llvm.add %364, %366  : i64
    %368 = llvm.urem %367, %360  : i64
    %369 = llvm.sub %367, %368  : i64
    %370 = llvm.inttoptr %369 : i64 to !llvm.ptr<i64>
    %371 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %372 = llvm.insertvalue %363, %371[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %373 = llvm.insertvalue %370, %372[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %374 = llvm.mlir.constant(0 : index) : i64
    %375 = llvm.insertvalue %374, %373[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %376 = llvm.insertvalue %355, %375[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %377 = llvm.insertvalue %356, %376[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %378 = llvm.mlir.constant(0 : index) : i64
    %379 = llvm.mlir.constant(4 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%378 : i64)
  ^bb46(%381: i64):  // 2 preds: ^bb45, ^bb47
    %382 = llvm.icmp "slt" %381, %379 : i64
    llvm.cond_br %382, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %383 = llvm.extractvalue %346[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %384 = llvm.getelementptr %383[%381] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %385 = llvm.load %384 : !llvm.ptr<i64>
    %386 = llvm.extractvalue %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %387 = llvm.load %386 : !llvm.ptr<i64>
    %388 = llvm.mul %385, %387  : i64
    %389 = llvm.extractvalue %377[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %390 = llvm.getelementptr %389[%381] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %388, %390 : !llvm.ptr<i64>
    %391 = llvm.add %381, %380  : i64
    llvm.br ^bb46(%391 : i64)
  ^bb48:  // pred: ^bb46
    %392 = llvm.mlir.constant(4 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.mlir.null : !llvm.ptr<i1>
    %395 = llvm.getelementptr %394[%392] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %396 = llvm.ptrtoint %395 : !llvm.ptr<i1> to i64
    %397 = llvm.mlir.constant(16 : index) : i64
    %398 = llvm.add %396, %397  : i64
    %399 = llvm.call @malloc(%398) : (i64) -> !llvm.ptr<i8>
    %400 = llvm.bitcast %399 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %401 = llvm.ptrtoint %400 : !llvm.ptr<i1> to i64
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.sub %397, %402  : i64
    %404 = llvm.add %401, %403  : i64
    %405 = llvm.urem %404, %397  : i64
    %406 = llvm.sub %404, %405  : i64
    %407 = llvm.inttoptr %406 : i64 to !llvm.ptr<i1>
    %408 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %409 = llvm.insertvalue %400, %408[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %410 = llvm.insertvalue %407, %409[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.insertvalue %411, %410[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %413 = llvm.insertvalue %392, %412[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %414 = llvm.insertvalue %393, %413[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.mlir.constant(4 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%415 : i64)
  ^bb49(%418: i64):  // 2 preds: ^bb48, ^bb50
    %419 = llvm.icmp "slt" %418, %416 : i64
    llvm.cond_br %419, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %420 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %421 = llvm.getelementptr %420[%418] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %422 = llvm.load %421 : !llvm.ptr<i64>
    %423 = llvm.extractvalue %377[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %424 = llvm.getelementptr %423[%418] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %425 = llvm.load %424 : !llvm.ptr<i64>
    %426 = llvm.icmp "eq" %422, %425 : i64
    %427 = llvm.extractvalue %414[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %428 = llvm.getelementptr %427[%418] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %426, %428 : !llvm.ptr<i1>
    %429 = llvm.add %418, %417  : i64
    llvm.br ^bb49(%429 : i64)
  ^bb51:  // pred: ^bb49
    %430 = llvm.mlir.constant(4 : index) : i64
    %431 = llvm.mlir.constant(1 : index) : i64
    %432 = llvm.mlir.null : !llvm.ptr<i64>
    %433 = llvm.getelementptr %432[%430] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %434 = llvm.ptrtoint %433 : !llvm.ptr<i64> to i64
    %435 = llvm.mlir.constant(16 : index) : i64
    %436 = llvm.add %434, %435  : i64
    %437 = llvm.call @malloc(%436) : (i64) -> !llvm.ptr<i8>
    %438 = llvm.bitcast %437 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %439 = llvm.ptrtoint %438 : !llvm.ptr<i64> to i64
    %440 = llvm.mlir.constant(1 : index) : i64
    %441 = llvm.sub %435, %440  : i64
    %442 = llvm.add %439, %441  : i64
    %443 = llvm.urem %442, %435  : i64
    %444 = llvm.sub %442, %443  : i64
    %445 = llvm.inttoptr %444 : i64 to !llvm.ptr<i64>
    %446 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %447 = llvm.insertvalue %438, %446[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %448 = llvm.insertvalue %445, %447[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %449 = llvm.mlir.constant(0 : index) : i64
    %450 = llvm.insertvalue %449, %448[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %451 = llvm.insertvalue %430, %450[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %452 = llvm.insertvalue %431, %451[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %453 = llvm.mlir.constant(0 : index) : i64
    %454 = llvm.mlir.constant(4 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%453 : i64)
  ^bb52(%456: i64):  // 2 preds: ^bb51, ^bb53
    %457 = llvm.icmp "slt" %456, %454 : i64
    llvm.cond_br %457, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %458 = llvm.extractvalue %414[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %459 = llvm.getelementptr %458[%456] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %460 = llvm.load %459 : !llvm.ptr<i1>
    %461 = llvm.extractvalue %346[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %462 = llvm.getelementptr %461[%456] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %463 = llvm.load %462 : !llvm.ptr<i64>
    %464 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %465 = llvm.getelementptr %464[%456] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %466 = llvm.load %465 : !llvm.ptr<i64>
    %467 = llvm.select %460, %463, %466 : i1, i64
    %468 = llvm.extractvalue %452[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %469 = llvm.getelementptr %468[%456] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %467, %469 : !llvm.ptr<i64>
    %470 = llvm.add %456, %455  : i64
    llvm.br ^bb52(%470 : i64)
  ^bb54:  // pred: ^bb52
    %471 = llvm.mlir.constant(1 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    %473 = llvm.mlir.constant(2 : index) : i64
    %474 = llvm.mlir.constant(2 : index) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    %476 = llvm.mlir.constant(4 : index) : i64
    %477 = llvm.mlir.constant(4 : index) : i64
    %478 = llvm.mlir.constant(4 : index) : i64
    %479 = llvm.mlir.null : !llvm.ptr<i32>
    %480 = llvm.getelementptr %479[%478] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %481 = llvm.ptrtoint %480 : !llvm.ptr<i32> to i64
    %482 = llvm.mlir.constant(16 : index) : i64
    %483 = llvm.add %481, %482  : i64
    %484 = llvm.call @malloc(%483) : (i64) -> !llvm.ptr<i8>
    %485 = llvm.bitcast %484 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %486 = llvm.ptrtoint %485 : !llvm.ptr<i32> to i64
    %487 = llvm.mlir.constant(1 : index) : i64
    %488 = llvm.sub %482, %487  : i64
    %489 = llvm.add %486, %488  : i64
    %490 = llvm.urem %489, %482  : i64
    %491 = llvm.sub %489, %490  : i64
    %492 = llvm.inttoptr %491 : i64 to !llvm.ptr<i32>
    %493 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %494 = llvm.insertvalue %485, %493[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %495 = llvm.insertvalue %492, %494[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %496 = llvm.mlir.constant(0 : index) : i64
    %497 = llvm.insertvalue %496, %495[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.insertvalue %471, %497[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.insertvalue %472, %498[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %500 = llvm.insertvalue %473, %499[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %501 = llvm.insertvalue %474, %500[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.insertvalue %477, %501[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.insertvalue %476, %502[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.insertvalue %474, %503[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.insertvalue %475, %504[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %506 = llvm.mlir.constant(0 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    %508 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%506 : i64)
  ^bb55(%509: i64):  // 2 preds: ^bb54, ^bb65
    %510 = llvm.icmp "slt" %509, %507 : i64
    llvm.cond_br %510, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %511 = llvm.mlir.constant(0 : index) : i64
    %512 = llvm.mlir.constant(1 : index) : i64
    %513 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%511 : i64)
  ^bb57(%514: i64):  // 2 preds: ^bb56, ^bb64
    %515 = llvm.icmp "slt" %514, %512 : i64
    llvm.cond_br %515, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %516 = llvm.mlir.constant(0 : index) : i64
    %517 = llvm.mlir.constant(2 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%516 : i64)
  ^bb59(%519: i64):  // 2 preds: ^bb58, ^bb63
    %520 = llvm.icmp "slt" %519, %517 : i64
    llvm.cond_br %520, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %521 = llvm.mlir.constant(0 : index) : i64
    %522 = llvm.mlir.constant(2 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%521 : i64)
  ^bb61(%524: i64):  // 2 preds: ^bb60, ^bb62
    %525 = llvm.icmp "slt" %524, %522 : i64
    llvm.cond_br %525, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %526 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %527 = llvm.mlir.constant(4 : index) : i64
    %528 = llvm.mul %24, %527  : i64
    %529 = llvm.mlir.constant(4 : index) : i64
    %530 = llvm.mul %24, %529  : i64
    %531 = llvm.add %528, %530  : i64
    %532 = llvm.mlir.constant(2 : index) : i64
    %533 = llvm.mul %519, %532  : i64
    %534 = llvm.add %531, %533  : i64
    %535 = llvm.add %534, %524  : i64
    %536 = llvm.getelementptr %526[%535] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %537 = llvm.load %536 : !llvm.ptr<i32>
    %538 = llvm.extractvalue %505[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %539 = llvm.mlir.constant(4 : index) : i64
    %540 = llvm.mul %509, %539  : i64
    %541 = llvm.mlir.constant(4 : index) : i64
    %542 = llvm.mul %514, %541  : i64
    %543 = llvm.add %540, %542  : i64
    %544 = llvm.mlir.constant(2 : index) : i64
    %545 = llvm.mul %519, %544  : i64
    %546 = llvm.add %543, %545  : i64
    %547 = llvm.add %546, %524  : i64
    %548 = llvm.getelementptr %538[%547] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %537, %548 : !llvm.ptr<i32>
    %549 = llvm.add %524, %523  : i64
    llvm.br ^bb61(%549 : i64)
  ^bb63:  // pred: ^bb61
    %550 = llvm.add %519, %518  : i64
    llvm.br ^bb59(%550 : i64)
  ^bb64:  // pred: ^bb59
    %551 = llvm.add %514, %513  : i64
    llvm.br ^bb57(%551 : i64)
  ^bb65:  // pred: ^bb57
    %552 = llvm.add %509, %508  : i64
    llvm.br ^bb55(%552 : i64)
  ^bb66:  // pred: ^bb55
    %553 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %554 = llvm.insertvalue %218, %553[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %555 = llvm.insertvalue %505, %554[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %555 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>) attributes {input_names = ["v7_0", "v6_0", "v3_0"], llvm.emit_c_interface, output_names = ["v2_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %5 = llvm.extractvalue %4[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %4[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %4[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %4[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %4[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %4[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %4[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %4[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.extractvalue %4[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %15 = llvm.extractvalue %4[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %16 = llvm.extractvalue %4[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %17 = llvm.extractvalue %4[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %18 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>
    %19 = llvm.extractvalue %18[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %20 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %21 = llvm.extractvalue %18[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %22 = llvm.call @main_graph(%1, %2, %3, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %19, %20, %21) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i1>, !llvm.ptr<i1>, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %22, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %19 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %21 = llvm.call @omTensorGetDataPtr(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %22 = llvm.bitcast %21 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %23 = llvm.insertvalue %22, %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %24 = llvm.insertvalue %22, %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %25 = llvm.mlir.constant(0 : i64) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.call @omTensorGetShape(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %28 = llvm.call @omTensorGetStrides(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %29 = llvm.mlir.constant(0 : i64) : i64
    %30 = llvm.getelementptr %27[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %31 = llvm.load %30 : !llvm.ptr<i64>
    %32 = llvm.insertvalue %31, %26[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %33 = llvm.getelementptr %28[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %34 = llvm.load %33 : !llvm.ptr<i64>
    %35 = llvm.insertvalue %34, %32[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %36 = llvm.mlir.constant(1 : i64) : i64
    %37 = llvm.getelementptr %27[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %38 = llvm.load %37 : !llvm.ptr<i64>
    %39 = llvm.insertvalue %38, %35[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %40 = llvm.getelementptr %28[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %41 = llvm.load %40 : !llvm.ptr<i64>
    %42 = llvm.insertvalue %41, %39[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %43 = llvm.mlir.constant(2 : i64) : i64
    %44 = llvm.getelementptr %27[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %42[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %47 = llvm.getelementptr %28[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %50 = llvm.mlir.constant(3 : i64) : i64
    %51 = llvm.getelementptr %27[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %54 = llvm.getelementptr %28[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %57 = llvm.mlir.constant(4 : i64) : i64
    %58 = llvm.getelementptr %27[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %61 = llvm.getelementptr %28[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %63, %19 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %64 = llvm.mlir.constant(2 : i64) : i64
    %65 = llvm.getelementptr %0[%64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %66 = llvm.load %65 : !llvm.ptr<ptr<i8>>
    %67 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>
    %68 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64)>
    %69 = llvm.call @omTensorGetDataPtr(%66) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %70 = llvm.bitcast %69 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %71 = llvm.insertvalue %70, %68[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %72 = llvm.insertvalue %70, %71[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %73 = llvm.mlir.constant(0 : i64) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %75 = llvm.call @omTensorGetShape(%66) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %76 = llvm.call @omTensorGetStrides(%66) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %74, %67 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %19, %67) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>) -> ()
    %77 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %78 = llvm.extractvalue %77[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %79 = llvm.extractvalue %77[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %80 = llvm.mlir.constant(2 : i64) : i64
    %81 = llvm.mlir.constant(16 : i64) : i64
    %82 = llvm.call @malloc(%81) : (i64) -> !llvm.ptr<i8>
    %83 = llvm.bitcast %82 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(4 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %78[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %78[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %78[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %78[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %78[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %78[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %78[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(3 : i64) : i64
    %110 = llvm.extractvalue %78[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %92[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %78[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %93[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(0 : i64) : i64
    %115 = llvm.getelementptr %83[%114] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %115 : !llvm.ptr<ptr<i8>>
    %116 = llvm.mlir.constant(4 : i64) : i64
    %117 = llvm.call @omTensorCreateUntyped(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %79[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.bitcast %119 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %121 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.bitcast %121 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%117, %118, %120, %122) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %123 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%117, %123) : (!llvm.ptr<i8>, i64) -> ()
    %124 = llvm.call @omTensorGetShape(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %125 = llvm.call @omTensorGetStrides(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.mlir.constant(0 : i64) : i64
    %127 = llvm.extractvalue %79[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %124[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %79[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %125[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %79[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %124[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %79[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %125[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.extractvalue %79[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %124[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %79[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %125[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(3 : i64) : i64
    %142 = llvm.extractvalue %79[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %124[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %79[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %125[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.mlir.constant(1 : i64) : i64
    %147 = llvm.getelementptr %83[%146] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %117, %147 : !llvm.ptr<ptr<i8>>
    %148 = llvm.call @omTensorListCreate(%83, %80, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %148 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<189 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<189 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

