module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 2 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [4 , 2] , \22name\22 : \22v7_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_2(dense<[[[[4], [5]], [[4], [4]]], [[[3], [4]], [[5], [7]]]]> : tensor<2x2x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x array<2 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr<i1>, %arg8: !llvm.ptr<i1>, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> attributes {input_names = ["v2_0", "v1_0"], llvm.emit_c_interface, output_names = ["v0_0", "v6_0", "v7_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<2 x array<2 x array<2 x array<1 x i32>>>>>
    %19 = llvm.bitcast %18 : !llvm.ptr<array<2 x array<2 x array<2 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %21 = llvm.insertvalue %19, %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %19, %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(0 : index) : i64
    %24 = llvm.insertvalue %23, %22[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.mlir.constant(2 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.mlir.constant(4 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.mlir.constant(2 : index) : i64
    %30 = llvm.insertvalue %29, %28[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.mlir.constant(2 : index) : i64
    %32 = llvm.insertvalue %31, %30[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.mlir.constant(2 : index) : i64
    %34 = llvm.insertvalue %33, %32[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.insertvalue %35, %34[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.insertvalue %37, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.insertvalue %39, %38[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.mlir.constant(2 : index) : i64
    %42 = llvm.mlir.constant(2 : index) : i64
    %43 = llvm.mlir.constant(2 : index) : i64
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.mlir.constant(4 : index) : i64
    %47 = llvm.mlir.constant(8 : index) : i64
    %48 = llvm.mlir.null : !llvm.ptr<i1>
    %49 = llvm.getelementptr %48[%47] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %50 = llvm.ptrtoint %49 : !llvm.ptr<i1> to i64
    %51 = llvm.mlir.constant(16 : index) : i64
    %52 = llvm.add %50, %51  : i64
    %53 = llvm.call @malloc(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.bitcast %53 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %55 = llvm.ptrtoint %54 : !llvm.ptr<i1> to i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.sub %51, %56  : i64
    %58 = llvm.add %55, %57  : i64
    %59 = llvm.urem %58, %51  : i64
    %60 = llvm.sub %58, %59  : i64
    %61 = llvm.inttoptr %60 : i64 to !llvm.ptr<i1>
    %62 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %63 = llvm.insertvalue %54, %62[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %61, %63[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %41, %66[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %42, %67[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %43, %68[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %44, %69[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %46, %70[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %43, %71[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %44, %72[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %45, %73[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%75 : i64)
  ^bb1(%78: i64):  // 2 preds: ^bb0, ^bb11
    %79 = llvm.icmp "slt" %78, %76 : i64
    llvm.cond_br %79, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.mlir.constant(2 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%80 : i64)
  ^bb3(%83: i64):  // 2 preds: ^bb2, ^bb10
    %84 = llvm.icmp "slt" %83, %81 : i64
    llvm.cond_br %84, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%85 : i64)
  ^bb5(%88: i64):  // 2 preds: ^bb4, ^bb9
    %89 = llvm.icmp "slt" %88, %86 : i64
    llvm.cond_br %89, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%90 : i64)
  ^bb7(%93: i64):  // 2 preds: ^bb6, ^bb8
    %94 = llvm.icmp "slt" %93, %91 : i64
    llvm.cond_br %94, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %95 = llvm.extractvalue %40[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(4 : index) : i64
    %97 = llvm.mul %78, %96  : i64
    %98 = llvm.mlir.constant(2 : index) : i64
    %99 = llvm.mul %83, %98  : i64
    %100 = llvm.add %97, %99  : i64
    %101 = llvm.add %100, %88  : i64
    %102 = llvm.add %101, %93  : i64
    %103 = llvm.getelementptr %95[%102] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %104 = llvm.load %103 : !llvm.ptr<i32>
    %105 = llvm.extractvalue %40[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.mlir.constant(4 : index) : i64
    %107 = llvm.mul %78, %106  : i64
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mul %83, %108  : i64
    %110 = llvm.add %107, %109  : i64
    %111 = llvm.add %110, %88  : i64
    %112 = llvm.add %111, %93  : i64
    %113 = llvm.getelementptr %105[%112] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %114 = llvm.load %113 : !llvm.ptr<i32>
    %115 = llvm.icmp "sgt" %104, %114 : i32
    %116 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.mlir.constant(4 : index) : i64
    %118 = llvm.mul %78, %117  : i64
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mul %83, %119  : i64
    %121 = llvm.add %118, %120  : i64
    %122 = llvm.add %121, %88  : i64
    %123 = llvm.add %122, %93  : i64
    %124 = llvm.getelementptr %116[%123] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %115, %124 : !llvm.ptr<i1>
    %125 = llvm.add %93, %92  : i64
    llvm.br ^bb7(%125 : i64)
  ^bb9:  // pred: ^bb7
    %126 = llvm.add %88, %87  : i64
    llvm.br ^bb5(%126 : i64)
  ^bb10:  // pred: ^bb5
    %127 = llvm.add %83, %82  : i64
    llvm.br ^bb3(%127 : i64)
  ^bb11:  // pred: ^bb3
    %128 = llvm.add %78, %77  : i64
    llvm.br ^bb1(%128 : i64)
  ^bb12:  // pred: ^bb1
    %129 = llvm.mlir.constant(2 : index) : i64
    %130 = llvm.mlir.constant(2 : index) : i64
    %131 = llvm.mlir.constant(2 : index) : i64
    %132 = llvm.mlir.constant(2 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(4 : index) : i64
    %135 = llvm.mlir.constant(8 : index) : i64
    %136 = llvm.mlir.constant(16 : index) : i64
    %137 = llvm.mlir.null : !llvm.ptr<i32>
    %138 = llvm.getelementptr %137[%136] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %139 = llvm.ptrtoint %138 : !llvm.ptr<i32> to i64
    %140 = llvm.mlir.constant(16 : index) : i64
    %141 = llvm.add %139, %140  : i64
    %142 = llvm.call @malloc(%141) : (i64) -> !llvm.ptr<i8>
    %143 = llvm.bitcast %142 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %144 = llvm.ptrtoint %143 : !llvm.ptr<i32> to i64
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.sub %140, %145  : i64
    %147 = llvm.add %144, %146  : i64
    %148 = llvm.urem %147, %140  : i64
    %149 = llvm.sub %147, %148  : i64
    %150 = llvm.inttoptr %149 : i64 to !llvm.ptr<i32>
    %151 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %152 = llvm.insertvalue %143, %151[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %150, %152[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.insertvalue %154, %153[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %129, %155[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %130, %156[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %131, %157[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %132, %158[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %135, %159[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.insertvalue %134, %160[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %132, %161[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.insertvalue %133, %162[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(2 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%164 : i64)
  ^bb13(%167: i64):  // 2 preds: ^bb12, ^bb23
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(2 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%169 : i64)
  ^bb15(%172: i64):  // 2 preds: ^bb14, ^bb22
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(2 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%174 : i64)
  ^bb17(%177: i64):  // 2 preds: ^bb16, ^bb21
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.mlir.constant(2 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%179 : i64)
  ^bb19(%182: i64):  // 2 preds: ^bb18, ^bb20
    %183 = llvm.icmp "slt" %182, %180 : i64
    llvm.cond_br %183, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %184 = llvm.extractvalue %40[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.mlir.constant(4 : index) : i64
    %186 = llvm.mul %167, %185  : i64
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.mul %172, %187  : i64
    %189 = llvm.add %186, %188  : i64
    %190 = llvm.add %189, %177  : i64
    %191 = llvm.add %190, %17  : i64
    %192 = llvm.getelementptr %184[%191] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %193 = llvm.load %192 : !llvm.ptr<i32>
    %194 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %195 = llvm.mlir.constant(2 : index) : i64
    %196 = llvm.mul %17, %195  : i64
    %197 = llvm.add %196, %182  : i64
    %198 = llvm.getelementptr %194[%197] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %199 = llvm.load %198 : !llvm.ptr<i32>
    %200 = llvm.icmp "sgt" %193, %199 : i32
    %201 = llvm.select %200, %193, %199 : i1, i32
    %202 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.mlir.constant(8 : index) : i64
    %204 = llvm.mul %167, %203  : i64
    %205 = llvm.mlir.constant(4 : index) : i64
    %206 = llvm.mul %172, %205  : i64
    %207 = llvm.add %204, %206  : i64
    %208 = llvm.mlir.constant(2 : index) : i64
    %209 = llvm.mul %177, %208  : i64
    %210 = llvm.add %207, %209  : i64
    %211 = llvm.add %210, %182  : i64
    %212 = llvm.getelementptr %202[%211] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %201, %212 : !llvm.ptr<i32>
    %213 = llvm.add %182, %181  : i64
    llvm.br ^bb19(%213 : i64)
  ^bb21:  // pred: ^bb19
    %214 = llvm.add %177, %176  : i64
    llvm.br ^bb17(%214 : i64)
  ^bb22:  // pred: ^bb17
    %215 = llvm.add %172, %171  : i64
    llvm.br ^bb15(%215 : i64)
  ^bb23:  // pred: ^bb15
    %216 = llvm.add %167, %166  : i64
    llvm.br ^bb13(%216 : i64)
  ^bb24:  // pred: ^bb13
    %217 = llvm.mlir.constant(2 : index) : i64
    %218 = llvm.mlir.constant(2 : index) : i64
    %219 = llvm.mlir.constant(2 : index) : i64
    %220 = llvm.mlir.constant(2 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.mlir.constant(4 : index) : i64
    %223 = llvm.mlir.constant(8 : index) : i64
    %224 = llvm.mlir.constant(16 : index) : i64
    %225 = llvm.mlir.null : !llvm.ptr<i32>
    %226 = llvm.getelementptr %225[%224] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %227 = llvm.ptrtoint %226 : !llvm.ptr<i32> to i64
    %228 = llvm.mlir.constant(16 : index) : i64
    %229 = llvm.add %227, %228  : i64
    %230 = llvm.call @malloc(%229) : (i64) -> !llvm.ptr<i8>
    %231 = llvm.bitcast %230 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %232 = llvm.ptrtoint %231 : !llvm.ptr<i32> to i64
    %233 = llvm.mlir.constant(1 : index) : i64
    %234 = llvm.sub %228, %233  : i64
    %235 = llvm.add %232, %234  : i64
    %236 = llvm.urem %235, %228  : i64
    %237 = llvm.sub %235, %236  : i64
    %238 = llvm.inttoptr %237 : i64 to !llvm.ptr<i32>
    %239 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %240 = llvm.insertvalue %231, %239[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.insertvalue %238, %240[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.insertvalue %242, %241[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.insertvalue %217, %243[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.insertvalue %218, %244[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.insertvalue %219, %245[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.insertvalue %220, %246[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.insertvalue %223, %247[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.insertvalue %222, %248[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.insertvalue %220, %249[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.insertvalue %221, %250[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.mlir.constant(2 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%252 : i64)
  ^bb25(%255: i64):  // 2 preds: ^bb24, ^bb35
    %256 = llvm.icmp "slt" %255, %253 : i64
    llvm.cond_br %256, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %257 = llvm.mlir.constant(0 : index) : i64
    %258 = llvm.mlir.constant(2 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%257 : i64)
  ^bb27(%260: i64):  // 2 preds: ^bb26, ^bb34
    %261 = llvm.icmp "slt" %260, %258 : i64
    llvm.cond_br %261, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %262 = llvm.mlir.constant(0 : index) : i64
    %263 = llvm.mlir.constant(2 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%262 : i64)
  ^bb29(%265: i64):  // 2 preds: ^bb28, ^bb33
    %266 = llvm.icmp "slt" %265, %263 : i64
    llvm.cond_br %266, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.mlir.constant(2 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%267 : i64)
  ^bb31(%270: i64):  // 2 preds: ^bb30, ^bb32
    %271 = llvm.icmp "slt" %270, %268 : i64
    llvm.cond_br %271, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %272 = llvm.extractvalue %15[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %273 = llvm.mlir.constant(2 : index) : i64
    %274 = llvm.mul %17, %273  : i64
    %275 = llvm.add %274, %270  : i64
    %276 = llvm.getelementptr %272[%275] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %277 = llvm.load %276 : !llvm.ptr<i1>
    %278 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %279 = llvm.mlir.constant(2 : index) : i64
    %280 = llvm.mul %17, %279  : i64
    %281 = llvm.add %280, %270  : i64
    %282 = llvm.getelementptr %278[%281] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %283 = llvm.load %282 : !llvm.ptr<i32>
    %284 = llvm.extractvalue %40[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.mlir.constant(4 : index) : i64
    %286 = llvm.mul %255, %285  : i64
    %287 = llvm.mlir.constant(2 : index) : i64
    %288 = llvm.mul %260, %287  : i64
    %289 = llvm.add %286, %288  : i64
    %290 = llvm.add %289, %265  : i64
    %291 = llvm.add %290, %17  : i64
    %292 = llvm.getelementptr %284[%291] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %293 = llvm.load %292 : !llvm.ptr<i32>
    %294 = llvm.select %277, %283, %293 : i1, i32
    %295 = llvm.extractvalue %251[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.mlir.constant(8 : index) : i64
    %297 = llvm.mul %255, %296  : i64
    %298 = llvm.mlir.constant(4 : index) : i64
    %299 = llvm.mul %260, %298  : i64
    %300 = llvm.add %297, %299  : i64
    %301 = llvm.mlir.constant(2 : index) : i64
    %302 = llvm.mul %265, %301  : i64
    %303 = llvm.add %300, %302  : i64
    %304 = llvm.add %303, %270  : i64
    %305 = llvm.getelementptr %295[%304] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %294, %305 : !llvm.ptr<i32>
    %306 = llvm.add %270, %269  : i64
    llvm.br ^bb31(%306 : i64)
  ^bb33:  // pred: ^bb31
    %307 = llvm.add %265, %264  : i64
    llvm.br ^bb29(%307 : i64)
  ^bb34:  // pred: ^bb29
    %308 = llvm.add %260, %259  : i64
    llvm.br ^bb27(%308 : i64)
  ^bb35:  // pred: ^bb27
    %309 = llvm.add %255, %254  : i64
    llvm.br ^bb25(%309 : i64)
  ^bb36:  // pred: ^bb25
    %310 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %311 = llvm.extractvalue %251[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.extractvalue %251[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.insertvalue %311, %310[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %314 = llvm.insertvalue %312, %313[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.insertvalue %315, %314[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %317 = llvm.mlir.constant(4 : index) : i64
    %318 = llvm.insertvalue %317, %316[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %319 = llvm.mlir.constant(4 : index) : i64
    %320 = llvm.insertvalue %319, %318[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %321 = llvm.mlir.constant(2 : index) : i64
    %322 = llvm.insertvalue %321, %320[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %323 = llvm.mlir.constant(2 : index) : i64
    %324 = llvm.insertvalue %323, %322[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %325 = llvm.mlir.constant(2 : index) : i64
    %326 = llvm.insertvalue %325, %324[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.insertvalue %327, %326[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %329 = llvm.mlir.constant(4 : index) : i64
    %330 = llvm.mlir.constant(2 : index) : i64
    %331 = llvm.mlir.constant(2 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    %333 = llvm.mlir.constant(4 : index) : i64
    %334 = llvm.mlir.constant(16 : index) : i64
    %335 = llvm.mlir.null : !llvm.ptr<i64>
    %336 = llvm.getelementptr %335[%334] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %337 = llvm.ptrtoint %336 : !llvm.ptr<i64> to i64
    %338 = llvm.mlir.constant(16 : index) : i64
    %339 = llvm.add %337, %338  : i64
    %340 = llvm.call @malloc(%339) : (i64) -> !llvm.ptr<i8>
    %341 = llvm.bitcast %340 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %342 = llvm.ptrtoint %341 : !llvm.ptr<i64> to i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.sub %338, %343  : i64
    %345 = llvm.add %342, %344  : i64
    %346 = llvm.urem %345, %338  : i64
    %347 = llvm.sub %345, %346  : i64
    %348 = llvm.inttoptr %347 : i64 to !llvm.ptr<i64>
    %349 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %350 = llvm.insertvalue %341, %349[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %351 = llvm.insertvalue %348, %350[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.insertvalue %352, %351[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %354 = llvm.insertvalue %329, %353[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %355 = llvm.insertvalue %330, %354[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %356 = llvm.insertvalue %331, %355[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %357 = llvm.insertvalue %333, %356[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %358 = llvm.insertvalue %331, %357[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %359 = llvm.insertvalue %332, %358[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.mlir.constant(4 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%360 : i64)
  ^bb37(%363: i64):  // 2 preds: ^bb36, ^bb44
    %364 = llvm.icmp "slt" %363, %361 : i64
    llvm.cond_br %364, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %365 = llvm.mlir.constant(0 : index) : i64
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%365 : i64)
  ^bb39(%368: i64):  // 2 preds: ^bb38, ^bb43
    %369 = llvm.icmp "slt" %368, %366 : i64
    llvm.cond_br %369, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %370 = llvm.mlir.constant(0 : index) : i64
    %371 = llvm.mlir.constant(2 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%370 : i64)
  ^bb41(%373: i64):  // 2 preds: ^bb40, ^bb42
    %374 = llvm.icmp "slt" %373, %371 : i64
    llvm.cond_br %374, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %375 = llvm.extractvalue %328[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %376 = llvm.mlir.constant(4 : index) : i64
    %377 = llvm.mul %363, %376  : i64
    %378 = llvm.mlir.constant(2 : index) : i64
    %379 = llvm.mul %368, %378  : i64
    %380 = llvm.add %377, %379  : i64
    %381 = llvm.add %380, %373  : i64
    %382 = llvm.getelementptr %375[%381] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %383 = llvm.load %382 : !llvm.ptr<i32>
    %384 = llvm.sext %383 : i32 to i64
    %385 = llvm.extractvalue %359[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %386 = llvm.mlir.constant(4 : index) : i64
    %387 = llvm.mul %363, %386  : i64
    %388 = llvm.mlir.constant(2 : index) : i64
    %389 = llvm.mul %368, %388  : i64
    %390 = llvm.add %387, %389  : i64
    %391 = llvm.add %390, %373  : i64
    %392 = llvm.getelementptr %385[%391] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %384, %392 : !llvm.ptr<i64>
    %393 = llvm.add %373, %372  : i64
    llvm.br ^bb41(%393 : i64)
  ^bb43:  // pred: ^bb41
    %394 = llvm.add %368, %367  : i64
    llvm.br ^bb39(%394 : i64)
  ^bb44:  // pred: ^bb39
    %395 = llvm.add %363, %362  : i64
    llvm.br ^bb37(%395 : i64)
  ^bb45:  // pred: ^bb37
    %396 = llvm.mlir.constant(4 : index) : i64
    %397 = llvm.mlir.constant(2 : index) : i64
    %398 = llvm.mlir.constant(1 : index) : i64
    %399 = llvm.mlir.constant(8 : index) : i64
    %400 = llvm.mlir.null : !llvm.ptr<i64>
    %401 = llvm.getelementptr %400[%399] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %402 = llvm.ptrtoint %401 : !llvm.ptr<i64> to i64
    %403 = llvm.mlir.constant(16 : index) : i64
    %404 = llvm.add %402, %403  : i64
    %405 = llvm.call @malloc(%404) : (i64) -> !llvm.ptr<i8>
    %406 = llvm.bitcast %405 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %407 = llvm.ptrtoint %406 : !llvm.ptr<i64> to i64
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.sub %403, %408  : i64
    %410 = llvm.add %407, %409  : i64
    %411 = llvm.urem %410, %403  : i64
    %412 = llvm.sub %410, %411  : i64
    %413 = llvm.inttoptr %412 : i64 to !llvm.ptr<i64>
    %414 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %415 = llvm.insertvalue %406, %414[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %416 = llvm.insertvalue %413, %415[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.insertvalue %417, %416[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %419 = llvm.insertvalue %396, %418[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %420 = llvm.insertvalue %397, %419[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %421 = llvm.insertvalue %397, %420[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %422 = llvm.insertvalue %398, %421[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %423 = llvm.mlir.constant(0 : index) : i64
    %424 = llvm.mlir.constant(4 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%423 : i64)
  ^bb46(%426: i64):  // 2 preds: ^bb45, ^bb50
    %427 = llvm.icmp "slt" %426, %424 : i64
    llvm.cond_br %427, ^bb47, ^bb51
  ^bb47:  // pred: ^bb46
    %428 = llvm.mlir.constant(0 : index) : i64
    %429 = llvm.mlir.constant(2 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%428 : i64)
  ^bb48(%431: i64):  // 2 preds: ^bb47, ^bb49
    %432 = llvm.icmp "slt" %431, %429 : i64
    llvm.cond_br %432, ^bb49, ^bb50
  ^bb49:  // pred: ^bb48
    %433 = llvm.extractvalue %422[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %434 = llvm.mlir.constant(2 : index) : i64
    %435 = llvm.mul %426, %434  : i64
    %436 = llvm.add %435, %431  : i64
    %437 = llvm.getelementptr %433[%436] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %16, %437 : !llvm.ptr<i64>
    %438 = llvm.add %431, %430  : i64
    llvm.br ^bb48(%438 : i64)
  ^bb50:  // pred: ^bb48
    %439 = llvm.add %426, %425  : i64
    llvm.br ^bb46(%439 : i64)
  ^bb51:  // pred: ^bb46
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.mlir.constant(4 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%440 : i64)
  ^bb52(%443: i64):  // 2 preds: ^bb51, ^bb59
    %444 = llvm.icmp "slt" %443, %441 : i64
    llvm.cond_br %444, ^bb53, ^bb60
  ^bb53:  // pred: ^bb52
    %445 = llvm.mlir.constant(0 : index) : i64
    %446 = llvm.mlir.constant(2 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%445 : i64)
  ^bb54(%448: i64):  // 2 preds: ^bb53, ^bb58
    %449 = llvm.icmp "slt" %448, %446 : i64
    llvm.cond_br %449, ^bb55, ^bb59
  ^bb55:  // pred: ^bb54
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.mlir.constant(2 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%450 : i64)
  ^bb56(%453: i64):  // 2 preds: ^bb55, ^bb57
    %454 = llvm.icmp "slt" %453, %451 : i64
    llvm.cond_br %454, ^bb57, ^bb58
  ^bb57:  // pred: ^bb56
    %455 = llvm.extractvalue %359[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %456 = llvm.mlir.constant(4 : index) : i64
    %457 = llvm.mul %443, %456  : i64
    %458 = llvm.mlir.constant(2 : index) : i64
    %459 = llvm.mul %448, %458  : i64
    %460 = llvm.add %457, %459  : i64
    %461 = llvm.add %460, %453  : i64
    %462 = llvm.getelementptr %455[%461] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %463 = llvm.load %462 : !llvm.ptr<i64>
    %464 = llvm.extractvalue %422[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %465 = llvm.mlir.constant(2 : index) : i64
    %466 = llvm.mul %443, %465  : i64
    %467 = llvm.add %466, %448  : i64
    %468 = llvm.getelementptr %464[%467] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %469 = llvm.load %468 : !llvm.ptr<i64>
    %470 = llvm.add %469, %463  : i64
    %471 = llvm.extractvalue %422[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %472 = llvm.mlir.constant(2 : index) : i64
    %473 = llvm.mul %443, %472  : i64
    %474 = llvm.add %473, %448  : i64
    %475 = llvm.getelementptr %471[%474] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %470, %475 : !llvm.ptr<i64>
    %476 = llvm.add %453, %452  : i64
    llvm.br ^bb56(%476 : i64)
  ^bb58:  // pred: ^bb56
    %477 = llvm.add %448, %447  : i64
    llvm.br ^bb54(%477 : i64)
  ^bb59:  // pred: ^bb54
    %478 = llvm.add %443, %442  : i64
    llvm.br ^bb52(%478 : i64)
  ^bb60:  // pred: ^bb52
    %479 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>
    %480 = llvm.insertvalue %74, %479[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %481 = llvm.insertvalue %163, %480[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %482 = llvm.insertvalue %422, %481[2] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    llvm.return %482 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>>) attributes {input_names = ["v2_0", "v1_0"], llvm.emit_c_interface, output_names = ["v0_0", "v6_0", "v7_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>>
    %9 = llvm.extractvalue %8[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.extractvalue %8[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.extractvalue %8[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.extractvalue %8[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.extractvalue %8[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.extractvalue %8[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.extractvalue %8[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %9, %10, %11, %12, %13, %14, %15) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i1>, !llvm.ptr<i1>, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>
    llvm.store %16, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>
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
    %30 = llvm.mlir.constant(1 : i64) : i64
    %31 = llvm.getelementptr %0[%30] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %32 = llvm.load %31 : !llvm.ptr<ptr<i8>>
    %33 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>
    %35 = llvm.call @omTensorGetDataPtr(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %36 = llvm.bitcast %35 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %37 = llvm.insertvalue %36, %34[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.insertvalue %36, %37[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.mlir.constant(0 : i64) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.call @omTensorGetShape(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %42 = llvm.call @omTensorGetStrides(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %43 = llvm.mlir.constant(0 : i64) : i64
    %44 = llvm.getelementptr %41[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %40[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.getelementptr %42[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.mlir.constant(1 : i64) : i64
    %51 = llvm.getelementptr %41[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.getelementptr %42[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %56, %33 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %33) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<2 x i64>, array<2 x i64>)>>) -> ()
    %57 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)>>
    %58 = llvm.extractvalue %57[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %59 = llvm.extractvalue %57[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %60 = llvm.extractvalue %57[2] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>)> 
    %61 = llvm.mlir.constant(3 : i64) : i64
    %62 = llvm.mlir.constant(24 : i64) : i64
    %63 = llvm.call @malloc(%62) : (i64) -> !llvm.ptr<i8>
    %64 = llvm.bitcast %63 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %65 = llvm.mlir.constant(4 : i64) : i64
    %66 = llvm.call @omTensorCreateUntyped(%65) : (i64) -> !llvm.ptr<i8>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %58[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.bitcast %68 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %70 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.bitcast %70 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%66, %67, %69, %71) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %72 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%66, %72) : (!llvm.ptr<i8>, i64) -> ()
    %73 = llvm.call @omTensorGetShape(%66) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %74 = llvm.call @omTensorGetStrides(%66) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %75 = llvm.mlir.constant(0 : i64) : i64
    %76 = llvm.extractvalue %58[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.getelementptr %73[%75] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.extractvalue %58[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %74[%75] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %58[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %73[%80] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.extractvalue %58[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.getelementptr %74[%80] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %83, %84 : !llvm.ptr<i64>
    %85 = llvm.mlir.constant(2 : i64) : i64
    %86 = llvm.extractvalue %58[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.getelementptr %73[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.extractvalue %58[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %74[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %88, %89 : !llvm.ptr<i64>
    %90 = llvm.mlir.constant(3 : i64) : i64
    %91 = llvm.extractvalue %58[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %73[%90] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.extractvalue %58[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %129 = llvm.mlir.constant(2 : i64) : i64
    %130 = llvm.call @omTensorCreateUntyped(%129) : (i64) -> !llvm.ptr<i8>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %60[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %133 = llvm.bitcast %132 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %134 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %135 = llvm.bitcast %134 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%130, %131, %133, %135) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %136 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%130, %136) : (!llvm.ptr<i8>, i64) -> ()
    %137 = llvm.call @omTensorGetShape(%130) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %138 = llvm.call @omTensorGetStrides(%130) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %139 = llvm.mlir.constant(0 : i64) : i64
    %140 = llvm.extractvalue %60[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %141 = llvm.getelementptr %137[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.extractvalue %60[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %143 = llvm.getelementptr %138[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.mlir.constant(1 : i64) : i64
    %145 = llvm.extractvalue %60[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %146 = llvm.getelementptr %137[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %60[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %148 = llvm.getelementptr %138[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(2 : i64) : i64
    %150 = llvm.getelementptr %64[%149] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %130, %150 : !llvm.ptr<ptr<i8>>
    %151 = llvm.call @omTensorListCreate(%64, %61, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %151 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<202 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<202 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

