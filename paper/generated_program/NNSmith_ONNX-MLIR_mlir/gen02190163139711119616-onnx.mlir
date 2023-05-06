module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 1 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [2 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<true> : tensor<1xi1>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i1>
  llvm.mlir.global internal constant @constant_3(dense<4> : tensor<1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_2(dense<[[[[6], [5]], [[5], [5]]], [[[5], [3]], [[3], [4]]]]> : tensor<2x2x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x array<2 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr<i1>, %arg6: !llvm.ptr<i1>, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0", "v1_0"], llvm.emit_c_interface, output_names = ["v2_0", "v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    %7 = llvm.insertvalue %arg5, %6[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.insertvalue %arg7, %8[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.insertvalue %arg9, %11[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.insertvalue %arg10, %13[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %18 = llvm.bitcast %17 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %19 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %24 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %25 = llvm.bitcast %24 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %26 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %27 = llvm.insertvalue %25, %26[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.insertvalue %25, %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %29 = llvm.mlir.constant(0 : index) : i64
    %30 = llvm.insertvalue %29, %28[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %31 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<2 x array<2 x array<2 x array<1 x i32>>>>>
    %32 = llvm.bitcast %31 : !llvm.ptr<array<2 x array<2 x array<2 x array<1 x i32>>>>> to !llvm.ptr<i32>
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
    %46 = llvm.mlir.constant(2 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i32>>
    %55 = llvm.bitcast %54 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %56 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %57 = llvm.insertvalue %55, %56[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.insertvalue %55, %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.insertvalue %59, %58[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i1>>
    %66 = llvm.bitcast %65 : !llvm.ptr<array<1 x i1>> to !llvm.ptr<i1>
    %67 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.insertvalue %72, %71[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.insertvalue %74, %73[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.mlir.constant(2 : index) : i64
    %78 = llvm.mlir.constant(2 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(4 : index) : i64
    %82 = llvm.mlir.constant(8 : index) : i64
    %83 = llvm.mlir.null : !llvm.ptr<i32>
    %84 = llvm.getelementptr %83[%82] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %85 = llvm.ptrtoint %84 : !llvm.ptr<i32> to i64
    %86 = llvm.mlir.constant(16 : index) : i64
    %87 = llvm.add %85, %86  : i64
    %88 = llvm.call @malloc(%87) : (i64) -> !llvm.ptr<i8>
    %89 = llvm.bitcast %88 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %90 = llvm.ptrtoint %89 : !llvm.ptr<i32> to i64
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.sub %86, %91  : i64
    %93 = llvm.add %90, %92  : i64
    %94 = llvm.urem %93, %86  : i64
    %95 = llvm.sub %93, %94  : i64
    %96 = llvm.inttoptr %95 : i64 to !llvm.ptr<i32>
    %97 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %98 = llvm.insertvalue %89, %97[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %96, %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.insertvalue %100, %99[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %76, %101[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %77, %102[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %78, %103[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %79, %104[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %81, %105[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %78, %106[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %79, %107[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %80, %108[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.mlir.constant(2 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%110 : i64)
  ^bb1(%113: i64):  // 2 preds: ^bb0, ^bb11
    %114 = llvm.icmp "slt" %113, %111 : i64
    llvm.cond_br %114, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.mlir.constant(2 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%115 : i64)
  ^bb3(%118: i64):  // 2 preds: ^bb2, ^bb10
    %119 = llvm.icmp "slt" %118, %116 : i64
    llvm.cond_br %119, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = llvm.mlir.constant(2 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%120 : i64)
  ^bb5(%123: i64):  // 2 preds: ^bb4, ^bb9
    %124 = llvm.icmp "slt" %123, %121 : i64
    llvm.cond_br %124, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %125 = llvm.mlir.constant(0 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%125 : i64)
  ^bb7(%128: i64):  // 2 preds: ^bb6, ^bb8
    %129 = llvm.icmp "slt" %128, %126 : i64
    llvm.cond_br %129, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %130 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.mlir.constant(4 : index) : i64
    %132 = llvm.mul %113, %131  : i64
    %133 = llvm.mlir.constant(2 : index) : i64
    %134 = llvm.mul %118, %133  : i64
    %135 = llvm.add %132, %134  : i64
    %136 = llvm.add %135, %123  : i64
    %137 = llvm.add %136, %128  : i64
    %138 = llvm.getelementptr %130[%137] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %139 = llvm.load %138 : !llvm.ptr<i32>
    %140 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %141 = llvm.load %140 : !llvm.ptr<i32>
    %142 = llvm.icmp "slt" %139, %141 : i32
    %143 = llvm.select %142, %141, %139 : i1, i32
    %144 = llvm.extractvalue %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %145 = llvm.load %144 : !llvm.ptr<i32>
    %146 = llvm.icmp "slt" %143, %145 : i32
    %147 = llvm.select %146, %143, %145 : i1, i32
    %148 = llvm.extractvalue %109[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.mlir.constant(4 : index) : i64
    %150 = llvm.mul %113, %149  : i64
    %151 = llvm.mlir.constant(2 : index) : i64
    %152 = llvm.mul %118, %151  : i64
    %153 = llvm.add %150, %152  : i64
    %154 = llvm.add %153, %123  : i64
    %155 = llvm.add %154, %128  : i64
    %156 = llvm.getelementptr %148[%155] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %147, %156 : !llvm.ptr<i32>
    %157 = llvm.add %128, %127  : i64
    llvm.br ^bb7(%157 : i64)
  ^bb9:  // pred: ^bb7
    %158 = llvm.add %123, %122  : i64
    llvm.br ^bb5(%158 : i64)
  ^bb10:  // pred: ^bb5
    %159 = llvm.add %118, %117  : i64
    llvm.br ^bb3(%159 : i64)
  ^bb11:  // pred: ^bb3
    %160 = llvm.add %113, %112  : i64
    llvm.br ^bb1(%160 : i64)
  ^bb12:  // pred: ^bb1
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.null : !llvm.ptr<i32>
    %164 = llvm.getelementptr %163[%161] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %165 = llvm.ptrtoint %164 : !llvm.ptr<i32> to i64
    %166 = llvm.mlir.constant(16 : index) : i64
    %167 = llvm.add %165, %166  : i64
    %168 = llvm.call @malloc(%167) : (i64) -> !llvm.ptr<i8>
    %169 = llvm.bitcast %168 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %170 = llvm.ptrtoint %169 : !llvm.ptr<i32> to i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.sub %166, %171  : i64
    %173 = llvm.add %170, %172  : i64
    %174 = llvm.urem %173, %166  : i64
    %175 = llvm.sub %173, %174  : i64
    %176 = llvm.inttoptr %175 : i64 to !llvm.ptr<i32>
    %177 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %178 = llvm.insertvalue %169, %177[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.insertvalue %176, %178[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.insertvalue %180, %179[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %182 = llvm.insertvalue %161, %181[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.insertvalue %162, %182[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%184 : i64)
  ^bb13(%187: i64):  // 2 preds: ^bb12, ^bb14
    %188 = llvm.icmp "slt" %187, %185 : i64
    llvm.cond_br %188, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %189 = llvm.extractvalue %75[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.getelementptr %189[%187] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %191 = llvm.load %190 : !llvm.ptr<i1>
    %192 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %193 = llvm.getelementptr %192[%187] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %194 = llvm.load %193 : !llvm.ptr<i32>
    %195 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.getelementptr %195[%187] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %197 = llvm.load %196 : !llvm.ptr<i32>
    %198 = llvm.select %191, %194, %197 : i1, i32
    %199 = llvm.extractvalue %183[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.getelementptr %199[%187] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %198, %200 : !llvm.ptr<i32>
    %201 = llvm.add %187, %186  : i64
    llvm.br ^bb13(%201 : i64)
  ^bb15:  // pred: ^bb13
    %202 = llvm.mlir.constant(2 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(2 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.mlir.constant(2 : index) : i64
    %207 = llvm.mlir.constant(4 : index) : i64
    %208 = llvm.mlir.null : !llvm.ptr<i1>
    %209 = llvm.getelementptr %208[%207] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %210 = llvm.ptrtoint %209 : !llvm.ptr<i1> to i64
    %211 = llvm.mlir.constant(16 : index) : i64
    %212 = llvm.add %210, %211  : i64
    %213 = llvm.call @malloc(%212) : (i64) -> !llvm.ptr<i8>
    %214 = llvm.bitcast %213 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %215 = llvm.ptrtoint %214 : !llvm.ptr<i1> to i64
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.sub %211, %216  : i64
    %218 = llvm.add %215, %217  : i64
    %219 = llvm.urem %218, %211  : i64
    %220 = llvm.sub %218, %219  : i64
    %221 = llvm.inttoptr %220 : i64 to !llvm.ptr<i1>
    %222 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    %223 = llvm.insertvalue %214, %222[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %224 = llvm.insertvalue %221, %223[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.insertvalue %225, %224[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %227 = llvm.insertvalue %202, %226[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %228 = llvm.insertvalue %203, %227[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %229 = llvm.insertvalue %204, %228[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %230 = llvm.insertvalue %206, %229[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %231 = llvm.insertvalue %204, %230[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %232 = llvm.insertvalue %205, %231[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.mlir.constant(2 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%233 : i64)
  ^bb16(%236: i64):  // 2 preds: ^bb15, ^bb23
    %237 = llvm.icmp "slt" %236, %234 : i64
    llvm.cond_br %237, ^bb17, ^bb24
  ^bb17:  // pred: ^bb16
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%238 : i64)
  ^bb18(%241: i64):  // 2 preds: ^bb17, ^bb22
    %242 = llvm.icmp "slt" %241, %239 : i64
    llvm.cond_br %242, ^bb19, ^bb23
  ^bb19:  // pred: ^bb18
    %243 = llvm.mlir.constant(0 : index) : i64
    %244 = llvm.mlir.constant(2 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%243 : i64)
  ^bb20(%246: i64):  // 2 preds: ^bb19, ^bb21
    %247 = llvm.icmp "slt" %246, %244 : i64
    llvm.cond_br %247, ^bb21, ^bb22
  ^bb21:  // pred: ^bb20
    %248 = llvm.extractvalue %75[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %249 = llvm.getelementptr %248[%16] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %250 = llvm.load %249 : !llvm.ptr<i1>
    %251 = llvm.extractvalue %15[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %252 = llvm.mlir.constant(2 : index) : i64
    %253 = llvm.mul %236, %252  : i64
    %254 = llvm.mlir.constant(2 : index) : i64
    %255 = llvm.mul %241, %254  : i64
    %256 = llvm.add %253, %255  : i64
    %257 = llvm.add %256, %246  : i64
    %258 = llvm.getelementptr %251[%257] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %259 = llvm.load %258 : !llvm.ptr<i1>
    %260 = llvm.or %250, %259  : i1
    %261 = llvm.extractvalue %232[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %262 = llvm.mlir.constant(2 : index) : i64
    %263 = llvm.mul %236, %262  : i64
    %264 = llvm.mlir.constant(2 : index) : i64
    %265 = llvm.mul %241, %264  : i64
    %266 = llvm.add %263, %265  : i64
    %267 = llvm.add %266, %246  : i64
    %268 = llvm.getelementptr %261[%267] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %260, %268 : !llvm.ptr<i1>
    %269 = llvm.add %246, %245  : i64
    llvm.br ^bb20(%269 : i64)
  ^bb22:  // pred: ^bb20
    %270 = llvm.add %241, %240  : i64
    llvm.br ^bb18(%270 : i64)
  ^bb23:  // pred: ^bb18
    %271 = llvm.add %236, %235  : i64
    llvm.br ^bb16(%271 : i64)
  ^bb24:  // pred: ^bb16
    %272 = llvm.mlir.constant(2 : index) : i64
    %273 = llvm.mlir.constant(2 : index) : i64
    %274 = llvm.mlir.constant(2 : index) : i64
    %275 = llvm.mlir.constant(2 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.constant(4 : index) : i64
    %278 = llvm.mlir.constant(8 : index) : i64
    %279 = llvm.mlir.constant(16 : index) : i64
    %280 = llvm.mlir.null : !llvm.ptr<i32>
    %281 = llvm.getelementptr %280[%279] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %282 = llvm.ptrtoint %281 : !llvm.ptr<i32> to i64
    %283 = llvm.mlir.constant(16 : index) : i64
    %284 = llvm.add %282, %283  : i64
    %285 = llvm.call @malloc(%284) : (i64) -> !llvm.ptr<i8>
    %286 = llvm.bitcast %285 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %287 = llvm.ptrtoint %286 : !llvm.ptr<i32> to i64
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.sub %283, %288  : i64
    %290 = llvm.add %287, %289  : i64
    %291 = llvm.urem %290, %283  : i64
    %292 = llvm.sub %290, %291  : i64
    %293 = llvm.inttoptr %292 : i64 to !llvm.ptr<i32>
    %294 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %295 = llvm.insertvalue %286, %294[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.insertvalue %293, %295[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.mlir.constant(0 : index) : i64
    %298 = llvm.insertvalue %297, %296[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %272, %298[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %273, %299[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.insertvalue %274, %300[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %275, %301[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %278, %302[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.insertvalue %277, %303[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.insertvalue %275, %304[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.insertvalue %276, %305[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.mlir.constant(2 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%307 : i64)
  ^bb25(%310: i64):  // 2 preds: ^bb24, ^bb35
    %311 = llvm.icmp "slt" %310, %308 : i64
    llvm.cond_br %311, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %312 = llvm.mlir.constant(0 : index) : i64
    %313 = llvm.mlir.constant(2 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%312 : i64)
  ^bb27(%315: i64):  // 2 preds: ^bb26, ^bb34
    %316 = llvm.icmp "slt" %315, %313 : i64
    llvm.cond_br %316, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %317 = llvm.mlir.constant(0 : index) : i64
    %318 = llvm.mlir.constant(2 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%317 : i64)
  ^bb29(%320: i64):  // 2 preds: ^bb28, ^bb33
    %321 = llvm.icmp "slt" %320, %318 : i64
    llvm.cond_br %321, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %322 = llvm.mlir.constant(0 : index) : i64
    %323 = llvm.mlir.constant(2 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%322 : i64)
  ^bb31(%325: i64):  // 2 preds: ^bb30, ^bb32
    %326 = llvm.icmp "slt" %325, %323 : i64
    llvm.cond_br %326, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %327 = llvm.extractvalue %15[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %328 = llvm.mlir.constant(2 : index) : i64
    %329 = llvm.mul %315, %328  : i64
    %330 = llvm.mlir.constant(2 : index) : i64
    %331 = llvm.mul %16, %330  : i64
    %332 = llvm.add %329, %331  : i64
    %333 = llvm.add %332, %325  : i64
    %334 = llvm.getelementptr %327[%333] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %335 = llvm.load %334 : !llvm.ptr<i1>
    %336 = llvm.extractvalue %183[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.getelementptr %336[%16] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %338 = llvm.load %337 : !llvm.ptr<i32>
    %339 = llvm.extractvalue %109[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.mlir.constant(4 : index) : i64
    %341 = llvm.mul %310, %340  : i64
    %342 = llvm.mlir.constant(2 : index) : i64
    %343 = llvm.mul %315, %342  : i64
    %344 = llvm.add %341, %343  : i64
    %345 = llvm.add %344, %320  : i64
    %346 = llvm.add %345, %16  : i64
    %347 = llvm.getelementptr %339[%346] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %348 = llvm.load %347 : !llvm.ptr<i32>
    %349 = llvm.select %335, %338, %348 : i1, i32
    %350 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.mlir.constant(8 : index) : i64
    %352 = llvm.mul %310, %351  : i64
    %353 = llvm.mlir.constant(4 : index) : i64
    %354 = llvm.mul %315, %353  : i64
    %355 = llvm.add %352, %354  : i64
    %356 = llvm.mlir.constant(2 : index) : i64
    %357 = llvm.mul %320, %356  : i64
    %358 = llvm.add %355, %357  : i64
    %359 = llvm.add %358, %325  : i64
    %360 = llvm.getelementptr %350[%359] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %349, %360 : !llvm.ptr<i32>
    %361 = llvm.add %325, %324  : i64
    llvm.br ^bb31(%361 : i64)
  ^bb33:  // pred: ^bb31
    %362 = llvm.add %320, %319  : i64
    llvm.br ^bb29(%362 : i64)
  ^bb34:  // pred: ^bb29
    %363 = llvm.add %315, %314  : i64
    llvm.br ^bb27(%363 : i64)
  ^bb35:  // pred: ^bb27
    %364 = llvm.add %310, %309  : i64
    llvm.br ^bb25(%364 : i64)
  ^bb36:  // pred: ^bb25
    %365 = llvm.mlir.constant(2 : index) : i64
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mlir.constant(2 : index) : i64
    %368 = llvm.mlir.constant(2 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.constant(4 : index) : i64
    %371 = llvm.mlir.constant(8 : index) : i64
    %372 = llvm.mlir.constant(16 : index) : i64
    %373 = llvm.mlir.null : !llvm.ptr<i32>
    %374 = llvm.getelementptr %373[%372] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %375 = llvm.ptrtoint %374 : !llvm.ptr<i32> to i64
    %376 = llvm.mlir.constant(16 : index) : i64
    %377 = llvm.add %375, %376  : i64
    %378 = llvm.call @malloc(%377) : (i64) -> !llvm.ptr<i8>
    %379 = llvm.bitcast %378 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %380 = llvm.ptrtoint %379 : !llvm.ptr<i32> to i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.sub %376, %381  : i64
    %383 = llvm.add %380, %382  : i64
    %384 = llvm.urem %383, %376  : i64
    %385 = llvm.sub %383, %384  : i64
    %386 = llvm.inttoptr %385 : i64 to !llvm.ptr<i32>
    %387 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %388 = llvm.insertvalue %379, %387[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.insertvalue %386, %388[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.insertvalue %390, %389[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.insertvalue %365, %391[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.insertvalue %366, %392[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.insertvalue %367, %393[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.insertvalue %368, %394[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.insertvalue %371, %395[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.insertvalue %370, %396[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %368, %397[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.insertvalue %369, %398[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.mlir.constant(2 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%400 : i64)
  ^bb37(%403: i64):  // 2 preds: ^bb36, ^bb47
    %404 = llvm.icmp "slt" %403, %401 : i64
    llvm.cond_br %404, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.mlir.constant(2 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%405 : i64)
  ^bb39(%408: i64):  // 2 preds: ^bb38, ^bb46
    %409 = llvm.icmp "slt" %408, %406 : i64
    llvm.cond_br %409, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %410 = llvm.mlir.constant(0 : index) : i64
    %411 = llvm.mlir.constant(2 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%410 : i64)
  ^bb41(%413: i64):  // 2 preds: ^bb40, ^bb45
    %414 = llvm.icmp "slt" %413, %411 : i64
    llvm.cond_br %414, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.mlir.constant(2 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%415 : i64)
  ^bb43(%418: i64):  // 2 preds: ^bb42, ^bb44
    %419 = llvm.icmp "slt" %418, %416 : i64
    llvm.cond_br %419, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %420 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.mlir.constant(8 : index) : i64
    %422 = llvm.mul %403, %421  : i64
    %423 = llvm.mlir.constant(4 : index) : i64
    %424 = llvm.mul %408, %423  : i64
    %425 = llvm.add %422, %424  : i64
    %426 = llvm.mlir.constant(2 : index) : i64
    %427 = llvm.mul %413, %426  : i64
    %428 = llvm.add %425, %427  : i64
    %429 = llvm.add %428, %418  : i64
    %430 = llvm.getelementptr %420[%429] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %431 = llvm.load %430 : !llvm.ptr<i32>
    %432 = llvm.extractvalue %109[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.mlir.constant(4 : index) : i64
    %434 = llvm.mul %403, %433  : i64
    %435 = llvm.mlir.constant(2 : index) : i64
    %436 = llvm.mul %408, %435  : i64
    %437 = llvm.add %434, %436  : i64
    %438 = llvm.add %437, %413  : i64
    %439 = llvm.add %438, %16  : i64
    %440 = llvm.getelementptr %432[%439] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %441 = llvm.load %440 : !llvm.ptr<i32>
    %442 = llvm.icmp "slt" %431, %441 : i32
    %443 = llvm.select %442, %431, %441 : i1, i32
    %444 = llvm.extractvalue %399[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.mlir.constant(8 : index) : i64
    %446 = llvm.mul %403, %445  : i64
    %447 = llvm.mlir.constant(4 : index) : i64
    %448 = llvm.mul %408, %447  : i64
    %449 = llvm.add %446, %448  : i64
    %450 = llvm.mlir.constant(2 : index) : i64
    %451 = llvm.mul %413, %450  : i64
    %452 = llvm.add %449, %451  : i64
    %453 = llvm.add %452, %418  : i64
    %454 = llvm.getelementptr %444[%453] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %443, %454 : !llvm.ptr<i32>
    %455 = llvm.add %418, %417  : i64
    llvm.br ^bb43(%455 : i64)
  ^bb45:  // pred: ^bb43
    %456 = llvm.add %413, %412  : i64
    llvm.br ^bb41(%456 : i64)
  ^bb46:  // pred: ^bb41
    %457 = llvm.add %408, %407  : i64
    llvm.br ^bb39(%457 : i64)
  ^bb47:  // pred: ^bb39
    %458 = llvm.add %403, %402  : i64
    llvm.br ^bb37(%458 : i64)
  ^bb48:  // pred: ^bb37
    %459 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %460 = llvm.insertvalue %232, %459[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %461 = llvm.insertvalue %399, %460[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %461 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v5_0", "v1_0"], llvm.emit_c_interface, output_names = ["v2_0", "v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>
    %7 = llvm.extractvalue %6[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.extractvalue %6[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.extractvalue %6[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.extractvalue %6[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.extractvalue %6[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.extractvalue %6[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %13 = llvm.extractvalue %6[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.extractvalue %6[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %15 = llvm.extractvalue %6[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %16 = llvm.call @main_graph(%1, %2, %3, %4, %5, %7, %8, %9, %10, %11, %12, %13, %14, %15) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, !llvm.ptr<i1>, !llvm.ptr<i1>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %16, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %22, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %0[%23] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %25 = llvm.load %24 : !llvm.ptr<ptr<i8>>
    %26 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    %28 = llvm.call @omTensorGetDataPtr(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %30 = llvm.insertvalue %29, %27[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %31 = llvm.insertvalue %29, %30[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %32 = llvm.mlir.constant(0 : i64) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.call @omTensorGetShape(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %35 = llvm.call @omTensorGetStrides(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %36 = llvm.mlir.constant(0 : i64) : i64
    %37 = llvm.getelementptr %34[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %38 = llvm.load %37 : !llvm.ptr<i64>
    %39 = llvm.insertvalue %38, %33[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %40 = llvm.getelementptr %35[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %41 = llvm.load %40 : !llvm.ptr<i64>
    %42 = llvm.insertvalue %41, %39[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %43 = llvm.mlir.constant(1 : i64) : i64
    %44 = llvm.getelementptr %34[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %42[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %47 = llvm.getelementptr %35[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %50 = llvm.mlir.constant(2 : i64) : i64
    %51 = llvm.getelementptr %34[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %54 = llvm.getelementptr %35[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %56, %26 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %26) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %57 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %58 = llvm.extractvalue %57[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %59 = llvm.extractvalue %57[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %60 = llvm.mlir.constant(2 : i64) : i64
    %61 = llvm.mlir.constant(16 : i64) : i64
    %62 = llvm.call @malloc(%61) : (i64) -> !llvm.ptr<i8>
    %63 = llvm.bitcast %62 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %64 = llvm.mlir.constant(3 : i64) : i64
    %65 = llvm.call @omTensorCreateUntyped(%64) : (i64) -> !llvm.ptr<i8>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %58[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.bitcast %67 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %69 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.bitcast %69 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%65, %66, %68, %70) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %71 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%65, %71) : (!llvm.ptr<i8>, i64) -> ()
    %72 = llvm.call @omTensorGetShape(%65) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %73 = llvm.call @omTensorGetStrides(%65) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %74 = llvm.mlir.constant(0 : i64) : i64
    %75 = llvm.extractvalue %58[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %76 = llvm.getelementptr %72[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %58[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %78 = llvm.getelementptr %73[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(1 : i64) : i64
    %80 = llvm.extractvalue %58[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %81 = llvm.getelementptr %72[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.extractvalue %58[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %83 = llvm.getelementptr %73[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.mlir.constant(2 : i64) : i64
    %85 = llvm.extractvalue %58[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %86 = llvm.getelementptr %72[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.extractvalue %58[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %88 = llvm.getelementptr %73[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.mlir.constant(0 : i64) : i64
    %90 = llvm.getelementptr %63[%89] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %65, %90 : !llvm.ptr<ptr<i8>>
    %91 = llvm.mlir.constant(4 : i64) : i64
    %92 = llvm.call @omTensorCreateUntyped(%91) : (i64) -> !llvm.ptr<i8>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %59[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.bitcast %94 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %96 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.bitcast %96 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%92, %93, %95, %97) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %98 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%92, %98) : (!llvm.ptr<i8>, i64) -> ()
    %99 = llvm.call @omTensorGetShape(%92) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %100 = llvm.call @omTensorGetStrides(%92) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.mlir.constant(0 : i64) : i64
    %102 = llvm.extractvalue %59[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %99[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.extractvalue %59[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %100[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.mlir.constant(1 : i64) : i64
    %107 = llvm.extractvalue %59[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %99[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.extractvalue %59[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %100[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.mlir.constant(2 : i64) : i64
    %112 = llvm.extractvalue %59[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %99[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.extractvalue %59[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %100[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.mlir.constant(3 : i64) : i64
    %117 = llvm.extractvalue %59[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %99[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.extractvalue %59[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %100[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.mlir.constant(1 : i64) : i64
    %122 = llvm.getelementptr %63[%121] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %92, %122 : !llvm.ptr<ptr<i8>>
    %123 = llvm.call @omTensorListCreate(%63, %60, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %123 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<136 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<136 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

