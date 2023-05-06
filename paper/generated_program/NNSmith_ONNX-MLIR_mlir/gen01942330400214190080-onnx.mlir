module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v5_0", "v1_0", "v2_0"]} {
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
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(1 : i64) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %17 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.insertvalue %16, %17[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.constant(4 : index) : i64
    %23 = llvm.insertvalue %22, %21[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.insertvalue %24, %23[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %27 = llvm.bitcast %26 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %28 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %29 = llvm.insertvalue %27, %28[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %35 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %36 = llvm.insertvalue %34, %35[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %34, %36[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(4 : index) : i64
    %41 = llvm.insertvalue %40, %39[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.insertvalue %42, %41[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.null : !llvm.ptr<i1>
    %50 = llvm.getelementptr %49[%44] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %51 = llvm.ptrtoint %50 : !llvm.ptr<i1> to i64
    %52 = llvm.mlir.constant(16 : index) : i64
    %53 = llvm.add %51, %52  : i64
    %54 = llvm.call @malloc(%53) : (i64) -> !llvm.ptr<i8>
    %55 = llvm.bitcast %54 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %56 = llvm.ptrtoint %55 : !llvm.ptr<i1> to i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.sub %52, %57  : i64
    %59 = llvm.add %56, %58  : i64
    %60 = llvm.urem %59, %52  : i64
    %61 = llvm.sub %59, %60  : i64
    %62 = llvm.inttoptr %61 : i64 to !llvm.ptr<i1>
    %63 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %64 = llvm.insertvalue %55, %63[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %44, %67[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %45, %68[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %46, %69[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %47, %70[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %45, %71[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %46, %72[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %47, %73[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %48, %74[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%76 : i64)
  ^bb1(%79: i64):  // 2 preds: ^bb0, ^bb11
    %80 = llvm.icmp "slt" %79, %77 : i64
    llvm.cond_br %80, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%81 : i64)
  ^bb3(%84: i64):  // 2 preds: ^bb2, ^bb10
    %85 = llvm.icmp "slt" %84, %82 : i64
    llvm.cond_br %85, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%86 : i64)
  ^bb5(%89: i64):  // 2 preds: ^bb4, ^bb9
    %90 = llvm.icmp "slt" %89, %87 : i64
    llvm.cond_br %90, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%91 : i64)
  ^bb7(%94: i64):  // 2 preds: ^bb6, ^bb8
    %95 = llvm.icmp "slt" %94, %92 : i64
    llvm.cond_br %95, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %96 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.add %79, %84  : i64
    %98 = llvm.add %97, %89  : i64
    %99 = llvm.add %98, %94  : i64
    %100 = llvm.getelementptr %96[%99] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %101 = llvm.load %100 : !llvm.ptr<i32>
    %102 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.add %79, %84  : i64
    %104 = llvm.add %103, %89  : i64
    %105 = llvm.add %104, %94  : i64
    %106 = llvm.getelementptr %102[%105] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %107 = llvm.load %106 : !llvm.ptr<i32>
    %108 = llvm.icmp "slt" %101, %107 : i32
    %109 = llvm.extractvalue %75[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.add %79, %84  : i64
    %111 = llvm.add %110, %89  : i64
    %112 = llvm.add %111, %94  : i64
    %113 = llvm.getelementptr %109[%112] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %108, %113 : !llvm.ptr<i1>
    %114 = llvm.add %94, %93  : i64
    llvm.br ^bb7(%114 : i64)
  ^bb9:  // pred: ^bb7
    %115 = llvm.add %89, %88  : i64
    llvm.br ^bb5(%115 : i64)
  ^bb10:  // pred: ^bb5
    %116 = llvm.add %84, %83  : i64
    llvm.br ^bb3(%116 : i64)
  ^bb11:  // pred: ^bb3
    %117 = llvm.add %79, %78  : i64
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
    %170 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.add %153, %158  : i64
    %172 = llvm.add %171, %163  : i64
    %173 = llvm.add %172, %168  : i64
    %174 = llvm.getelementptr %170[%173] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %175 = llvm.load %174 : !llvm.ptr<i32>
    %176 = llvm.mlir.constant(false) : i1
    %177 = "llvm.intr.abs"(%175, %176) : (i32, i1) -> i32
    %178 = llvm.extractvalue %149[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.add %153, %158  : i64
    %180 = llvm.add %179, %163  : i64
    %181 = llvm.add %180, %168  : i64
    %182 = llvm.getelementptr %178[%181] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %177, %182 : !llvm.ptr<i32>
    %183 = llvm.add %168, %167  : i64
    llvm.br ^bb19(%183 : i64)
  ^bb21:  // pred: ^bb19
    %184 = llvm.add %163, %162  : i64
    llvm.br ^bb17(%184 : i64)
  ^bb22:  // pred: ^bb17
    %185 = llvm.add %158, %157  : i64
    llvm.br ^bb15(%185 : i64)
  ^bb23:  // pred: ^bb15
    %186 = llvm.add %153, %152  : i64
    llvm.br ^bb13(%186 : i64)
  ^bb24:  // pred: ^bb13
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.null : !llvm.ptr<i64>
    %193 = llvm.getelementptr %192[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %194 = llvm.ptrtoint %193 : !llvm.ptr<i64> to i64
    %195 = llvm.mlir.constant(16 : index) : i64
    %196 = llvm.add %194, %195  : i64
    %197 = llvm.call @malloc(%196) : (i64) -> !llvm.ptr<i8>
    %198 = llvm.bitcast %197 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %199 = llvm.ptrtoint %198 : !llvm.ptr<i64> to i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.sub %195, %200  : i64
    %202 = llvm.add %199, %201  : i64
    %203 = llvm.urem %202, %195  : i64
    %204 = llvm.sub %202, %203  : i64
    %205 = llvm.inttoptr %204 : i64 to !llvm.ptr<i64>
    %206 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %207 = llvm.insertvalue %198, %206[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.insertvalue %205, %207[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.insertvalue %209, %208[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.insertvalue %187, %210[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.insertvalue %188, %211[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %189, %212[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %190, %213[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.insertvalue %188, %214[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %189, %215[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.insertvalue %190, %216[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %191, %217[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%219 : i64)
  ^bb25(%222: i64):  // 2 preds: ^bb24, ^bb35
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%224 : i64)
  ^bb27(%227: i64):  // 2 preds: ^bb26, ^bb34
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%229 : i64)
  ^bb29(%232: i64):  // 2 preds: ^bb28, ^bb33
    %233 = llvm.icmp "slt" %232, %230 : i64
    llvm.cond_br %233, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%234 : i64)
  ^bb31(%237: i64):  // 2 preds: ^bb30, ^bb32
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %239 = llvm.extractvalue %149[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.add %222, %227  : i64
    %241 = llvm.add %240, %232  : i64
    %242 = llvm.add %241, %237  : i64
    %243 = llvm.getelementptr %239[%242] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %244 = llvm.load %243 : !llvm.ptr<i32>
    %245 = llvm.sext %244 : i32 to i64
    %246 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.add %222, %227  : i64
    %248 = llvm.add %247, %232  : i64
    %249 = llvm.add %248, %237  : i64
    %250 = llvm.getelementptr %246[%249] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %245, %250 : !llvm.ptr<i64>
    %251 = llvm.add %237, %236  : i64
    llvm.br ^bb31(%251 : i64)
  ^bb33:  // pred: ^bb31
    %252 = llvm.add %232, %231  : i64
    llvm.br ^bb29(%252 : i64)
  ^bb34:  // pred: ^bb29
    %253 = llvm.add %227, %226  : i64
    llvm.br ^bb27(%253 : i64)
  ^bb35:  // pred: ^bb27
    %254 = llvm.add %222, %221  : i64
    llvm.br ^bb25(%254 : i64)
  ^bb36:  // pred: ^bb25
    %255 = llvm.mlir.constant(4 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.null : !llvm.ptr<i64>
    %258 = llvm.getelementptr %257[%255] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %259 = llvm.ptrtoint %258 : !llvm.ptr<i64> to i64
    %260 = llvm.mlir.constant(16 : index) : i64
    %261 = llvm.add %259, %260  : i64
    %262 = llvm.call @malloc(%261) : (i64) -> !llvm.ptr<i8>
    %263 = llvm.bitcast %262 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %264 = llvm.ptrtoint %263 : !llvm.ptr<i64> to i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.sub %260, %265  : i64
    %267 = llvm.add %264, %266  : i64
    %268 = llvm.urem %267, %260  : i64
    %269 = llvm.sub %267, %268  : i64
    %270 = llvm.inttoptr %269 : i64 to !llvm.ptr<i64>
    %271 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %272 = llvm.insertvalue %263, %271[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %273 = llvm.insertvalue %270, %272[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %274 = llvm.mlir.constant(0 : index) : i64
    %275 = llvm.insertvalue %274, %273[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %276 = llvm.insertvalue %255, %275[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %277 = llvm.insertvalue %256, %276[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(4 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%278 : i64)
  ^bb37(%281: i64):  // 2 preds: ^bb36, ^bb38
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %283 = llvm.extractvalue %277[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %284 = llvm.getelementptr %283[%281] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %284 : !llvm.ptr<i64>
    %285 = llvm.add %281, %280  : i64
    llvm.br ^bb37(%285 : i64)
  ^bb39:  // pred: ^bb37
    %286 = llvm.mlir.constant(4 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    %288 = llvm.mlir.null : !llvm.ptr<i64>
    %289 = llvm.getelementptr %288[%286] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %290 = llvm.ptrtoint %289 : !llvm.ptr<i64> to i64
    %291 = llvm.mlir.constant(16 : index) : i64
    %292 = llvm.add %290, %291  : i64
    %293 = llvm.call @malloc(%292) : (i64) -> !llvm.ptr<i8>
    %294 = llvm.bitcast %293 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %295 = llvm.ptrtoint %294 : !llvm.ptr<i64> to i64
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.sub %291, %296  : i64
    %298 = llvm.add %295, %297  : i64
    %299 = llvm.urem %298, %291  : i64
    %300 = llvm.sub %298, %299  : i64
    %301 = llvm.inttoptr %300 : i64 to !llvm.ptr<i64>
    %302 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %303 = llvm.insertvalue %294, %302[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.insertvalue %301, %303[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.insertvalue %305, %304[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.insertvalue %286, %306[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %308 = llvm.insertvalue %287, %307[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %309 = llvm.mlir.constant(0 : index) : i64
    %310 = llvm.mlir.constant(4 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%309 : i64)
  ^bb40(%312: i64):  // 2 preds: ^bb39, ^bb41
    %313 = llvm.icmp "slt" %312, %310 : i64
    llvm.cond_br %313, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %314 = llvm.extractvalue %277[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %315 = llvm.getelementptr %314[%312] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %316 = llvm.load %315 : !llvm.ptr<i64>
    %317 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %318 = llvm.load %317 : !llvm.ptr<i64>
    %319 = llvm.mul %316, %318  : i64
    %320 = llvm.extractvalue %308[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %321 = llvm.getelementptr %320[%312] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %319, %321 : !llvm.ptr<i64>
    %322 = llvm.add %312, %311  : i64
    llvm.br ^bb40(%322 : i64)
  ^bb42:  // pred: ^bb40
    %323 = llvm.mlir.constant(4 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.null : !llvm.ptr<i1>
    %326 = llvm.getelementptr %325[%323] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %327 = llvm.ptrtoint %326 : !llvm.ptr<i1> to i64
    %328 = llvm.mlir.constant(16 : index) : i64
    %329 = llvm.add %327, %328  : i64
    %330 = llvm.call @malloc(%329) : (i64) -> !llvm.ptr<i8>
    %331 = llvm.bitcast %330 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %332 = llvm.ptrtoint %331 : !llvm.ptr<i1> to i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.sub %328, %333  : i64
    %335 = llvm.add %332, %334  : i64
    %336 = llvm.urem %335, %328  : i64
    %337 = llvm.sub %335, %336  : i64
    %338 = llvm.inttoptr %337 : i64 to !llvm.ptr<i1>
    %339 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %340 = llvm.insertvalue %331, %339[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.insertvalue %338, %340[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.insertvalue %342, %341[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %344 = llvm.insertvalue %323, %343[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %345 = llvm.insertvalue %324, %344[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.mlir.constant(4 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%346 : i64)
  ^bb43(%349: i64):  // 2 preds: ^bb42, ^bb44
    %350 = llvm.icmp "slt" %349, %347 : i64
    llvm.cond_br %350, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %351 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %352 = llvm.getelementptr %351[%349] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %353 = llvm.load %352 : !llvm.ptr<i64>
    %354 = llvm.extractvalue %308[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %355 = llvm.getelementptr %354[%349] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %356 = llvm.load %355 : !llvm.ptr<i64>
    %357 = llvm.icmp "eq" %353, %356 : i64
    %358 = llvm.extractvalue %345[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %359 = llvm.getelementptr %358[%349] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %357, %359 : !llvm.ptr<i1>
    %360 = llvm.add %349, %348  : i64
    llvm.br ^bb43(%360 : i64)
  ^bb45:  // pred: ^bb43
    %361 = llvm.mlir.constant(4 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.mlir.null : !llvm.ptr<i64>
    %364 = llvm.getelementptr %363[%361] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %365 = llvm.ptrtoint %364 : !llvm.ptr<i64> to i64
    %366 = llvm.mlir.constant(16 : index) : i64
    %367 = llvm.add %365, %366  : i64
    %368 = llvm.call @malloc(%367) : (i64) -> !llvm.ptr<i8>
    %369 = llvm.bitcast %368 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %370 = llvm.ptrtoint %369 : !llvm.ptr<i64> to i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.sub %366, %371  : i64
    %373 = llvm.add %370, %372  : i64
    %374 = llvm.urem %373, %366  : i64
    %375 = llvm.sub %373, %374  : i64
    %376 = llvm.inttoptr %375 : i64 to !llvm.ptr<i64>
    %377 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %378 = llvm.insertvalue %369, %377[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %379 = llvm.insertvalue %376, %378[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %380 = llvm.mlir.constant(0 : index) : i64
    %381 = llvm.insertvalue %380, %379[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %382 = llvm.insertvalue %361, %381[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %383 = llvm.insertvalue %362, %382[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %384 = llvm.mlir.constant(0 : index) : i64
    %385 = llvm.mlir.constant(4 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%384 : i64)
  ^bb46(%387: i64):  // 2 preds: ^bb45, ^bb47
    %388 = llvm.icmp "slt" %387, %385 : i64
    llvm.cond_br %388, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %389 = llvm.extractvalue %345[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %390 = llvm.getelementptr %389[%387] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %391 = llvm.load %390 : !llvm.ptr<i1>
    %392 = llvm.extractvalue %277[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %393 = llvm.getelementptr %392[%387] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %394 = llvm.load %393 : !llvm.ptr<i64>
    %395 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %396 = llvm.getelementptr %395[%387] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %397 = llvm.load %396 : !llvm.ptr<i64>
    %398 = llvm.select %391, %394, %397 : i1, i64
    %399 = llvm.extractvalue %383[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %400 = llvm.getelementptr %399[%387] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %398, %400 : !llvm.ptr<i64>
    %401 = llvm.add %387, %386  : i64
    llvm.br ^bb46(%401 : i64)
  ^bb48:  // pred: ^bb46
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.mlir.null : !llvm.ptr<i64>
    %408 = llvm.getelementptr %407[%402] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %409 = llvm.ptrtoint %408 : !llvm.ptr<i64> to i64
    %410 = llvm.mlir.constant(16 : index) : i64
    %411 = llvm.add %409, %410  : i64
    %412 = llvm.call @malloc(%411) : (i64) -> !llvm.ptr<i8>
    %413 = llvm.bitcast %412 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %414 = llvm.ptrtoint %413 : !llvm.ptr<i64> to i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.sub %410, %415  : i64
    %417 = llvm.add %414, %416  : i64
    %418 = llvm.urem %417, %410  : i64
    %419 = llvm.sub %417, %418  : i64
    %420 = llvm.inttoptr %419 : i64 to !llvm.ptr<i64>
    %421 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %422 = llvm.insertvalue %413, %421[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.insertvalue %420, %422[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.mlir.constant(0 : index) : i64
    %425 = llvm.insertvalue %424, %423[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.insertvalue %402, %425[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.insertvalue %403, %426[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.insertvalue %404, %427[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.insertvalue %405, %428[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.insertvalue %403, %429[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.insertvalue %404, %430[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.insertvalue %405, %431[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.insertvalue %406, %432[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.mlir.constant(0 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%434 : i64)
  ^bb49(%437: i64):  // 2 preds: ^bb48, ^bb59
    %438 = llvm.icmp "slt" %437, %435 : i64
    llvm.cond_br %438, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %439 = llvm.mlir.constant(0 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%439 : i64)
  ^bb51(%442: i64):  // 2 preds: ^bb50, ^bb58
    %443 = llvm.icmp "slt" %442, %440 : i64
    llvm.cond_br %443, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %444 = llvm.mlir.constant(0 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%444 : i64)
  ^bb53(%447: i64):  // 2 preds: ^bb52, ^bb57
    %448 = llvm.icmp "slt" %447, %445 : i64
    llvm.cond_br %448, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %449 = llvm.mlir.constant(0 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%449 : i64)
  ^bb55(%452: i64):  // 2 preds: ^bb54, ^bb56
    %453 = llvm.icmp "slt" %452, %450 : i64
    llvm.cond_br %453, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %454 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.add %14, %14  : i64
    %456 = llvm.add %455, %14  : i64
    %457 = llvm.add %456, %14  : i64
    %458 = llvm.getelementptr %454[%457] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %459 = llvm.load %458 : !llvm.ptr<i64>
    %460 = llvm.extractvalue %433[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.add %437, %442  : i64
    %462 = llvm.add %461, %447  : i64
    %463 = llvm.add %462, %452  : i64
    %464 = llvm.getelementptr %460[%463] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %459, %464 : !llvm.ptr<i64>
    %465 = llvm.add %452, %451  : i64
    llvm.br ^bb55(%465 : i64)
  ^bb57:  // pred: ^bb55
    %466 = llvm.add %447, %446  : i64
    llvm.br ^bb53(%466 : i64)
  ^bb58:  // pred: ^bb53
    %467 = llvm.add %442, %441  : i64
    llvm.br ^bb51(%467 : i64)
  ^bb59:  // pred: ^bb51
    %468 = llvm.add %437, %436  : i64
    llvm.br ^bb49(%468 : i64)
  ^bb60:  // pred: ^bb49
    %469 = llvm.mlir.constant(1 : index) : i64
    %470 = llvm.mlir.constant(1 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.mlir.null : !llvm.ptr<i32>
    %475 = llvm.getelementptr %474[%469] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %476 = llvm.ptrtoint %475 : !llvm.ptr<i32> to i64
    %477 = llvm.mlir.constant(16 : index) : i64
    %478 = llvm.add %476, %477  : i64
    %479 = llvm.call @malloc(%478) : (i64) -> !llvm.ptr<i8>
    %480 = llvm.bitcast %479 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %481 = llvm.ptrtoint %480 : !llvm.ptr<i32> to i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.sub %477, %482  : i64
    %484 = llvm.add %481, %483  : i64
    %485 = llvm.urem %484, %477  : i64
    %486 = llvm.sub %484, %485  : i64
    %487 = llvm.inttoptr %486 : i64 to !llvm.ptr<i32>
    %488 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %489 = llvm.insertvalue %480, %488[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.insertvalue %487, %489[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %491 = llvm.mlir.constant(0 : index) : i64
    %492 = llvm.insertvalue %491, %490[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.insertvalue %469, %492[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.insertvalue %470, %493[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %495 = llvm.insertvalue %471, %494[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %496 = llvm.insertvalue %472, %495[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.insertvalue %470, %496[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.insertvalue %471, %497[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.insertvalue %472, %498[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %500 = llvm.insertvalue %473, %499[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %501 = llvm.mlir.constant(0 : index) : i64
    %502 = llvm.mlir.constant(1 : index) : i64
    %503 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%501 : i64)
  ^bb61(%504: i64):  // 2 preds: ^bb60, ^bb71
    %505 = llvm.icmp "slt" %504, %502 : i64
    llvm.cond_br %505, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %506 = llvm.mlir.constant(0 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    %508 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%506 : i64)
  ^bb63(%509: i64):  // 2 preds: ^bb62, ^bb70
    %510 = llvm.icmp "slt" %509, %507 : i64
    llvm.cond_br %510, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %511 = llvm.mlir.constant(0 : index) : i64
    %512 = llvm.mlir.constant(1 : index) : i64
    %513 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%511 : i64)
  ^bb65(%514: i64):  // 2 preds: ^bb64, ^bb69
    %515 = llvm.icmp "slt" %514, %512 : i64
    llvm.cond_br %515, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %516 = llvm.mlir.constant(0 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%516 : i64)
  ^bb67(%519: i64):  // 2 preds: ^bb66, ^bb68
    %520 = llvm.icmp "slt" %519, %517 : i64
    llvm.cond_br %520, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %521 = llvm.extractvalue %149[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.add %504, %509  : i64
    %523 = llvm.add %522, %514  : i64
    %524 = llvm.add %523, %519  : i64
    %525 = llvm.getelementptr %521[%524] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %526 = llvm.load %525 : !llvm.ptr<i32>
    %527 = llvm.sub %12, %526  : i32
    %528 = llvm.extractvalue %500[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %529 = llvm.add %504, %509  : i64
    %530 = llvm.add %529, %514  : i64
    %531 = llvm.add %530, %519  : i64
    %532 = llvm.getelementptr %528[%531] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %527, %532 : !llvm.ptr<i32>
    %533 = llvm.add %519, %518  : i64
    llvm.br ^bb67(%533 : i64)
  ^bb69:  // pred: ^bb67
    %534 = llvm.add %514, %513  : i64
    llvm.br ^bb65(%534 : i64)
  ^bb70:  // pred: ^bb65
    %535 = llvm.add %509, %508  : i64
    llvm.br ^bb63(%535 : i64)
  ^bb71:  // pred: ^bb63
    %536 = llvm.add %504, %503  : i64
    llvm.br ^bb61(%536 : i64)
  ^bb72:  // pred: ^bb61
    %537 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %538 = llvm.insertvalue %75, %537[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %539 = llvm.insertvalue %433, %538[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %540 = llvm.insertvalue %500, %539[2] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %540 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v5_0", "v1_0", "v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %61[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %51[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(4 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(3 : i64) : i64
    %110 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %92[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %93[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.getelementptr %51[%114] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %115 : !llvm.ptr<ptr<i8>>
    %116 = llvm.mlir.constant(4 : i64) : i64
    %117 = llvm.call @omTensorCreateUntyped(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.bitcast %119 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %121 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.bitcast %121 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%117, %118, %120, %122) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %123 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%117, %123) : (!llvm.ptr<i8>, i64) -> ()
    %124 = llvm.call @omTensorGetShape(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %125 = llvm.call @omTensorGetStrides(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.mlir.constant(0 : i64) : i64
    %127 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %124[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %125[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %124[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %125[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %124[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %125[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(3 : i64) : i64
    %142 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %124[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %125[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.mlir.constant(2 : i64) : i64
    %147 = llvm.getelementptr %51[%146] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %117, %147 : !llvm.ptr<ptr<i8>>
    %148 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<210 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<210 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

