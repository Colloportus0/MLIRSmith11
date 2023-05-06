module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [5] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<[[[[[7, 6], [5, 5]], [[7, 7], [4, 6]]], [[[5, 5], [3, 7]], [[5, 5], [7, 6]]]], [[[[7, 4], [6, 4]], [[5, 5], [5, 7]]], [[[7, 6], [6, 5]], [[4, 7], [4, 5]]]]]> : tensor<2x2x2x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x array<2 x array<2 x array<2 x i32>>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v4_0", "v0_0", "v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.constant(-2147483648 : i32) : i32
    %7 = llvm.mlir.constant(0 : index) : i64
    %8 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<2 x array<2 x array<2 x array<2 x array<2 x i32>>>>>>
    %9 = llvm.bitcast %8 : !llvm.ptr<array<2 x array<2 x array<2 x array<2 x array<2 x i32>>>>>> to !llvm.ptr<i32>
    %10 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %11 = llvm.insertvalue %9, %10[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %9, %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.insertvalue %13, %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %15 = llvm.mlir.constant(2 : index) : i64
    %16 = llvm.insertvalue %15, %14[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %17 = llvm.mlir.constant(16 : index) : i64
    %18 = llvm.insertvalue %17, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %19 = llvm.mlir.constant(2 : index) : i64
    %20 = llvm.insertvalue %19, %18[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %21 = llvm.mlir.constant(8 : index) : i64
    %22 = llvm.insertvalue %21, %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(2 : index) : i64
    %24 = llvm.insertvalue %23, %22[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %25 = llvm.mlir.constant(4 : index) : i64
    %26 = llvm.insertvalue %25, %24[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.insertvalue %27, %26[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %29 = llvm.mlir.constant(2 : index) : i64
    %30 = llvm.insertvalue %29, %28[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %31 = llvm.mlir.constant(2 : index) : i64
    %32 = llvm.insertvalue %31, %30[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.insertvalue %33, %32[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %35 = llvm.mlir.constant(2 : index) : i64
    %36 = llvm.mlir.constant(2 : index) : i64
    %37 = llvm.mlir.constant(2 : index) : i64
    %38 = llvm.mlir.constant(2 : index) : i64
    %39 = llvm.mlir.constant(2 : index) : i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.mlir.constant(8 : index) : i64
    %43 = llvm.mlir.constant(16 : index) : i64
    %44 = llvm.mlir.constant(32 : index) : i64
    %45 = llvm.mlir.null : !llvm.ptr<i32>
    %46 = llvm.getelementptr %45[%44] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %47 = llvm.ptrtoint %46 : !llvm.ptr<i32> to i64
    %48 = llvm.mlir.constant(16 : index) : i64
    %49 = llvm.add %47, %48  : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %52 = llvm.ptrtoint %51 : !llvm.ptr<i32> to i64
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.sub %48, %53  : i64
    %55 = llvm.add %52, %54  : i64
    %56 = llvm.urem %55, %48  : i64
    %57 = llvm.sub %55, %56  : i64
    %58 = llvm.inttoptr %57 : i64 to !llvm.ptr<i32>
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %60 = llvm.insertvalue %51, %59[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.insertvalue %35, %63[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.insertvalue %36, %64[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %66 = llvm.insertvalue %37, %65[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %67 = llvm.insertvalue %38, %66[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.insertvalue %39, %67[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %69 = llvm.insertvalue %43, %68[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %70 = llvm.insertvalue %42, %69[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %71 = llvm.insertvalue %41, %70[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %72 = llvm.insertvalue %39, %71[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %73 = llvm.insertvalue %40, %72[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.mlir.constant(2 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%74 : i64)
  ^bb1(%77: i64):  // 2 preds: ^bb0, ^bb14
    %78 = llvm.icmp "slt" %77, %75 : i64
    llvm.cond_br %78, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %79 = llvm.mlir.constant(0 : index) : i64
    %80 = llvm.mlir.constant(2 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%79 : i64)
  ^bb3(%82: i64):  // 2 preds: ^bb2, ^bb13
    %83 = llvm.icmp "slt" %82, %80 : i64
    llvm.cond_br %83, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.mlir.constant(2 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%84 : i64)
  ^bb5(%87: i64):  // 2 preds: ^bb4, ^bb12
    %88 = llvm.icmp "slt" %87, %85 : i64
    llvm.cond_br %88, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.mlir.constant(2 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%89 : i64)
  ^bb7(%92: i64):  // 2 preds: ^bb6, ^bb11
    %93 = llvm.icmp "slt" %92, %90 : i64
    llvm.cond_br %93, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %94 = llvm.mlir.constant(0 : index) : i64
    %95 = llvm.mlir.constant(2 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%94 : i64)
  ^bb9(%97: i64):  // 2 preds: ^bb8, ^bb10
    %98 = llvm.icmp "slt" %97, %95 : i64
    llvm.cond_br %98, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %99 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %100 = llvm.mlir.constant(16 : index) : i64
    %101 = llvm.mul %77, %100  : i64
    %102 = llvm.mlir.constant(8 : index) : i64
    %103 = llvm.mul %82, %102  : i64
    %104 = llvm.add %101, %103  : i64
    %105 = llvm.mlir.constant(4 : index) : i64
    %106 = llvm.mul %87, %105  : i64
    %107 = llvm.add %104, %106  : i64
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mul %92, %108  : i64
    %110 = llvm.add %107, %109  : i64
    %111 = llvm.add %110, %97  : i64
    %112 = llvm.getelementptr %99[%111] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %113 = llvm.load %112 : !llvm.ptr<i32>
    %114 = llvm.mlir.constant(false) : i1
    %115 = "llvm.intr.abs"(%113, %114) : (i32, i1) -> i32
    %116 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %117 = llvm.mlir.constant(16 : index) : i64
    %118 = llvm.mul %77, %117  : i64
    %119 = llvm.mlir.constant(8 : index) : i64
    %120 = llvm.mul %82, %119  : i64
    %121 = llvm.add %118, %120  : i64
    %122 = llvm.mlir.constant(4 : index) : i64
    %123 = llvm.mul %87, %122  : i64
    %124 = llvm.add %121, %123  : i64
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mul %92, %125  : i64
    %127 = llvm.add %124, %126  : i64
    %128 = llvm.add %127, %97  : i64
    %129 = llvm.getelementptr %116[%128] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %115, %129 : !llvm.ptr<i32>
    %130 = llvm.add %97, %96  : i64
    llvm.br ^bb9(%130 : i64)
  ^bb11:  // pred: ^bb9
    %131 = llvm.add %92, %91  : i64
    llvm.br ^bb7(%131 : i64)
  ^bb12:  // pred: ^bb7
    %132 = llvm.add %87, %86  : i64
    llvm.br ^bb5(%132 : i64)
  ^bb13:  // pred: ^bb5
    %133 = llvm.add %82, %81  : i64
    llvm.br ^bb3(%133 : i64)
  ^bb14:  // pred: ^bb3
    %134 = llvm.add %77, %76  : i64
    llvm.br ^bb1(%134 : i64)
  ^bb15:  // pred: ^bb1
    %135 = llvm.mlir.constant(5 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.mlir.null : !llvm.ptr<i32>
    %138 = llvm.getelementptr %137[%135] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %151 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %152 = llvm.insertvalue %143, %151[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %153 = llvm.insertvalue %150, %152[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.insertvalue %154, %153[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.insertvalue %135, %155[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.insertvalue %136, %156[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%158 : i64)
  ^bb16(%161: i64):  // 2 preds: ^bb15, ^bb17
    %162 = llvm.icmp "slt" %161, %159 : i64
    llvm.cond_br %162, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %163 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.getelementptr %163[%161] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %165 = llvm.load %164 : !llvm.ptr<i32>
    %166 = llvm.extractvalue %157[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %167 = llvm.getelementptr %166[%161] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %165, %167 : !llvm.ptr<i32>
    %168 = llvm.add %161, %160  : i64
    llvm.br ^bb16(%168 : i64)
  ^bb18:  // pred: ^bb16
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%169 : i64)
  ^bb19(%172: i64):  // 2 preds: ^bb18, ^bb20
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.add %172, %174  : i64
    %176 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.getelementptr %176[%172] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %178 = llvm.load %177 : !llvm.ptr<i32>
    %179 = llvm.extractvalue %157[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.getelementptr %179[%175] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %178, %180 : !llvm.ptr<i32>
    %181 = llvm.add %172, %171  : i64
    llvm.br ^bb19(%181 : i64)
  ^bb21:  // pred: ^bb19
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%182 : i64)
  ^bb22(%185: i64):  // 2 preds: ^bb21, ^bb23
    %186 = llvm.icmp "slt" %185, %183 : i64
    llvm.cond_br %186, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.add %185, %187  : i64
    %189 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.getelementptr %189[%185] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %191 = llvm.load %190 : !llvm.ptr<i32>
    %192 = llvm.extractvalue %157[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %193 = llvm.getelementptr %192[%188] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %191, %193 : !llvm.ptr<i32>
    %194 = llvm.add %185, %184  : i64
    llvm.br ^bb22(%194 : i64)
  ^bb24:  // pred: ^bb22
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%195 : i64)
  ^bb25(%198: i64):  // 2 preds: ^bb24, ^bb26
    %199 = llvm.icmp "slt" %198, %196 : i64
    llvm.cond_br %199, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %200 = llvm.mlir.constant(3 : index) : i64
    %201 = llvm.add %198, %200  : i64
    %202 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.getelementptr %202[%198] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %204 = llvm.load %203 : !llvm.ptr<i32>
    %205 = llvm.extractvalue %157[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %206 = llvm.getelementptr %205[%201] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %204, %206 : !llvm.ptr<i32>
    %207 = llvm.add %198, %197  : i64
    llvm.br ^bb25(%207 : i64)
  ^bb27:  // pred: ^bb25
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%208 : i64)
  ^bb28(%211: i64):  // 2 preds: ^bb27, ^bb29
    %212 = llvm.icmp "slt" %211, %209 : i64
    llvm.cond_br %212, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %213 = llvm.mlir.constant(4 : index) : i64
    %214 = llvm.add %211, %213  : i64
    %215 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.getelementptr %215[%211] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %217 = llvm.load %216 : !llvm.ptr<i32>
    %218 = llvm.extractvalue %157[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.getelementptr %218[%214] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %217, %219 : !llvm.ptr<i32>
    %220 = llvm.add %211, %210  : i64
    llvm.br ^bb28(%220 : i64)
  ^bb30:  // pred: ^bb28
    %221 = llvm.mlir.constant(2 : index) : i64
    %222 = llvm.mlir.constant(2 : index) : i64
    %223 = llvm.mlir.constant(2 : index) : i64
    %224 = llvm.mlir.constant(2 : index) : i64
    %225 = llvm.mlir.constant(2 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.constant(4 : index) : i64
    %228 = llvm.mlir.constant(8 : index) : i64
    %229 = llvm.mlir.constant(16 : index) : i64
    %230 = llvm.mlir.constant(32 : index) : i64
    %231 = llvm.mlir.null : !llvm.ptr<i32>
    %232 = llvm.getelementptr %231[%230] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %233 = llvm.ptrtoint %232 : !llvm.ptr<i32> to i64
    %234 = llvm.mlir.constant(16 : index) : i64
    %235 = llvm.add %233, %234  : i64
    %236 = llvm.call @malloc(%235) : (i64) -> !llvm.ptr<i8>
    %237 = llvm.bitcast %236 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %238 = llvm.ptrtoint %237 : !llvm.ptr<i32> to i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.sub %234, %239  : i64
    %241 = llvm.add %238, %240  : i64
    %242 = llvm.urem %241, %234  : i64
    %243 = llvm.sub %241, %242  : i64
    %244 = llvm.inttoptr %243 : i64 to !llvm.ptr<i32>
    %245 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %246 = llvm.insertvalue %237, %245[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %247 = llvm.insertvalue %244, %246[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.insertvalue %248, %247[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %250 = llvm.insertvalue %221, %249[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %251 = llvm.insertvalue %222, %250[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %252 = llvm.insertvalue %223, %251[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %253 = llvm.insertvalue %224, %252[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %254 = llvm.insertvalue %225, %253[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %255 = llvm.insertvalue %229, %254[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %256 = llvm.insertvalue %228, %255[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %257 = llvm.insertvalue %227, %256[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %258 = llvm.insertvalue %225, %257[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %259 = llvm.insertvalue %226, %258[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %260 = llvm.mlir.constant(0 : index) : i64
    %261 = llvm.mlir.constant(2 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%260 : i64)
  ^bb31(%263: i64):  // 2 preds: ^bb30, ^bb44
    %264 = llvm.icmp "slt" %263, %261 : i64
    llvm.cond_br %264, ^bb32, ^bb45
  ^bb32:  // pred: ^bb31
    %265 = llvm.mlir.constant(0 : index) : i64
    %266 = llvm.mlir.constant(2 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%265 : i64)
  ^bb33(%268: i64):  // 2 preds: ^bb32, ^bb43
    %269 = llvm.icmp "slt" %268, %266 : i64
    llvm.cond_br %269, ^bb34, ^bb44
  ^bb34:  // pred: ^bb33
    %270 = llvm.mlir.constant(0 : index) : i64
    %271 = llvm.mlir.constant(2 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%270 : i64)
  ^bb35(%273: i64):  // 2 preds: ^bb34, ^bb42
    %274 = llvm.icmp "slt" %273, %271 : i64
    llvm.cond_br %274, ^bb36, ^bb43
  ^bb36:  // pred: ^bb35
    %275 = llvm.mlir.constant(0 : index) : i64
    %276 = llvm.mlir.constant(2 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%275 : i64)
  ^bb37(%278: i64):  // 2 preds: ^bb36, ^bb41
    %279 = llvm.icmp "slt" %278, %276 : i64
    llvm.cond_br %279, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(2 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%280 : i64)
  ^bb39(%283: i64):  // 2 preds: ^bb38, ^bb40
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %285 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.getelementptr %285[%7] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %287 = llvm.load %286 : !llvm.ptr<i32>
    %288 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %289 = llvm.mlir.constant(16 : index) : i64
    %290 = llvm.mul %263, %289  : i64
    %291 = llvm.mlir.constant(8 : index) : i64
    %292 = llvm.mul %268, %291  : i64
    %293 = llvm.add %290, %292  : i64
    %294 = llvm.mlir.constant(4 : index) : i64
    %295 = llvm.mul %273, %294  : i64
    %296 = llvm.add %293, %295  : i64
    %297 = llvm.mlir.constant(2 : index) : i64
    %298 = llvm.mul %278, %297  : i64
    %299 = llvm.add %296, %298  : i64
    %300 = llvm.add %299, %283  : i64
    %301 = llvm.getelementptr %288[%300] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %302 = llvm.load %301 : !llvm.ptr<i32>
    %303 = llvm.add %287, %302  : i32
    %304 = llvm.extractvalue %259[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %305 = llvm.mlir.constant(16 : index) : i64
    %306 = llvm.mul %263, %305  : i64
    %307 = llvm.mlir.constant(8 : index) : i64
    %308 = llvm.mul %268, %307  : i64
    %309 = llvm.add %306, %308  : i64
    %310 = llvm.mlir.constant(4 : index) : i64
    %311 = llvm.mul %273, %310  : i64
    %312 = llvm.add %309, %311  : i64
    %313 = llvm.mlir.constant(2 : index) : i64
    %314 = llvm.mul %278, %313  : i64
    %315 = llvm.add %312, %314  : i64
    %316 = llvm.add %315, %283  : i64
    %317 = llvm.getelementptr %304[%316] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %303, %317 : !llvm.ptr<i32>
    %318 = llvm.add %283, %282  : i64
    llvm.br ^bb39(%318 : i64)
  ^bb41:  // pred: ^bb39
    %319 = llvm.add %278, %277  : i64
    llvm.br ^bb37(%319 : i64)
  ^bb42:  // pred: ^bb37
    %320 = llvm.add %273, %272  : i64
    llvm.br ^bb35(%320 : i64)
  ^bb43:  // pred: ^bb35
    %321 = llvm.add %268, %267  : i64
    llvm.br ^bb33(%321 : i64)
  ^bb44:  // pred: ^bb33
    %322 = llvm.add %263, %262  : i64
    llvm.br ^bb31(%322 : i64)
  ^bb45:  // pred: ^bb31
    %323 = llvm.mlir.constant(2 : index) : i64
    %324 = llvm.mlir.constant(2 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mlir.constant(2 : index) : i64
    %327 = llvm.mlir.constant(2 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.mlir.constant(4 : index) : i64
    %330 = llvm.mlir.constant(4 : index) : i64
    %331 = llvm.mlir.constant(8 : index) : i64
    %332 = llvm.mlir.constant(16 : index) : i64
    %333 = llvm.mlir.null : !llvm.ptr<i32>
    %334 = llvm.getelementptr %333[%332] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %335 = llvm.ptrtoint %334 : !llvm.ptr<i32> to i64
    %336 = llvm.mlir.constant(16 : index) : i64
    %337 = llvm.add %335, %336  : i64
    %338 = llvm.call @malloc(%337) : (i64) -> !llvm.ptr<i8>
    %339 = llvm.bitcast %338 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %340 = llvm.ptrtoint %339 : !llvm.ptr<i32> to i64
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.sub %336, %341  : i64
    %343 = llvm.add %340, %342  : i64
    %344 = llvm.urem %343, %336  : i64
    %345 = llvm.sub %343, %344  : i64
    %346 = llvm.inttoptr %345 : i64 to !llvm.ptr<i32>
    %347 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %348 = llvm.insertvalue %339, %347[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %349 = llvm.insertvalue %346, %348[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %350 = llvm.mlir.constant(0 : index) : i64
    %351 = llvm.insertvalue %350, %349[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %352 = llvm.insertvalue %323, %351[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %353 = llvm.insertvalue %324, %352[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %354 = llvm.insertvalue %325, %353[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %355 = llvm.insertvalue %326, %354[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %356 = llvm.insertvalue %327, %355[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %357 = llvm.insertvalue %331, %356[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %358 = llvm.insertvalue %330, %357[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %359 = llvm.insertvalue %329, %358[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %360 = llvm.insertvalue %327, %359[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %361 = llvm.insertvalue %328, %360[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.mlir.constant(2 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%362 : i64)
  ^bb46(%365: i64):  // 2 preds: ^bb45, ^bb59
    %366 = llvm.icmp "slt" %365, %363 : i64
    llvm.cond_br %366, ^bb47, ^bb60
  ^bb47:  // pred: ^bb46
    %367 = llvm.mlir.constant(0 : index) : i64
    %368 = llvm.mlir.constant(2 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%367 : i64)
  ^bb48(%370: i64):  // 2 preds: ^bb47, ^bb58
    %371 = llvm.icmp "slt" %370, %368 : i64
    llvm.cond_br %371, ^bb49, ^bb59
  ^bb49:  // pred: ^bb48
    %372 = llvm.mlir.constant(0 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%372 : i64)
  ^bb50(%375: i64):  // 2 preds: ^bb49, ^bb57
    %376 = llvm.icmp "slt" %375, %373 : i64
    llvm.cond_br %376, ^bb51, ^bb58
  ^bb51:  // pred: ^bb50
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.mlir.constant(2 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%377 : i64)
  ^bb52(%380: i64):  // 2 preds: ^bb51, ^bb56
    %381 = llvm.icmp "slt" %380, %378 : i64
    llvm.cond_br %381, ^bb53, ^bb57
  ^bb53:  // pred: ^bb52
    %382 = llvm.mlir.constant(0 : index) : i64
    %383 = llvm.mlir.constant(2 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%382 : i64)
  ^bb54(%385: i64):  // 2 preds: ^bb53, ^bb55
    %386 = llvm.icmp "slt" %385, %383 : i64
    llvm.cond_br %386, ^bb55, ^bb56
  ^bb55:  // pred: ^bb54
    %387 = llvm.extractvalue %259[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %388 = llvm.mlir.constant(16 : index) : i64
    %389 = llvm.mul %365, %388  : i64
    %390 = llvm.mlir.constant(8 : index) : i64
    %391 = llvm.mul %370, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.mlir.constant(4 : index) : i64
    %394 = llvm.mul %375, %393  : i64
    %395 = llvm.add %392, %394  : i64
    %396 = llvm.mlir.constant(2 : index) : i64
    %397 = llvm.mul %380, %396  : i64
    %398 = llvm.add %395, %397  : i64
    %399 = llvm.add %398, %385  : i64
    %400 = llvm.getelementptr %387[%399] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %401 = llvm.load %400 : !llvm.ptr<i32>
    %402 = llvm.extractvalue %361[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %403 = llvm.mlir.constant(8 : index) : i64
    %404 = llvm.mul %365, %403  : i64
    %405 = llvm.mlir.constant(4 : index) : i64
    %406 = llvm.mul %370, %405  : i64
    %407 = llvm.add %404, %406  : i64
    %408 = llvm.mlir.constant(4 : index) : i64
    %409 = llvm.mul %375, %408  : i64
    %410 = llvm.add %407, %409  : i64
    %411 = llvm.mlir.constant(2 : index) : i64
    %412 = llvm.mul %380, %411  : i64
    %413 = llvm.add %410, %412  : i64
    %414 = llvm.add %413, %385  : i64
    %415 = llvm.getelementptr %402[%414] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %401, %415 : !llvm.ptr<i32>
    %416 = llvm.add %385, %384  : i64
    llvm.br ^bb54(%416 : i64)
  ^bb56:  // pred: ^bb54
    %417 = llvm.add %380, %379  : i64
    llvm.br ^bb52(%417 : i64)
  ^bb57:  // pred: ^bb52
    %418 = llvm.add %375, %374  : i64
    llvm.br ^bb50(%418 : i64)
  ^bb58:  // pred: ^bb50
    %419 = llvm.add %370, %369  : i64
    llvm.br ^bb48(%419 : i64)
  ^bb59:  // pred: ^bb48
    %420 = llvm.add %365, %364  : i64
    llvm.br ^bb46(%420 : i64)
  ^bb60:  // pred: ^bb46
    %421 = llvm.mlir.constant(2 : index) : i64
    %422 = llvm.mlir.constant(2 : index) : i64
    %423 = llvm.mlir.constant(2 : index) : i64
    %424 = llvm.mlir.constant(2 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.mlir.constant(4 : index) : i64
    %427 = llvm.mlir.constant(8 : index) : i64
    %428 = llvm.mlir.constant(16 : index) : i64
    %429 = llvm.mlir.null : !llvm.ptr<i32>
    %430 = llvm.getelementptr %429[%428] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %431 = llvm.ptrtoint %430 : !llvm.ptr<i32> to i64
    %432 = llvm.mlir.constant(16 : index) : i64
    %433 = llvm.add %431, %432  : i64
    %434 = llvm.call @malloc(%433) : (i64) -> !llvm.ptr<i8>
    %435 = llvm.bitcast %434 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %436 = llvm.ptrtoint %435 : !llvm.ptr<i32> to i64
    %437 = llvm.mlir.constant(1 : index) : i64
    %438 = llvm.sub %432, %437  : i64
    %439 = llvm.add %436, %438  : i64
    %440 = llvm.urem %439, %432  : i64
    %441 = llvm.sub %439, %440  : i64
    %442 = llvm.inttoptr %441 : i64 to !llvm.ptr<i32>
    %443 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %444 = llvm.insertvalue %435, %443[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %442, %444[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.insertvalue %446, %445[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.insertvalue %421, %447[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.insertvalue %422, %448[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.insertvalue %423, %449[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.insertvalue %424, %450[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %452 = llvm.insertvalue %427, %451[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.insertvalue %426, %452[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.insertvalue %424, %453[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.insertvalue %425, %454[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.mlir.constant(2 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%456 : i64)
  ^bb61(%459: i64):  // 2 preds: ^bb60, ^bb71
    %460 = llvm.icmp "slt" %459, %457 : i64
    llvm.cond_br %460, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.mlir.constant(2 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%461 : i64)
  ^bb63(%464: i64):  // 2 preds: ^bb62, ^bb70
    %465 = llvm.icmp "slt" %464, %462 : i64
    llvm.cond_br %465, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %466 = llvm.mlir.constant(0 : index) : i64
    %467 = llvm.mlir.constant(2 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%466 : i64)
  ^bb65(%469: i64):  // 2 preds: ^bb64, ^bb69
    %470 = llvm.icmp "slt" %469, %467 : i64
    llvm.cond_br %470, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %471 = llvm.mlir.constant(0 : index) : i64
    %472 = llvm.mlir.constant(2 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%471 : i64)
  ^bb67(%474: i64):  // 2 preds: ^bb66, ^bb68
    %475 = llvm.icmp "slt" %474, %472 : i64
    llvm.cond_br %475, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %476 = llvm.extractvalue %455[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.mlir.constant(8 : index) : i64
    %478 = llvm.mul %459, %477  : i64
    %479 = llvm.mlir.constant(4 : index) : i64
    %480 = llvm.mul %464, %479  : i64
    %481 = llvm.add %478, %480  : i64
    %482 = llvm.mlir.constant(2 : index) : i64
    %483 = llvm.mul %469, %482  : i64
    %484 = llvm.add %481, %483  : i64
    %485 = llvm.add %484, %474  : i64
    %486 = llvm.getelementptr %476[%485] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %6, %486 : !llvm.ptr<i32>
    %487 = llvm.add %474, %473  : i64
    llvm.br ^bb67(%487 : i64)
  ^bb69:  // pred: ^bb67
    %488 = llvm.add %469, %468  : i64
    llvm.br ^bb65(%488 : i64)
  ^bb70:  // pred: ^bb65
    %489 = llvm.add %464, %463  : i64
    llvm.br ^bb63(%489 : i64)
  ^bb71:  // pred: ^bb63
    %490 = llvm.add %459, %458  : i64
    llvm.br ^bb61(%490 : i64)
  ^bb72:  // pred: ^bb61
    %491 = llvm.mlir.constant(0 : index) : i64
    %492 = llvm.mlir.constant(2 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%491 : i64)
  ^bb73(%494: i64):  // 2 preds: ^bb72, ^bb86
    %495 = llvm.icmp "slt" %494, %492 : i64
    llvm.cond_br %495, ^bb74, ^bb87
  ^bb74:  // pred: ^bb73
    %496 = llvm.mlir.constant(0 : index) : i64
    %497 = llvm.mlir.constant(2 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%496 : i64)
  ^bb75(%499: i64):  // 2 preds: ^bb74, ^bb85
    %500 = llvm.icmp "slt" %499, %497 : i64
    llvm.cond_br %500, ^bb76, ^bb86
  ^bb76:  // pred: ^bb75
    %501 = llvm.mlir.constant(0 : index) : i64
    %502 = llvm.mlir.constant(2 : index) : i64
    %503 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%501 : i64)
  ^bb77(%504: i64):  // 2 preds: ^bb76, ^bb84
    %505 = llvm.icmp "slt" %504, %502 : i64
    llvm.cond_br %505, ^bb78, ^bb85
  ^bb78:  // pred: ^bb77
    %506 = llvm.mlir.constant(0 : index) : i64
    %507 = llvm.mlir.constant(2 : index) : i64
    %508 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%506 : i64)
  ^bb79(%509: i64):  // 2 preds: ^bb78, ^bb83
    %510 = llvm.icmp "slt" %509, %507 : i64
    llvm.cond_br %510, ^bb80, ^bb84
  ^bb80:  // pred: ^bb79
    %511 = llvm.mlir.constant(0 : index) : i64
    %512 = llvm.mlir.constant(2 : index) : i64
    %513 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%511 : i64)
  ^bb81(%514: i64):  // 2 preds: ^bb80, ^bb82
    %515 = llvm.icmp "slt" %514, %512 : i64
    llvm.cond_br %515, ^bb82, ^bb83
  ^bb82:  // pred: ^bb81
    %516 = llvm.extractvalue %259[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %517 = llvm.mlir.constant(16 : index) : i64
    %518 = llvm.mul %494, %517  : i64
    %519 = llvm.mlir.constant(8 : index) : i64
    %520 = llvm.mul %499, %519  : i64
    %521 = llvm.add %518, %520  : i64
    %522 = llvm.mlir.constant(4 : index) : i64
    %523 = llvm.mul %504, %522  : i64
    %524 = llvm.add %521, %523  : i64
    %525 = llvm.mlir.constant(2 : index) : i64
    %526 = llvm.mul %509, %525  : i64
    %527 = llvm.add %524, %526  : i64
    %528 = llvm.add %527, %514  : i64
    %529 = llvm.getelementptr %516[%528] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %530 = llvm.load %529 : !llvm.ptr<i32>
    %531 = llvm.extractvalue %455[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %532 = llvm.mlir.constant(8 : index) : i64
    %533 = llvm.mul %494, %532  : i64
    %534 = llvm.mlir.constant(4 : index) : i64
    %535 = llvm.mul %499, %534  : i64
    %536 = llvm.add %533, %535  : i64
    %537 = llvm.mlir.constant(2 : index) : i64
    %538 = llvm.mul %504, %537  : i64
    %539 = llvm.add %536, %538  : i64
    %540 = llvm.add %539, %514  : i64
    %541 = llvm.getelementptr %531[%540] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %542 = llvm.load %541 : !llvm.ptr<i32>
    %543 = llvm.icmp "sgt" %542, %530 : i32
    %544 = llvm.select %543, %542, %530 : i1, i32
    %545 = llvm.extractvalue %455[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.mlir.constant(8 : index) : i64
    %547 = llvm.mul %494, %546  : i64
    %548 = llvm.mlir.constant(4 : index) : i64
    %549 = llvm.mul %499, %548  : i64
    %550 = llvm.add %547, %549  : i64
    %551 = llvm.mlir.constant(2 : index) : i64
    %552 = llvm.mul %504, %551  : i64
    %553 = llvm.add %550, %552  : i64
    %554 = llvm.add %553, %514  : i64
    %555 = llvm.getelementptr %545[%554] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %544, %555 : !llvm.ptr<i32>
    %556 = llvm.add %514, %513  : i64
    llvm.br ^bb81(%556 : i64)
  ^bb83:  // pred: ^bb81
    %557 = llvm.add %509, %508  : i64
    llvm.br ^bb79(%557 : i64)
  ^bb84:  // pred: ^bb79
    %558 = llvm.add %504, %503  : i64
    llvm.br ^bb77(%558 : i64)
  ^bb85:  // pred: ^bb77
    %559 = llvm.add %499, %498  : i64
    llvm.br ^bb75(%559 : i64)
  ^bb86:  // pred: ^bb75
    %560 = llvm.add %494, %493  : i64
    llvm.br ^bb73(%560 : i64)
  ^bb87:  // pred: ^bb73
    %561 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %562 = llvm.insertvalue %157, %561[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %563 = llvm.insertvalue %361, %562[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %564 = llvm.insertvalue %455, %563[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %564 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v4_0", "v0_0", "v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.call @main_graph(%1, %2, %3, %4, %5) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %6, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> ()
    %23 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %24 = llvm.extractvalue %23[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %25 = llvm.extractvalue %23[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %26 = llvm.extractvalue %23[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %27 = llvm.mlir.constant(3 : i64) : i64
    %28 = llvm.mlir.constant(24 : i64) : i64
    %29 = llvm.call @malloc(%28) : (i64) -> !llvm.ptr<i8>
    %30 = llvm.bitcast %29 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %31 = llvm.mlir.constant(1 : i64) : i64
    %32 = llvm.call @omTensorCreateUntyped(%31) : (i64) -> !llvm.ptr<i8>
    %33 = llvm.mlir.constant(1 : i64) : i64
    %34 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.bitcast %34 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %36 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.bitcast %36 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%32, %33, %35, %37) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %38 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%32, %38) : (!llvm.ptr<i8>, i64) -> ()
    %39 = llvm.call @omTensorGetShape(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %40 = llvm.call @omTensorGetStrides(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %41 = llvm.mlir.constant(0 : i64) : i64
    %42 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.getelementptr %39[%41] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %42, %43 : !llvm.ptr<i64>
    %44 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.getelementptr %40[%41] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %44, %45 : !llvm.ptr<i64>
    %46 = llvm.mlir.constant(0 : i64) : i64
    %47 = llvm.getelementptr %30[%46] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %32, %47 : !llvm.ptr<ptr<i8>>
    %48 = llvm.mlir.constant(5 : i64) : i64
    %49 = llvm.call @omTensorCreateUntyped(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.mlir.constant(1 : i64) : i64
    %51 = llvm.extractvalue %25[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %52 = llvm.bitcast %51 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %53 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %54 = llvm.bitcast %53 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%49, %50, %52, %54) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %55 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%49, %55) : (!llvm.ptr<i8>, i64) -> ()
    %56 = llvm.call @omTensorGetShape(%49) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.call @omTensorGetStrides(%49) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %58 = llvm.mlir.constant(0 : i64) : i64
    %59 = llvm.extractvalue %25[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %60 = llvm.getelementptr %56[%58] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %59, %60 : !llvm.ptr<i64>
    %61 = llvm.extractvalue %25[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.getelementptr %57[%58] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %61, %62 : !llvm.ptr<i64>
    %63 = llvm.mlir.constant(1 : i64) : i64
    %64 = llvm.extractvalue %25[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.getelementptr %56[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.extractvalue %25[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %67 = llvm.getelementptr %57[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %66, %67 : !llvm.ptr<i64>
    %68 = llvm.mlir.constant(2 : i64) : i64
    %69 = llvm.extractvalue %25[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %70 = llvm.getelementptr %56[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.extractvalue %25[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %72 = llvm.getelementptr %57[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.mlir.constant(3 : i64) : i64
    %74 = llvm.extractvalue %25[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %75 = llvm.getelementptr %56[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.extractvalue %25[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %77 = llvm.getelementptr %57[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.mlir.constant(4 : i64) : i64
    %79 = llvm.extractvalue %25[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %80 = llvm.getelementptr %56[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.extractvalue %25[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %82 = llvm.getelementptr %57[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.mlir.constant(1 : i64) : i64
    %84 = llvm.getelementptr %30[%83] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %49, %84 : !llvm.ptr<ptr<i8>>
    %85 = llvm.mlir.constant(4 : i64) : i64
    %86 = llvm.call @omTensorCreateUntyped(%85) : (i64) -> !llvm.ptr<i8>
    %87 = llvm.mlir.constant(1 : i64) : i64
    %88 = llvm.extractvalue %26[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %90 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.bitcast %90 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%86, %87, %89, %91) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %92 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%86, %92) : (!llvm.ptr<i8>, i64) -> ()
    %93 = llvm.call @omTensorGetShape(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.call @omTensorGetStrides(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %95 = llvm.mlir.constant(0 : i64) : i64
    %96 = llvm.extractvalue %26[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %93[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.extractvalue %26[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.getelementptr %94[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %98, %99 : !llvm.ptr<i64>
    %100 = llvm.mlir.constant(1 : i64) : i64
    %101 = llvm.extractvalue %26[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %93[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %94[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(2 : i64) : i64
    %106 = llvm.extractvalue %26[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %93[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %26[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %94[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(3 : i64) : i64
    %111 = llvm.extractvalue %26[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %93[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %26[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %94[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(2 : i64) : i64
    %116 = llvm.getelementptr %30[%115] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %86, %116 : !llvm.ptr<ptr<i8>>
    %117 = llvm.call @omTensorListCreate(%30, %27, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %117 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<60 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<60 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<203 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<203 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

