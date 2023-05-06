module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v2_0", "v1_0"]} {
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
    %12 = llvm.mlir.constant(1 : i64) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %21 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %23 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %24 = llvm.insertvalue %22, %23[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %25 = llvm.insertvalue %22, %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.insertvalue %26, %25[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.mlir.constant(4 : index) : i64
    %36 = llvm.insertvalue %35, %34[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.insertvalue %37, %36[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i64>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %42 = llvm.insertvalue %40, %41[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.insertvalue %44, %43[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %46 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
    %47 = llvm.bitcast %46 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.insertvalue %47, %48[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.insertvalue %47, %49[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.insertvalue %51, %50[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(4 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.mlir.null : !llvm.ptr<i32>
    %63 = llvm.getelementptr %62[%57] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %64 = llvm.ptrtoint %63 : !llvm.ptr<i32> to i64
    %65 = llvm.mlir.constant(16 : index) : i64
    %66 = llvm.add %64, %65  : i64
    %67 = llvm.call @malloc(%66) : (i64) -> !llvm.ptr<i8>
    %68 = llvm.bitcast %67 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %69 = llvm.ptrtoint %68 : !llvm.ptr<i32> to i64
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.sub %65, %70  : i64
    %72 = llvm.add %69, %71  : i64
    %73 = llvm.urem %72, %65  : i64
    %74 = llvm.sub %72, %73  : i64
    %75 = llvm.inttoptr %74 : i64 to !llvm.ptr<i32>
    %76 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %77 = llvm.insertvalue %68, %76[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %75, %77[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(0 : index) : i64
    %80 = llvm.insertvalue %79, %78[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.insertvalue %57, %80[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.insertvalue %58, %81[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.insertvalue %59, %82[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %60, %83[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.insertvalue %58, %84[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.insertvalue %59, %85[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.insertvalue %60, %86[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.insertvalue %61, %87[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%89 : i64)
  ^bb1(%92: i64):  // 2 preds: ^bb0, ^bb11
    %93 = llvm.icmp "slt" %92, %90 : i64
    llvm.cond_br %93, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %94 = llvm.mlir.constant(0 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%94 : i64)
  ^bb3(%97: i64):  // 2 preds: ^bb2, ^bb10
    %98 = llvm.icmp "slt" %97, %95 : i64
    llvm.cond_br %98, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%99 : i64)
  ^bb5(%102: i64):  // 2 preds: ^bb4, ^bb9
    %103 = llvm.icmp "slt" %102, %100 : i64
    llvm.cond_br %103, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%104 : i64)
  ^bb7(%107: i64):  // 2 preds: ^bb6, ^bb8
    %108 = llvm.icmp "slt" %107, %105 : i64
    llvm.cond_br %108, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %109 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.add %92, %97  : i64
    %111 = llvm.add %110, %102  : i64
    %112 = llvm.add %111, %107  : i64
    %113 = llvm.getelementptr %109[%112] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %114 = llvm.load %113 : !llvm.ptr<i32>
    %115 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %116 = llvm.load %115 : !llvm.ptr<i32>
    %117 = llvm.icmp "slt" %114, %116 : i32
    %118 = llvm.select %117, %116, %114 : i1, i32
    %119 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %120 = llvm.load %119 : !llvm.ptr<i32>
    %121 = llvm.icmp "slt" %118, %120 : i32
    %122 = llvm.select %121, %118, %120 : i1, i32
    %123 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.add %92, %97  : i64
    %125 = llvm.add %124, %102  : i64
    %126 = llvm.add %125, %107  : i64
    %127 = llvm.getelementptr %123[%126] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %122, %127 : !llvm.ptr<i32>
    %128 = llvm.add %107, %106  : i64
    llvm.br ^bb7(%128 : i64)
  ^bb9:  // pred: ^bb7
    %129 = llvm.add %102, %101  : i64
    llvm.br ^bb5(%129 : i64)
  ^bb10:  // pred: ^bb5
    %130 = llvm.add %97, %96  : i64
    llvm.br ^bb3(%130 : i64)
  ^bb11:  // pred: ^bb3
    %131 = llvm.add %92, %91  : i64
    llvm.br ^bb1(%131 : i64)
  ^bb12:  // pred: ^bb1
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.mlir.null : !llvm.ptr<i32>
    %138 = llvm.getelementptr %137[%132] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %156 = llvm.insertvalue %132, %155[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %133, %156[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %134, %157[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %135, %158[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %133, %159[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.insertvalue %134, %160[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %135, %161[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.insertvalue %136, %162[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%164 : i64)
  ^bb13(%167: i64):  // 2 preds: ^bb12, ^bb23
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%169 : i64)
  ^bb15(%172: i64):  // 2 preds: ^bb14, ^bb22
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%174 : i64)
  ^bb17(%177: i64):  // 2 preds: ^bb16, ^bb21
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%179 : i64)
  ^bb19(%182: i64):  // 2 preds: ^bb18, ^bb20
    %183 = llvm.icmp "slt" %182, %180 : i64
    llvm.cond_br %183, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %184 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.add %167, %172  : i64
    %186 = llvm.add %185, %177  : i64
    %187 = llvm.add %186, %182  : i64
    %188 = llvm.getelementptr %184[%187] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %189 = llvm.load %188 : !llvm.ptr<i32>
    %190 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.add %167, %172  : i64
    %192 = llvm.add %191, %177  : i64
    %193 = llvm.add %192, %182  : i64
    %194 = llvm.getelementptr %190[%193] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %189, %194 : !llvm.ptr<i32>
    %195 = llvm.add %182, %181  : i64
    llvm.br ^bb19(%195 : i64)
  ^bb21:  // pred: ^bb19
    %196 = llvm.add %177, %176  : i64
    llvm.br ^bb17(%196 : i64)
  ^bb22:  // pred: ^bb17
    %197 = llvm.add %172, %171  : i64
    llvm.br ^bb15(%197 : i64)
  ^bb23:  // pred: ^bb15
    %198 = llvm.add %167, %166  : i64
    llvm.br ^bb13(%198 : i64)
  ^bb24:  // pred: ^bb13
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.null : !llvm.ptr<i32>
    %205 = llvm.getelementptr %204[%199] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %206 = llvm.ptrtoint %205 : !llvm.ptr<i32> to i64
    %207 = llvm.mlir.constant(16 : index) : i64
    %208 = llvm.add %206, %207  : i64
    %209 = llvm.call @malloc(%208) : (i64) -> !llvm.ptr<i8>
    %210 = llvm.bitcast %209 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %211 = llvm.ptrtoint %210 : !llvm.ptr<i32> to i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.sub %207, %212  : i64
    %214 = llvm.add %211, %213  : i64
    %215 = llvm.urem %214, %207  : i64
    %216 = llvm.sub %214, %215  : i64
    %217 = llvm.inttoptr %216 : i64 to !llvm.ptr<i32>
    %218 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %219 = llvm.insertvalue %210, %218[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.insertvalue %217, %219[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.mlir.constant(0 : index) : i64
    %222 = llvm.insertvalue %221, %220[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.insertvalue %199, %222[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.insertvalue %200, %223[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.insertvalue %201, %224[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.insertvalue %202, %225[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.insertvalue %200, %226[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.insertvalue %201, %227[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.insertvalue %202, %228[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.insertvalue %203, %229[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%231 : i64)
  ^bb25(%234: i64):  // 2 preds: ^bb24, ^bb35
    %235 = llvm.icmp "slt" %234, %232 : i64
    llvm.cond_br %235, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%236 : i64)
  ^bb27(%239: i64):  // 2 preds: ^bb26, ^bb34
    %240 = llvm.icmp "slt" %239, %237 : i64
    llvm.cond_br %240, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%241 : i64)
  ^bb29(%244: i64):  // 2 preds: ^bb28, ^bb33
    %245 = llvm.icmp "slt" %244, %242 : i64
    llvm.cond_br %245, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%246 : i64)
  ^bb31(%249: i64):  // 2 preds: ^bb30, ^bb32
    %250 = llvm.icmp "slt" %249, %247 : i64
    llvm.cond_br %250, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %251 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.add %234, %239  : i64
    %253 = llvm.add %252, %244  : i64
    %254 = llvm.add %253, %249  : i64
    %255 = llvm.getelementptr %251[%254] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %256 = llvm.load %255 : !llvm.ptr<i32>
    %257 = llvm.extractvalue %230[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.add %234, %239  : i64
    %259 = llvm.add %258, %244  : i64
    %260 = llvm.add %259, %249  : i64
    %261 = llvm.getelementptr %257[%260] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %256, %261 : !llvm.ptr<i32>
    %262 = llvm.add %249, %248  : i64
    llvm.br ^bb31(%262 : i64)
  ^bb33:  // pred: ^bb31
    %263 = llvm.add %244, %243  : i64
    llvm.br ^bb29(%263 : i64)
  ^bb34:  // pred: ^bb29
    %264 = llvm.add %239, %238  : i64
    llvm.br ^bb27(%264 : i64)
  ^bb35:  // pred: ^bb27
    %265 = llvm.add %234, %233  : i64
    llvm.br ^bb25(%265 : i64)
  ^bb36:  // pred: ^bb25
    %266 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %267 = llvm.extractvalue %230[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.extractvalue %230[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.insertvalue %267, %266[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.insertvalue %268, %269[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.mlir.constant(0 : index) : i64
    %272 = llvm.insertvalue %271, %270[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.insertvalue %273, %272[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.insertvalue %275, %274[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %277 = llvm.mlir.constant(4 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.mlir.null : !llvm.ptr<i64>
    %280 = llvm.getelementptr %279[%277] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %281 = llvm.ptrtoint %280 : !llvm.ptr<i64> to i64
    %282 = llvm.mlir.constant(16 : index) : i64
    %283 = llvm.add %281, %282  : i64
    %284 = llvm.call @malloc(%283) : (i64) -> !llvm.ptr<i8>
    %285 = llvm.bitcast %284 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %286 = llvm.ptrtoint %285 : !llvm.ptr<i64> to i64
    %287 = llvm.mlir.constant(1 : index) : i64
    %288 = llvm.sub %282, %287  : i64
    %289 = llvm.add %286, %288  : i64
    %290 = llvm.urem %289, %282  : i64
    %291 = llvm.sub %289, %290  : i64
    %292 = llvm.inttoptr %291 : i64 to !llvm.ptr<i64>
    %293 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %294 = llvm.insertvalue %285, %293[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %295 = llvm.insertvalue %292, %294[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %296 = llvm.mlir.constant(0 : index) : i64
    %297 = llvm.insertvalue %296, %295[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %298 = llvm.insertvalue %277, %297[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %299 = llvm.insertvalue %278, %298[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %300 = llvm.mlir.constant(0 : index) : i64
    %301 = llvm.mlir.constant(4 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%300 : i64)
  ^bb37(%303: i64):  // 2 preds: ^bb36, ^bb38
    %304 = llvm.icmp "slt" %303, %301 : i64
    llvm.cond_br %304, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %305 = llvm.extractvalue %299[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.getelementptr %305[%303] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %306 : !llvm.ptr<i64>
    %307 = llvm.add %303, %302  : i64
    llvm.br ^bb37(%307 : i64)
  ^bb39:  // pred: ^bb37
    %308 = llvm.mlir.constant(4 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.mlir.null : !llvm.ptr<i64>
    %311 = llvm.getelementptr %310[%308] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %312 = llvm.ptrtoint %311 : !llvm.ptr<i64> to i64
    %313 = llvm.mlir.constant(16 : index) : i64
    %314 = llvm.add %312, %313  : i64
    %315 = llvm.call @malloc(%314) : (i64) -> !llvm.ptr<i8>
    %316 = llvm.bitcast %315 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %317 = llvm.ptrtoint %316 : !llvm.ptr<i64> to i64
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.sub %313, %318  : i64
    %320 = llvm.add %317, %319  : i64
    %321 = llvm.urem %320, %313  : i64
    %322 = llvm.sub %320, %321  : i64
    %323 = llvm.inttoptr %322 : i64 to !llvm.ptr<i64>
    %324 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %325 = llvm.insertvalue %316, %324[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %326 = llvm.insertvalue %323, %325[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %327 = llvm.mlir.constant(0 : index) : i64
    %328 = llvm.insertvalue %327, %326[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %329 = llvm.insertvalue %308, %328[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %330 = llvm.insertvalue %309, %329[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %331 = llvm.mlir.constant(0 : index) : i64
    %332 = llvm.mlir.constant(4 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%331 : i64)
  ^bb40(%334: i64):  // 2 preds: ^bb39, ^bb41
    %335 = llvm.icmp "slt" %334, %332 : i64
    llvm.cond_br %335, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %336 = llvm.extractvalue %299[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.getelementptr %336[%334] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %338 = llvm.load %337 : !llvm.ptr<i64>
    %339 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %340 = llvm.load %339 : !llvm.ptr<i64>
    %341 = llvm.mul %338, %340  : i64
    %342 = llvm.extractvalue %330[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %343 = llvm.getelementptr %342[%334] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %341, %343 : !llvm.ptr<i64>
    %344 = llvm.add %334, %333  : i64
    llvm.br ^bb40(%344 : i64)
  ^bb42:  // pred: ^bb40
    %345 = llvm.mlir.constant(4 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.mlir.null : !llvm.ptr<i1>
    %348 = llvm.getelementptr %347[%345] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %349 = llvm.ptrtoint %348 : !llvm.ptr<i1> to i64
    %350 = llvm.mlir.constant(16 : index) : i64
    %351 = llvm.add %349, %350  : i64
    %352 = llvm.call @malloc(%351) : (i64) -> !llvm.ptr<i8>
    %353 = llvm.bitcast %352 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %354 = llvm.ptrtoint %353 : !llvm.ptr<i1> to i64
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.sub %350, %355  : i64
    %357 = llvm.add %354, %356  : i64
    %358 = llvm.urem %357, %350  : i64
    %359 = llvm.sub %357, %358  : i64
    %360 = llvm.inttoptr %359 : i64 to !llvm.ptr<i1>
    %361 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %362 = llvm.insertvalue %353, %361[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %363 = llvm.insertvalue %360, %362[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.insertvalue %364, %363[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %366 = llvm.insertvalue %345, %365[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %367 = llvm.insertvalue %346, %366[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.mlir.constant(4 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%368 : i64)
  ^bb43(%371: i64):  // 2 preds: ^bb42, ^bb44
    %372 = llvm.icmp "slt" %371, %369 : i64
    llvm.cond_br %372, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %373 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %374 = llvm.getelementptr %373[%371] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %375 = llvm.load %374 : !llvm.ptr<i64>
    %376 = llvm.extractvalue %330[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %377 = llvm.getelementptr %376[%371] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %378 = llvm.load %377 : !llvm.ptr<i64>
    %379 = llvm.icmp "eq" %375, %378 : i64
    %380 = llvm.extractvalue %367[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %381 = llvm.getelementptr %380[%371] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %379, %381 : !llvm.ptr<i1>
    %382 = llvm.add %371, %370  : i64
    llvm.br ^bb43(%382 : i64)
  ^bb45:  // pred: ^bb43
    %383 = llvm.mlir.constant(4 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.mlir.null : !llvm.ptr<i64>
    %386 = llvm.getelementptr %385[%383] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %387 = llvm.ptrtoint %386 : !llvm.ptr<i64> to i64
    %388 = llvm.mlir.constant(16 : index) : i64
    %389 = llvm.add %387, %388  : i64
    %390 = llvm.call @malloc(%389) : (i64) -> !llvm.ptr<i8>
    %391 = llvm.bitcast %390 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %392 = llvm.ptrtoint %391 : !llvm.ptr<i64> to i64
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.sub %388, %393  : i64
    %395 = llvm.add %392, %394  : i64
    %396 = llvm.urem %395, %388  : i64
    %397 = llvm.sub %395, %396  : i64
    %398 = llvm.inttoptr %397 : i64 to !llvm.ptr<i64>
    %399 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %400 = llvm.insertvalue %391, %399[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %401 = llvm.insertvalue %398, %400[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.insertvalue %402, %401[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %404 = llvm.insertvalue %383, %403[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %405 = llvm.insertvalue %384, %404[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %406 = llvm.mlir.constant(0 : index) : i64
    %407 = llvm.mlir.constant(4 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%406 : i64)
  ^bb46(%409: i64):  // 2 preds: ^bb45, ^bb47
    %410 = llvm.icmp "slt" %409, %407 : i64
    llvm.cond_br %410, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %411 = llvm.extractvalue %367[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %412 = llvm.getelementptr %411[%409] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %413 = llvm.load %412 : !llvm.ptr<i1>
    %414 = llvm.extractvalue %299[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %415 = llvm.getelementptr %414[%409] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %416 = llvm.load %415 : !llvm.ptr<i64>
    %417 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %418 = llvm.getelementptr %417[%409] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %419 = llvm.load %418 : !llvm.ptr<i64>
    %420 = llvm.select %413, %416, %419 : i1, i64
    %421 = llvm.extractvalue %405[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %422 = llvm.getelementptr %421[%409] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %420, %422 : !llvm.ptr<i64>
    %423 = llvm.add %409, %408  : i64
    llvm.br ^bb46(%423 : i64)
  ^bb48:  // pred: ^bb46
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.mlir.constant(1 : index) : i64
    %429 = llvm.mlir.null : !llvm.ptr<i32>
    %430 = llvm.getelementptr %429[%424] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %448 = llvm.insertvalue %424, %447[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.insertvalue %425, %448[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.insertvalue %426, %449[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.insertvalue %427, %450[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %452 = llvm.insertvalue %425, %451[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.insertvalue %426, %452[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.insertvalue %427, %453[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.insertvalue %428, %454[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%456 : i64)
  ^bb49(%459: i64):  // 2 preds: ^bb48, ^bb59
    %460 = llvm.icmp "slt" %459, %457 : i64
    llvm.cond_br %460, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.mlir.constant(1 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%461 : i64)
  ^bb51(%464: i64):  // 2 preds: ^bb50, ^bb58
    %465 = llvm.icmp "slt" %464, %462 : i64
    llvm.cond_br %465, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %466 = llvm.mlir.constant(0 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%466 : i64)
  ^bb53(%469: i64):  // 2 preds: ^bb52, ^bb57
    %470 = llvm.icmp "slt" %469, %467 : i64
    llvm.cond_br %470, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %471 = llvm.mlir.constant(0 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%471 : i64)
  ^bb55(%474: i64):  // 2 preds: ^bb54, ^bb56
    %475 = llvm.icmp "slt" %474, %472 : i64
    llvm.cond_br %475, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %476 = llvm.extractvalue %230[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.add %13, %13  : i64
    %478 = llvm.add %477, %13  : i64
    %479 = llvm.add %478, %13  : i64
    %480 = llvm.getelementptr %476[%479] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %481 = llvm.load %480 : !llvm.ptr<i32>
    %482 = llvm.extractvalue %455[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %483 = llvm.add %459, %464  : i64
    %484 = llvm.add %483, %469  : i64
    %485 = llvm.add %484, %474  : i64
    %486 = llvm.getelementptr %482[%485] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %481, %486 : !llvm.ptr<i32>
    %487 = llvm.add %474, %473  : i64
    llvm.br ^bb55(%487 : i64)
  ^bb57:  // pred: ^bb55
    %488 = llvm.add %469, %468  : i64
    llvm.br ^bb53(%488 : i64)
  ^bb58:  // pred: ^bb53
    %489 = llvm.add %464, %463  : i64
    llvm.br ^bb51(%489 : i64)
  ^bb59:  // pred: ^bb51
    %490 = llvm.add %459, %458  : i64
    llvm.br ^bb49(%490 : i64)
  ^bb60:  // pred: ^bb49
    %491 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %492 = llvm.insertvalue %276, %491[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %493 = llvm.insertvalue %455, %492[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %493 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v2_0", "v1_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(0 : i64) : i64
    %67 = llvm.getelementptr %50[%66] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %67 : !llvm.ptr<ptr<i8>>
    %68 = llvm.mlir.constant(4 : i64) : i64
    %69 = llvm.call @omTensorCreateUntyped(%68) : (i64) -> !llvm.ptr<i8>
    %70 = llvm.mlir.constant(1 : i64) : i64
    %71 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.bitcast %71 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %73 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.bitcast %73 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%69, %70, %72, %74) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %75 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%69, %75) : (!llvm.ptr<i8>, i64) -> ()
    %76 = llvm.call @omTensorGetShape(%69) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %77 = llvm.call @omTensorGetStrides(%69) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %78 = llvm.mlir.constant(0 : i64) : i64
    %79 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %76[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %77[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.mlir.constant(1 : i64) : i64
    %84 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %76[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.getelementptr %77[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.mlir.constant(2 : i64) : i64
    %89 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %76[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %77[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(3 : i64) : i64
    %94 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %76[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %77[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.getelementptr %50[%98] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %69, %99 : !llvm.ptr<ptr<i8>>
    %100 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<129 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<129 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

