module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_7(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_6(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_5(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v2_0"]} {
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
    %12 = llvm.mlir.constant(0 : i64) : i64
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
    %44 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %45 = llvm.bitcast %44 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.insertvalue %45, %46[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(4 : index) : i64
    %52 = llvm.insertvalue %51, %50[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<1 x i64>>
    %56 = llvm.bitcast %55 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %57 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %58 = llvm.insertvalue %56, %57[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %59 = llvm.insertvalue %56, %58[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %62 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<4 x i64>>
    %63 = llvm.bitcast %62 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %64 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %65 = llvm.insertvalue %63, %64[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.mlir.constant(4 : index) : i64
    %70 = llvm.insertvalue %69, %68[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.insertvalue %71, %70[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.null : !llvm.ptr<i64>
    %79 = llvm.getelementptr %78[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.ptrtoint %79 : !llvm.ptr<i64> to i64
    %81 = llvm.mlir.constant(16 : index) : i64
    %82 = llvm.add %80, %81  : i64
    %83 = llvm.call @malloc(%82) : (i64) -> !llvm.ptr<i8>
    %84 = llvm.bitcast %83 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %85 = llvm.ptrtoint %84 : !llvm.ptr<i64> to i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.sub %81, %86  : i64
    %88 = llvm.add %85, %87  : i64
    %89 = llvm.urem %88, %81  : i64
    %90 = llvm.sub %88, %89  : i64
    %91 = llvm.inttoptr %90 : i64 to !llvm.ptr<i64>
    %92 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %93 = llvm.insertvalue %84, %92[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %91, %93[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.insertvalue %95, %94[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %73, %96[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %74, %97[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %75, %98[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %76, %99[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %74, %100[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %75, %101[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %76, %102[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %77, %103[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%105 : i64)
  ^bb1(%108: i64):  // 2 preds: ^bb0, ^bb11
    %109 = llvm.icmp "slt" %108, %106 : i64
    llvm.cond_br %109, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%110 : i64)
  ^bb3(%113: i64):  // 2 preds: ^bb2, ^bb10
    %114 = llvm.icmp "slt" %113, %111 : i64
    llvm.cond_br %114, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%115 : i64)
  ^bb5(%118: i64):  // 2 preds: ^bb4, ^bb9
    %119 = llvm.icmp "slt" %118, %116 : i64
    llvm.cond_br %119, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%120 : i64)
  ^bb7(%123: i64):  // 2 preds: ^bb6, ^bb8
    %124 = llvm.icmp "slt" %123, %121 : i64
    llvm.cond_br %124, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %125 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.add %108, %113  : i64
    %127 = llvm.add %126, %118  : i64
    %128 = llvm.add %127, %123  : i64
    %129 = llvm.getelementptr %125[%128] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %130 = llvm.load %129 : !llvm.ptr<i32>
    %131 = llvm.sext %130 : i32 to i64
    %132 = llvm.extractvalue %104[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.add %108, %113  : i64
    %134 = llvm.add %133, %118  : i64
    %135 = llvm.add %134, %123  : i64
    %136 = llvm.getelementptr %132[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %131, %136 : !llvm.ptr<i64>
    %137 = llvm.add %123, %122  : i64
    llvm.br ^bb7(%137 : i64)
  ^bb9:  // pred: ^bb7
    %138 = llvm.add %118, %117  : i64
    llvm.br ^bb5(%138 : i64)
  ^bb10:  // pred: ^bb5
    %139 = llvm.add %113, %112  : i64
    llvm.br ^bb3(%139 : i64)
  ^bb11:  // pred: ^bb3
    %140 = llvm.add %108, %107  : i64
    llvm.br ^bb1(%140 : i64)
  ^bb12:  // pred: ^bb1
    %141 = llvm.mlir.constant(4 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.null : !llvm.ptr<i64>
    %144 = llvm.getelementptr %143[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %145 = llvm.ptrtoint %144 : !llvm.ptr<i64> to i64
    %146 = llvm.mlir.constant(16 : index) : i64
    %147 = llvm.add %145, %146  : i64
    %148 = llvm.call @malloc(%147) : (i64) -> !llvm.ptr<i8>
    %149 = llvm.bitcast %148 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %150 = llvm.ptrtoint %149 : !llvm.ptr<i64> to i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.sub %146, %151  : i64
    %153 = llvm.add %150, %152  : i64
    %154 = llvm.urem %153, %146  : i64
    %155 = llvm.sub %153, %154  : i64
    %156 = llvm.inttoptr %155 : i64 to !llvm.ptr<i64>
    %157 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %158 = llvm.insertvalue %149, %157[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.insertvalue %156, %158[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.insertvalue %160, %159[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %162 = llvm.insertvalue %141, %161[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %163 = llvm.insertvalue %142, %162[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(4 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%164 : i64)
  ^bb13(%167: i64):  // 2 preds: ^bb12, ^bb14
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %169 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %170 = llvm.getelementptr %169[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %170 : !llvm.ptr<i64>
    %171 = llvm.add %167, %166  : i64
    llvm.br ^bb13(%171 : i64)
  ^bb15:  // pred: ^bb13
    %172 = llvm.mlir.constant(4 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.mlir.null : !llvm.ptr<i64>
    %175 = llvm.getelementptr %174[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %176 = llvm.ptrtoint %175 : !llvm.ptr<i64> to i64
    %177 = llvm.mlir.constant(16 : index) : i64
    %178 = llvm.add %176, %177  : i64
    %179 = llvm.call @malloc(%178) : (i64) -> !llvm.ptr<i8>
    %180 = llvm.bitcast %179 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %181 = llvm.ptrtoint %180 : !llvm.ptr<i64> to i64
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.sub %177, %182  : i64
    %184 = llvm.add %181, %183  : i64
    %185 = llvm.urem %184, %177  : i64
    %186 = llvm.sub %184, %185  : i64
    %187 = llvm.inttoptr %186 : i64 to !llvm.ptr<i64>
    %188 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %189 = llvm.insertvalue %180, %188[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.insertvalue %187, %189[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %191 = llvm.mlir.constant(0 : index) : i64
    %192 = llvm.insertvalue %191, %190[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %193 = llvm.insertvalue %172, %192[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %194 = llvm.insertvalue %173, %193[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.mlir.constant(4 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%195 : i64)
  ^bb16(%198: i64):  // 2 preds: ^bb15, ^bb17
    %199 = llvm.icmp "slt" %198, %196 : i64
    llvm.cond_br %199, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %200 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.getelementptr %200[%198] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %202 = llvm.load %201 : !llvm.ptr<i64>
    %203 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %204 = llvm.load %203 : !llvm.ptr<i64>
    %205 = llvm.mul %202, %204  : i64
    %206 = llvm.extractvalue %194[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %207 = llvm.getelementptr %206[%198] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %205, %207 : !llvm.ptr<i64>
    %208 = llvm.add %198, %197  : i64
    llvm.br ^bb16(%208 : i64)
  ^bb18:  // pred: ^bb16
    %209 = llvm.mlir.constant(4 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.null : !llvm.ptr<i1>
    %212 = llvm.getelementptr %211[%209] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %213 = llvm.ptrtoint %212 : !llvm.ptr<i1> to i64
    %214 = llvm.mlir.constant(16 : index) : i64
    %215 = llvm.add %213, %214  : i64
    %216 = llvm.call @malloc(%215) : (i64) -> !llvm.ptr<i8>
    %217 = llvm.bitcast %216 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %218 = llvm.ptrtoint %217 : !llvm.ptr<i1> to i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.sub %214, %219  : i64
    %221 = llvm.add %218, %220  : i64
    %222 = llvm.urem %221, %214  : i64
    %223 = llvm.sub %221, %222  : i64
    %224 = llvm.inttoptr %223 : i64 to !llvm.ptr<i1>
    %225 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %226 = llvm.insertvalue %217, %225[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %227 = llvm.insertvalue %224, %226[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %228 = llvm.mlir.constant(0 : index) : i64
    %229 = llvm.insertvalue %228, %227[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.insertvalue %209, %229[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %231 = llvm.insertvalue %210, %230[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.mlir.constant(4 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%232 : i64)
  ^bb19(%235: i64):  // 2 preds: ^bb18, ^bb20
    %236 = llvm.icmp "slt" %235, %233 : i64
    llvm.cond_br %236, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %237 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %238 = llvm.getelementptr %237[%235] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %239 = llvm.load %238 : !llvm.ptr<i64>
    %240 = llvm.extractvalue %194[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.getelementptr %240[%235] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %242 = llvm.load %241 : !llvm.ptr<i64>
    %243 = llvm.icmp "eq" %239, %242 : i64
    %244 = llvm.extractvalue %231[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.getelementptr %244[%235] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %243, %245 : !llvm.ptr<i1>
    %246 = llvm.add %235, %234  : i64
    llvm.br ^bb19(%246 : i64)
  ^bb21:  // pred: ^bb19
    %247 = llvm.mlir.constant(4 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.null : !llvm.ptr<i64>
    %250 = llvm.getelementptr %249[%247] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %251 = llvm.ptrtoint %250 : !llvm.ptr<i64> to i64
    %252 = llvm.mlir.constant(16 : index) : i64
    %253 = llvm.add %251, %252  : i64
    %254 = llvm.call @malloc(%253) : (i64) -> !llvm.ptr<i8>
    %255 = llvm.bitcast %254 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %256 = llvm.ptrtoint %255 : !llvm.ptr<i64> to i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.sub %252, %257  : i64
    %259 = llvm.add %256, %258  : i64
    %260 = llvm.urem %259, %252  : i64
    %261 = llvm.sub %259, %260  : i64
    %262 = llvm.inttoptr %261 : i64 to !llvm.ptr<i64>
    %263 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %264 = llvm.insertvalue %255, %263[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.insertvalue %262, %264[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.mlir.constant(0 : index) : i64
    %267 = llvm.insertvalue %266, %265[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %268 = llvm.insertvalue %247, %267[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %269 = llvm.insertvalue %248, %268[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.mlir.constant(0 : index) : i64
    %271 = llvm.mlir.constant(4 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%270 : i64)
  ^bb22(%273: i64):  // 2 preds: ^bb21, ^bb23
    %274 = llvm.icmp "slt" %273, %271 : i64
    llvm.cond_br %274, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %275 = llvm.extractvalue %231[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %276 = llvm.getelementptr %275[%273] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %277 = llvm.load %276 : !llvm.ptr<i1>
    %278 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %279 = llvm.getelementptr %278[%273] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %280 = llvm.load %279 : !llvm.ptr<i64>
    %281 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.getelementptr %281[%273] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %283 = llvm.load %282 : !llvm.ptr<i64>
    %284 = llvm.select %277, %280, %283 : i1, i64
    %285 = llvm.extractvalue %269[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.getelementptr %285[%273] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %284, %286 : !llvm.ptr<i64>
    %287 = llvm.add %273, %272  : i64
    llvm.br ^bb22(%287 : i64)
  ^bb24:  // pred: ^bb22
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mlir.null : !llvm.ptr<i64>
    %294 = llvm.getelementptr %293[%288] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %295 = llvm.ptrtoint %294 : !llvm.ptr<i64> to i64
    %296 = llvm.mlir.constant(16 : index) : i64
    %297 = llvm.add %295, %296  : i64
    %298 = llvm.call @malloc(%297) : (i64) -> !llvm.ptr<i8>
    %299 = llvm.bitcast %298 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %300 = llvm.ptrtoint %299 : !llvm.ptr<i64> to i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.sub %296, %301  : i64
    %303 = llvm.add %300, %302  : i64
    %304 = llvm.urem %303, %296  : i64
    %305 = llvm.sub %303, %304  : i64
    %306 = llvm.inttoptr %305 : i64 to !llvm.ptr<i64>
    %307 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %308 = llvm.insertvalue %299, %307[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.insertvalue %306, %308[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.insertvalue %310, %309[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %288, %311[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.insertvalue %289, %312[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.insertvalue %290, %313[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.insertvalue %291, %314[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.insertvalue %289, %315[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.insertvalue %290, %316[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.insertvalue %291, %317[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.insertvalue %292, %318[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%320 : i64)
  ^bb25(%323: i64):  // 2 preds: ^bb24, ^bb35
    %324 = llvm.icmp "slt" %323, %321 : i64
    llvm.cond_br %324, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%325 : i64)
  ^bb27(%328: i64):  // 2 preds: ^bb26, ^bb34
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %330 = llvm.mlir.constant(0 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%330 : i64)
  ^bb29(%333: i64):  // 2 preds: ^bb28, ^bb33
    %334 = llvm.icmp "slt" %333, %331 : i64
    llvm.cond_br %334, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%335 : i64)
  ^bb31(%338: i64):  // 2 preds: ^bb30, ^bb32
    %339 = llvm.icmp "slt" %338, %336 : i64
    llvm.cond_br %339, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %340 = llvm.extractvalue %104[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.add %14, %14  : i64
    %342 = llvm.add %341, %14  : i64
    %343 = llvm.add %342, %14  : i64
    %344 = llvm.getelementptr %340[%343] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %345 = llvm.load %344 : !llvm.ptr<i64>
    %346 = llvm.extractvalue %319[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.add %323, %328  : i64
    %348 = llvm.add %347, %333  : i64
    %349 = llvm.add %348, %338  : i64
    %350 = llvm.getelementptr %346[%349] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %345, %350 : !llvm.ptr<i64>
    %351 = llvm.add %338, %337  : i64
    llvm.br ^bb31(%351 : i64)
  ^bb33:  // pred: ^bb31
    %352 = llvm.add %333, %332  : i64
    llvm.br ^bb29(%352 : i64)
  ^bb34:  // pred: ^bb29
    %353 = llvm.add %328, %327  : i64
    llvm.br ^bb27(%353 : i64)
  ^bb35:  // pred: ^bb27
    %354 = llvm.add %323, %322  : i64
    llvm.br ^bb25(%354 : i64)
  ^bb36:  // pred: ^bb25
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.mlir.null : !llvm.ptr<i64>
    %361 = llvm.getelementptr %360[%355] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %362 = llvm.ptrtoint %361 : !llvm.ptr<i64> to i64
    %363 = llvm.mlir.constant(16 : index) : i64
    %364 = llvm.add %362, %363  : i64
    %365 = llvm.call @malloc(%364) : (i64) -> !llvm.ptr<i8>
    %366 = llvm.bitcast %365 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %367 = llvm.ptrtoint %366 : !llvm.ptr<i64> to i64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.sub %363, %368  : i64
    %370 = llvm.add %367, %369  : i64
    %371 = llvm.urem %370, %363  : i64
    %372 = llvm.sub %370, %371  : i64
    %373 = llvm.inttoptr %372 : i64 to !llvm.ptr<i64>
    %374 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %375 = llvm.insertvalue %366, %374[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.insertvalue %373, %375[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.insertvalue %377, %376[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.insertvalue %355, %378[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.insertvalue %356, %379[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.insertvalue %357, %380[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.insertvalue %358, %381[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.insertvalue %356, %382[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.insertvalue %357, %383[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.insertvalue %358, %384[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.insertvalue %359, %385[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.mlir.constant(0 : index) : i64
    %388 = llvm.mlir.constant(1 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%387 : i64)
  ^bb37(%390: i64):  // 2 preds: ^bb36, ^bb47
    %391 = llvm.icmp "slt" %390, %388 : i64
    llvm.cond_br %391, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %392 = llvm.mlir.constant(0 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%392 : i64)
  ^bb39(%395: i64):  // 2 preds: ^bb38, ^bb46
    %396 = llvm.icmp "slt" %395, %393 : i64
    llvm.cond_br %396, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.mlir.constant(1 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%397 : i64)
  ^bb41(%400: i64):  // 2 preds: ^bb40, ^bb45
    %401 = llvm.icmp "slt" %400, %398 : i64
    llvm.cond_br %401, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%402 : i64)
  ^bb43(%405: i64):  // 2 preds: ^bb42, ^bb44
    %406 = llvm.icmp "slt" %405, %403 : i64
    llvm.cond_br %406, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %407 = llvm.extractvalue %104[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.add %390, %395  : i64
    %409 = llvm.add %408, %400  : i64
    %410 = llvm.add %409, %405  : i64
    %411 = llvm.getelementptr %407[%410] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %412 = llvm.load %411 : !llvm.ptr<i64>
    %413 = llvm.mlir.constant(false) : i1
    %414 = "llvm.intr.abs"(%412, %413) : (i64, i1) -> i64
    %415 = llvm.extractvalue %386[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.add %390, %395  : i64
    %417 = llvm.add %416, %400  : i64
    %418 = llvm.add %417, %405  : i64
    %419 = llvm.getelementptr %415[%418] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %414, %419 : !llvm.ptr<i64>
    %420 = llvm.add %405, %404  : i64
    llvm.br ^bb43(%420 : i64)
  ^bb45:  // pred: ^bb43
    %421 = llvm.add %400, %399  : i64
    llvm.br ^bb41(%421 : i64)
  ^bb46:  // pred: ^bb41
    %422 = llvm.add %395, %394  : i64
    llvm.br ^bb39(%422 : i64)
  ^bb47:  // pred: ^bb39
    %423 = llvm.add %390, %389  : i64
    llvm.br ^bb37(%423 : i64)
  ^bb48:  // pred: ^bb37
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.mlir.constant(1 : index) : i64
    %429 = llvm.mlir.null : !llvm.ptr<i64>
    %430 = llvm.getelementptr %429[%424] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %431 = llvm.ptrtoint %430 : !llvm.ptr<i64> to i64
    %432 = llvm.mlir.constant(16 : index) : i64
    %433 = llvm.add %431, %432  : i64
    %434 = llvm.call @malloc(%433) : (i64) -> !llvm.ptr<i8>
    %435 = llvm.bitcast %434 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %436 = llvm.ptrtoint %435 : !llvm.ptr<i64> to i64
    %437 = llvm.mlir.constant(1 : index) : i64
    %438 = llvm.sub %432, %437  : i64
    %439 = llvm.add %436, %438  : i64
    %440 = llvm.urem %439, %432  : i64
    %441 = llvm.sub %439, %440  : i64
    %442 = llvm.inttoptr %441 : i64 to !llvm.ptr<i64>
    %443 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %444 = llvm.insertvalue %435, %443[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %442, %444[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.insertvalue %446, %445[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.insertvalue %424, %447[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.insertvalue %425, %448[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.insertvalue %426, %449[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.insertvalue %427, %450[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %452 = llvm.insertvalue %425, %451[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.insertvalue %426, %452[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.insertvalue %427, %453[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.insertvalue %428, %454[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %476 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.add %459, %464  : i64
    %478 = llvm.add %477, %469  : i64
    %479 = llvm.add %478, %474  : i64
    %480 = llvm.getelementptr %476[%479] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %481 = llvm.load %480 : !llvm.ptr<i32>
    %482 = llvm.sext %481 : i32 to i64
    %483 = llvm.extractvalue %455[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %484 = llvm.add %459, %464  : i64
    %485 = llvm.add %484, %469  : i64
    %486 = llvm.add %485, %474  : i64
    %487 = llvm.getelementptr %483[%486] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %482, %487 : !llvm.ptr<i64>
    %488 = llvm.add %474, %473  : i64
    llvm.br ^bb55(%488 : i64)
  ^bb57:  // pred: ^bb55
    %489 = llvm.add %469, %468  : i64
    llvm.br ^bb53(%489 : i64)
  ^bb58:  // pred: ^bb53
    %490 = llvm.add %464, %463  : i64
    llvm.br ^bb51(%490 : i64)
  ^bb59:  // pred: ^bb51
    %491 = llvm.add %459, %458  : i64
    llvm.br ^bb49(%491 : i64)
  ^bb60:  // pred: ^bb49
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    %496 = llvm.mlir.null : !llvm.ptr<i64>
    %497 = llvm.getelementptr %496[%492] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %498 = llvm.ptrtoint %497 : !llvm.ptr<i64> to i64
    %499 = llvm.mlir.constant(16 : index) : i64
    %500 = llvm.add %498, %499  : i64
    %501 = llvm.call @malloc(%500) : (i64) -> !llvm.ptr<i8>
    %502 = llvm.bitcast %501 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %503 = llvm.ptrtoint %502 : !llvm.ptr<i64> to i64
    %504 = llvm.mlir.constant(1 : index) : i64
    %505 = llvm.sub %499, %504  : i64
    %506 = llvm.add %503, %505  : i64
    %507 = llvm.urem %506, %499  : i64
    %508 = llvm.sub %506, %507  : i64
    %509 = llvm.inttoptr %508 : i64 to !llvm.ptr<i64>
    %510 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %511 = llvm.insertvalue %502, %510[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %512 = llvm.insertvalue %509, %511[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %513 = llvm.mlir.constant(0 : index) : i64
    %514 = llvm.insertvalue %513, %512[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %515 = llvm.insertvalue %492, %514[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %516 = llvm.insertvalue %493, %515[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %517 = llvm.insertvalue %494, %516[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %518 = llvm.insertvalue %493, %517[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %519 = llvm.insertvalue %494, %518[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %520 = llvm.insertvalue %495, %519[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %521 = llvm.mlir.constant(0 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%521 : i64)
  ^bb61(%524: i64):  // 2 preds: ^bb60, ^bb68
    %525 = llvm.icmp "slt" %524, %522 : i64
    llvm.cond_br %525, ^bb62, ^bb69
  ^bb62:  // pred: ^bb61
    %526 = llvm.mlir.constant(0 : index) : i64
    %527 = llvm.mlir.constant(1 : index) : i64
    %528 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%526 : i64)
  ^bb63(%529: i64):  // 2 preds: ^bb62, ^bb67
    %530 = llvm.icmp "slt" %529, %527 : i64
    llvm.cond_br %530, ^bb64, ^bb68
  ^bb64:  // pred: ^bb63
    %531 = llvm.mlir.constant(0 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%531 : i64)
  ^bb65(%534: i64):  // 2 preds: ^bb64, ^bb66
    %535 = llvm.icmp "slt" %534, %532 : i64
    llvm.cond_br %535, ^bb66, ^bb67
  ^bb66:  // pred: ^bb65
    %536 = llvm.extractvalue %520[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %537 = llvm.add %524, %529  : i64
    %538 = llvm.add %537, %534  : i64
    %539 = llvm.getelementptr %536[%538] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %539 : !llvm.ptr<i64>
    %540 = llvm.add %534, %533  : i64
    llvm.br ^bb65(%540 : i64)
  ^bb67:  // pred: ^bb65
    %541 = llvm.add %529, %528  : i64
    llvm.br ^bb63(%541 : i64)
  ^bb68:  // pred: ^bb63
    %542 = llvm.add %524, %523  : i64
    llvm.br ^bb61(%542 : i64)
  ^bb69:  // pred: ^bb61
    %543 = llvm.mlir.constant(0 : index) : i64
    %544 = llvm.mlir.constant(1 : index) : i64
    %545 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%543 : i64)
  ^bb70(%546: i64):  // 2 preds: ^bb69, ^bb80
    %547 = llvm.icmp "slt" %546, %544 : i64
    llvm.cond_br %547, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %548 = llvm.mlir.constant(0 : index) : i64
    %549 = llvm.mlir.constant(1 : index) : i64
    %550 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%548 : i64)
  ^bb72(%551: i64):  // 2 preds: ^bb71, ^bb79
    %552 = llvm.icmp "slt" %551, %549 : i64
    llvm.cond_br %552, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %553 = llvm.mlir.constant(0 : index) : i64
    %554 = llvm.mlir.constant(1 : index) : i64
    %555 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%553 : i64)
  ^bb74(%556: i64):  // 2 preds: ^bb73, ^bb78
    %557 = llvm.icmp "slt" %556, %554 : i64
    llvm.cond_br %557, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %558 = llvm.mlir.constant(0 : index) : i64
    %559 = llvm.mlir.constant(1 : index) : i64
    %560 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%558 : i64)
  ^bb76(%561: i64):  // 2 preds: ^bb75, ^bb77
    %562 = llvm.icmp "slt" %561, %559 : i64
    llvm.cond_br %562, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %563 = llvm.extractvalue %455[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %564 = llvm.add %546, %551  : i64
    %565 = llvm.add %564, %556  : i64
    %566 = llvm.add %565, %561  : i64
    %567 = llvm.getelementptr %563[%566] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %568 = llvm.load %567 : !llvm.ptr<i64>
    %569 = llvm.extractvalue %520[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %570 = llvm.add %546, %551  : i64
    %571 = llvm.add %570, %556  : i64
    %572 = llvm.getelementptr %569[%571] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %573 = llvm.load %572 : !llvm.ptr<i64>
    %574 = llvm.add %573, %568  : i64
    %575 = llvm.extractvalue %520[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %576 = llvm.add %546, %551  : i64
    %577 = llvm.add %576, %556  : i64
    %578 = llvm.getelementptr %575[%577] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %574, %578 : !llvm.ptr<i64>
    %579 = llvm.add %561, %560  : i64
    llvm.br ^bb76(%579 : i64)
  ^bb78:  // pred: ^bb76
    %580 = llvm.add %556, %555  : i64
    llvm.br ^bb74(%580 : i64)
  ^bb79:  // pred: ^bb74
    %581 = llvm.add %551, %550  : i64
    llvm.br ^bb72(%581 : i64)
  ^bb80:  // pred: ^bb72
    %582 = llvm.add %546, %545  : i64
    llvm.br ^bb70(%582 : i64)
  ^bb81:  // pred: ^bb70
    %583 = llvm.mlir.constant(4 : index) : i64
    %584 = llvm.mlir.constant(1 : index) : i64
    %585 = llvm.mlir.null : !llvm.ptr<i64>
    %586 = llvm.getelementptr %585[%583] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %587 = llvm.ptrtoint %586 : !llvm.ptr<i64> to i64
    %588 = llvm.mlir.constant(16 : index) : i64
    %589 = llvm.add %587, %588  : i64
    %590 = llvm.call @malloc(%589) : (i64) -> !llvm.ptr<i8>
    %591 = llvm.bitcast %590 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %592 = llvm.ptrtoint %591 : !llvm.ptr<i64> to i64
    %593 = llvm.mlir.constant(1 : index) : i64
    %594 = llvm.sub %588, %593  : i64
    %595 = llvm.add %592, %594  : i64
    %596 = llvm.urem %595, %588  : i64
    %597 = llvm.sub %595, %596  : i64
    %598 = llvm.inttoptr %597 : i64 to !llvm.ptr<i64>
    %599 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %600 = llvm.insertvalue %591, %599[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %601 = llvm.insertvalue %598, %600[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %602 = llvm.mlir.constant(0 : index) : i64
    %603 = llvm.insertvalue %602, %601[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %604 = llvm.insertvalue %583, %603[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %605 = llvm.insertvalue %584, %604[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %606 = llvm.mlir.constant(0 : index) : i64
    %607 = llvm.mlir.constant(4 : index) : i64
    %608 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%606 : i64)
  ^bb82(%609: i64):  // 2 preds: ^bb81, ^bb83
    %610 = llvm.icmp "slt" %609, %607 : i64
    llvm.cond_br %610, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %611 = llvm.extractvalue %605[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %612 = llvm.getelementptr %611[%609] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %612 : !llvm.ptr<i64>
    %613 = llvm.add %609, %608  : i64
    llvm.br ^bb82(%613 : i64)
  ^bb84:  // pred: ^bb82
    %614 = llvm.mlir.constant(4 : index) : i64
    %615 = llvm.mlir.constant(1 : index) : i64
    %616 = llvm.mlir.null : !llvm.ptr<i64>
    %617 = llvm.getelementptr %616[%614] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %618 = llvm.ptrtoint %617 : !llvm.ptr<i64> to i64
    %619 = llvm.mlir.constant(16 : index) : i64
    %620 = llvm.add %618, %619  : i64
    %621 = llvm.call @malloc(%620) : (i64) -> !llvm.ptr<i8>
    %622 = llvm.bitcast %621 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %623 = llvm.ptrtoint %622 : !llvm.ptr<i64> to i64
    %624 = llvm.mlir.constant(1 : index) : i64
    %625 = llvm.sub %619, %624  : i64
    %626 = llvm.add %623, %625  : i64
    %627 = llvm.urem %626, %619  : i64
    %628 = llvm.sub %626, %627  : i64
    %629 = llvm.inttoptr %628 : i64 to !llvm.ptr<i64>
    %630 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %631 = llvm.insertvalue %622, %630[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %632 = llvm.insertvalue %629, %631[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %633 = llvm.mlir.constant(0 : index) : i64
    %634 = llvm.insertvalue %633, %632[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %635 = llvm.insertvalue %614, %634[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %636 = llvm.insertvalue %615, %635[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %637 = llvm.mlir.constant(0 : index) : i64
    %638 = llvm.mlir.constant(4 : index) : i64
    %639 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%637 : i64)
  ^bb85(%640: i64):  // 2 preds: ^bb84, ^bb86
    %641 = llvm.icmp "slt" %640, %638 : i64
    llvm.cond_br %641, ^bb86, ^bb87
  ^bb86:  // pred: ^bb85
    %642 = llvm.extractvalue %605[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %643 = llvm.getelementptr %642[%640] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %644 = llvm.load %643 : !llvm.ptr<i64>
    %645 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %646 = llvm.load %645 : !llvm.ptr<i64>
    %647 = llvm.mul %644, %646  : i64
    %648 = llvm.extractvalue %636[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %649 = llvm.getelementptr %648[%640] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %647, %649 : !llvm.ptr<i64>
    %650 = llvm.add %640, %639  : i64
    llvm.br ^bb85(%650 : i64)
  ^bb87:  // pred: ^bb85
    %651 = llvm.mlir.constant(4 : index) : i64
    %652 = llvm.mlir.constant(1 : index) : i64
    %653 = llvm.mlir.null : !llvm.ptr<i1>
    %654 = llvm.getelementptr %653[%651] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %655 = llvm.ptrtoint %654 : !llvm.ptr<i1> to i64
    %656 = llvm.mlir.constant(16 : index) : i64
    %657 = llvm.add %655, %656  : i64
    %658 = llvm.call @malloc(%657) : (i64) -> !llvm.ptr<i8>
    %659 = llvm.bitcast %658 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %660 = llvm.ptrtoint %659 : !llvm.ptr<i1> to i64
    %661 = llvm.mlir.constant(1 : index) : i64
    %662 = llvm.sub %656, %661  : i64
    %663 = llvm.add %660, %662  : i64
    %664 = llvm.urem %663, %656  : i64
    %665 = llvm.sub %663, %664  : i64
    %666 = llvm.inttoptr %665 : i64 to !llvm.ptr<i1>
    %667 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %668 = llvm.insertvalue %659, %667[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %669 = llvm.insertvalue %666, %668[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %670 = llvm.mlir.constant(0 : index) : i64
    %671 = llvm.insertvalue %670, %669[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %672 = llvm.insertvalue %651, %671[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %673 = llvm.insertvalue %652, %672[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %674 = llvm.mlir.constant(0 : index) : i64
    %675 = llvm.mlir.constant(4 : index) : i64
    %676 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%674 : i64)
  ^bb88(%677: i64):  // 2 preds: ^bb87, ^bb89
    %678 = llvm.icmp "slt" %677, %675 : i64
    llvm.cond_br %678, ^bb89, ^bb90
  ^bb89:  // pred: ^bb88
    %679 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %680 = llvm.getelementptr %679[%677] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %681 = llvm.load %680 : !llvm.ptr<i64>
    %682 = llvm.extractvalue %636[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %683 = llvm.getelementptr %682[%677] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %684 = llvm.load %683 : !llvm.ptr<i64>
    %685 = llvm.icmp "eq" %681, %684 : i64
    %686 = llvm.extractvalue %673[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %687 = llvm.getelementptr %686[%677] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %685, %687 : !llvm.ptr<i1>
    %688 = llvm.add %677, %676  : i64
    llvm.br ^bb88(%688 : i64)
  ^bb90:  // pred: ^bb88
    %689 = llvm.mlir.constant(4 : index) : i64
    %690 = llvm.mlir.constant(1 : index) : i64
    %691 = llvm.mlir.null : !llvm.ptr<i64>
    %692 = llvm.getelementptr %691[%689] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %693 = llvm.ptrtoint %692 : !llvm.ptr<i64> to i64
    %694 = llvm.mlir.constant(16 : index) : i64
    %695 = llvm.add %693, %694  : i64
    %696 = llvm.call @malloc(%695) : (i64) -> !llvm.ptr<i8>
    %697 = llvm.bitcast %696 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %698 = llvm.ptrtoint %697 : !llvm.ptr<i64> to i64
    %699 = llvm.mlir.constant(1 : index) : i64
    %700 = llvm.sub %694, %699  : i64
    %701 = llvm.add %698, %700  : i64
    %702 = llvm.urem %701, %694  : i64
    %703 = llvm.sub %701, %702  : i64
    %704 = llvm.inttoptr %703 : i64 to !llvm.ptr<i64>
    %705 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %706 = llvm.insertvalue %697, %705[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %707 = llvm.insertvalue %704, %706[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %708 = llvm.mlir.constant(0 : index) : i64
    %709 = llvm.insertvalue %708, %707[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %710 = llvm.insertvalue %689, %709[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %711 = llvm.insertvalue %690, %710[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %712 = llvm.mlir.constant(0 : index) : i64
    %713 = llvm.mlir.constant(4 : index) : i64
    %714 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%712 : i64)
  ^bb91(%715: i64):  // 2 preds: ^bb90, ^bb92
    %716 = llvm.icmp "slt" %715, %713 : i64
    llvm.cond_br %716, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %717 = llvm.extractvalue %673[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %718 = llvm.getelementptr %717[%715] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %719 = llvm.load %718 : !llvm.ptr<i1>
    %720 = llvm.extractvalue %605[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %721 = llvm.getelementptr %720[%715] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %722 = llvm.load %721 : !llvm.ptr<i64>
    %723 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %724 = llvm.getelementptr %723[%715] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %725 = llvm.load %724 : !llvm.ptr<i64>
    %726 = llvm.select %719, %722, %725 : i1, i64
    %727 = llvm.extractvalue %711[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %728 = llvm.getelementptr %727[%715] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %726, %728 : !llvm.ptr<i64>
    %729 = llvm.add %715, %714  : i64
    llvm.br ^bb91(%729 : i64)
  ^bb93:  // pred: ^bb91
    %730 = llvm.mlir.constant(1 : index) : i64
    %731 = llvm.mlir.constant(1 : index) : i64
    %732 = llvm.mlir.constant(1 : index) : i64
    %733 = llvm.mlir.constant(1 : index) : i64
    %734 = llvm.mlir.constant(1 : index) : i64
    %735 = llvm.mlir.null : !llvm.ptr<i64>
    %736 = llvm.getelementptr %735[%730] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %737 = llvm.ptrtoint %736 : !llvm.ptr<i64> to i64
    %738 = llvm.mlir.constant(16 : index) : i64
    %739 = llvm.add %737, %738  : i64
    %740 = llvm.call @malloc(%739) : (i64) -> !llvm.ptr<i8>
    %741 = llvm.bitcast %740 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %742 = llvm.ptrtoint %741 : !llvm.ptr<i64> to i64
    %743 = llvm.mlir.constant(1 : index) : i64
    %744 = llvm.sub %738, %743  : i64
    %745 = llvm.add %742, %744  : i64
    %746 = llvm.urem %745, %738  : i64
    %747 = llvm.sub %745, %746  : i64
    %748 = llvm.inttoptr %747 : i64 to !llvm.ptr<i64>
    %749 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %750 = llvm.insertvalue %741, %749[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %751 = llvm.insertvalue %748, %750[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %752 = llvm.mlir.constant(0 : index) : i64
    %753 = llvm.insertvalue %752, %751[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %754 = llvm.insertvalue %730, %753[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %755 = llvm.insertvalue %731, %754[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %756 = llvm.insertvalue %732, %755[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %757 = llvm.insertvalue %733, %756[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %758 = llvm.insertvalue %731, %757[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %759 = llvm.insertvalue %732, %758[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %760 = llvm.insertvalue %733, %759[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %761 = llvm.insertvalue %734, %760[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %762 = llvm.mlir.constant(0 : index) : i64
    %763 = llvm.mlir.constant(1 : index) : i64
    %764 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%762 : i64)
  ^bb94(%765: i64):  // 2 preds: ^bb93, ^bb104
    %766 = llvm.icmp "slt" %765, %763 : i64
    llvm.cond_br %766, ^bb95, ^bb105
  ^bb95:  // pred: ^bb94
    %767 = llvm.mlir.constant(0 : index) : i64
    %768 = llvm.mlir.constant(1 : index) : i64
    %769 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb96(%767 : i64)
  ^bb96(%770: i64):  // 2 preds: ^bb95, ^bb103
    %771 = llvm.icmp "slt" %770, %768 : i64
    llvm.cond_br %771, ^bb97, ^bb104
  ^bb97:  // pred: ^bb96
    %772 = llvm.mlir.constant(0 : index) : i64
    %773 = llvm.mlir.constant(1 : index) : i64
    %774 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb98(%772 : i64)
  ^bb98(%775: i64):  // 2 preds: ^bb97, ^bb102
    %776 = llvm.icmp "slt" %775, %773 : i64
    llvm.cond_br %776, ^bb99, ^bb103
  ^bb99:  // pred: ^bb98
    %777 = llvm.mlir.constant(0 : index) : i64
    %778 = llvm.mlir.constant(1 : index) : i64
    %779 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb100(%777 : i64)
  ^bb100(%780: i64):  // 2 preds: ^bb99, ^bb101
    %781 = llvm.icmp "slt" %780, %778 : i64
    llvm.cond_br %781, ^bb101, ^bb102
  ^bb101:  // pred: ^bb100
    %782 = llvm.extractvalue %520[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %783 = llvm.add %14, %14  : i64
    %784 = llvm.add %783, %14  : i64
    %785 = llvm.getelementptr %782[%784] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %786 = llvm.load %785 : !llvm.ptr<i64>
    %787 = llvm.extractvalue %761[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %788 = llvm.add %765, %770  : i64
    %789 = llvm.add %788, %775  : i64
    %790 = llvm.add %789, %780  : i64
    %791 = llvm.getelementptr %787[%790] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %786, %791 : !llvm.ptr<i64>
    %792 = llvm.add %780, %779  : i64
    llvm.br ^bb100(%792 : i64)
  ^bb102:  // pred: ^bb100
    %793 = llvm.add %775, %774  : i64
    llvm.br ^bb98(%793 : i64)
  ^bb103:  // pred: ^bb98
    %794 = llvm.add %770, %769  : i64
    llvm.br ^bb96(%794 : i64)
  ^bb104:  // pred: ^bb96
    %795 = llvm.add %765, %764  : i64
    llvm.br ^bb94(%795 : i64)
  ^bb105:  // pred: ^bb94
    %796 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    %797 = llvm.insertvalue %319, %796[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %798 = llvm.insertvalue %386, %797[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %799 = llvm.insertvalue %761, %798[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %799 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %119 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.bitcast %119 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %121 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.bitcast %121 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%117, %118, %120, %122) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %123 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%117, %123) : (!llvm.ptr<i8>, i64) -> ()
    %124 = llvm.call @omTensorGetShape(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %125 = llvm.call @omTensorGetStrides(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.mlir.constant(0 : i64) : i64
    %127 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %124[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %125[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %124[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %125[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %124[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %125[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(3 : i64) : i64
    %142 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %124[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<211 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<211 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

