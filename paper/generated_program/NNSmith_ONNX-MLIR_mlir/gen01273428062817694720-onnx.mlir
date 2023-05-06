module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v1_0"]} {
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
    %14 = llvm.mlir.constant(0 : i64) : i64
    %15 = llvm.mlir.constant(-1 : i64) : i64
    %16 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %17 = llvm.bitcast %16 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(4 : index) : i64
    %24 = llvm.insertvalue %23, %22[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %29 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %34 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.insertvalue %35, %36[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.insertvalue %41, %40[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.null : !llvm.ptr<i64>
    %50 = llvm.getelementptr %49[%45] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %51 = llvm.ptrtoint %50 : !llvm.ptr<i64> to i64
    %52 = llvm.mlir.constant(16 : index) : i64
    %53 = llvm.add %51, %52  : i64
    %54 = llvm.call @malloc(%53) : (i64) -> !llvm.ptr<i8>
    %55 = llvm.bitcast %54 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %56 = llvm.ptrtoint %55 : !llvm.ptr<i64> to i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.sub %52, %57  : i64
    %59 = llvm.add %56, %58  : i64
    %60 = llvm.urem %59, %52  : i64
    %61 = llvm.sub %59, %60  : i64
    %62 = llvm.inttoptr %61 : i64 to !llvm.ptr<i64>
    %63 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %64 = llvm.insertvalue %55, %63[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.insertvalue %45, %67[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %69 = llvm.insertvalue %46, %68[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.insertvalue %47, %69[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.insertvalue %46, %70[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %72 = llvm.insertvalue %47, %71[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.insertvalue %48, %72[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%74 : i64)
  ^bb1(%77: i64):  // 2 preds: ^bb0, ^bb8
    %78 = llvm.icmp "slt" %77, %75 : i64
    llvm.cond_br %78, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %79 = llvm.mlir.constant(0 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%79 : i64)
  ^bb3(%82: i64):  // 2 preds: ^bb2, ^bb7
    %83 = llvm.icmp "slt" %82, %80 : i64
    llvm.cond_br %83, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%84 : i64)
  ^bb5(%87: i64):  // 2 preds: ^bb4, ^bb6
    %88 = llvm.icmp "slt" %87, %85 : i64
    llvm.cond_br %88, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %89 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.add %77, %82  : i64
    %91 = llvm.add %90, %87  : i64
    %92 = llvm.getelementptr %89[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %15, %92 : !llvm.ptr<i64>
    %93 = llvm.add %87, %86  : i64
    llvm.br ^bb5(%93 : i64)
  ^bb7:  // pred: ^bb5
    %94 = llvm.add %82, %81  : i64
    llvm.br ^bb3(%94 : i64)
  ^bb8:  // pred: ^bb3
    %95 = llvm.add %77, %76  : i64
    llvm.br ^bb1(%95 : i64)
  ^bb9:  // pred: ^bb1
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%96 : i64)
  ^bb10(%99: i64):  // 2 preds: ^bb9, ^bb20
    %100 = llvm.icmp "slt" %99, %97 : i64
    llvm.cond_br %100, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%101 : i64)
  ^bb12(%104: i64):  // 2 preds: ^bb11, ^bb19
    %105 = llvm.icmp "slt" %104, %102 : i64
    llvm.cond_br %105, ^bb13, ^bb20
  ^bb13:  // pred: ^bb12
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%106 : i64)
  ^bb14(%109: i64):  // 2 preds: ^bb13, ^bb18
    %110 = llvm.icmp "slt" %109, %107 : i64
    llvm.cond_br %110, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%111 : i64)
  ^bb16(%114: i64):  // 2 preds: ^bb15, ^bb17
    %115 = llvm.icmp "slt" %114, %112 : i64
    llvm.cond_br %115, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %116 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.add %99, %104  : i64
    %118 = llvm.add %117, %109  : i64
    %119 = llvm.add %118, %114  : i64
    %120 = llvm.getelementptr %116[%119] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %121 = llvm.load %120 : !llvm.ptr<i32>
    %122 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %123 = llvm.add %99, %109  : i64
    %124 = llvm.add %123, %114  : i64
    %125 = llvm.getelementptr %122[%124] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %126 = llvm.load %125 : !llvm.ptr<i64>
    %127 = llvm.icmp "slt" %126, %14 : i64
    %128 = llvm.select %127, %14, %126 : i1, i64
    %129 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.add %99, %128  : i64
    %131 = llvm.add %130, %109  : i64
    %132 = llvm.add %131, %114  : i64
    %133 = llvm.getelementptr %129[%132] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %134 = llvm.load %133 : !llvm.ptr<i32>
    %135 = llvm.icmp "slt" %121, %134 : i32
    %136 = llvm.select %135, %104, %128 : i1, i64
    %137 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %138 = llvm.add %99, %109  : i64
    %139 = llvm.add %138, %114  : i64
    %140 = llvm.getelementptr %137[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %140 : !llvm.ptr<i64>
    %141 = llvm.add %114, %113  : i64
    llvm.br ^bb16(%141 : i64)
  ^bb18:  // pred: ^bb16
    %142 = llvm.add %109, %108  : i64
    llvm.br ^bb14(%142 : i64)
  ^bb19:  // pred: ^bb14
    %143 = llvm.add %104, %103  : i64
    llvm.br ^bb12(%143 : i64)
  ^bb20:  // pred: ^bb12
    %144 = llvm.add %99, %98  : i64
    llvm.br ^bb10(%144 : i64)
  ^bb21:  // pred: ^bb10
    %145 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %146 = llvm.extractvalue %73[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %147 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %148 = llvm.insertvalue %146, %145[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %149 = llvm.insertvalue %147, %148[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %150 = llvm.mlir.constant(0 : index) : i64
    %151 = llvm.insertvalue %150, %149[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.insertvalue %152, %151[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.insertvalue %154, %153[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.insertvalue %156, %155[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.insertvalue %158, %157[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.insertvalue %160, %159[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.insertvalue %162, %161[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.null : !llvm.ptr<i64>
    %169 = llvm.getelementptr %168[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %170 = llvm.ptrtoint %169 : !llvm.ptr<i64> to i64
    %171 = llvm.mlir.constant(16 : index) : i64
    %172 = llvm.add %170, %171  : i64
    %173 = llvm.call @malloc(%172) : (i64) -> !llvm.ptr<i8>
    %174 = llvm.bitcast %173 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %175 = llvm.ptrtoint %174 : !llvm.ptr<i64> to i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.sub %171, %176  : i64
    %178 = llvm.add %175, %177  : i64
    %179 = llvm.urem %178, %171  : i64
    %180 = llvm.sub %178, %179  : i64
    %181 = llvm.inttoptr %180 : i64 to !llvm.ptr<i64>
    %182 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %183 = llvm.insertvalue %174, %182[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %184 = llvm.insertvalue %181, %183[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.insertvalue %185, %184[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %187 = llvm.insertvalue %164, %186[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %188 = llvm.insertvalue %165, %187[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %189 = llvm.insertvalue %166, %188[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %190 = llvm.insertvalue %165, %189[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %191 = llvm.insertvalue %166, %190[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %192 = llvm.insertvalue %167, %191[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %193 = llvm.mlir.constant(0 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%193 : i64)
  ^bb22(%196: i64):  // 2 preds: ^bb21, ^bb29
    %197 = llvm.icmp "slt" %196, %194 : i64
    llvm.cond_br %197, ^bb23, ^bb30
  ^bb23:  // pred: ^bb22
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%198 : i64)
  ^bb24(%201: i64):  // 2 preds: ^bb23, ^bb28
    %202 = llvm.icmp "slt" %201, %199 : i64
    llvm.cond_br %202, ^bb25, ^bb29
  ^bb25:  // pred: ^bb24
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%203 : i64)
  ^bb26(%206: i64):  // 2 preds: ^bb25, ^bb27
    %207 = llvm.icmp "slt" %206, %204 : i64
    llvm.cond_br %207, ^bb27, ^bb28
  ^bb27:  // pred: ^bb26
    %208 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %209 = llvm.add %196, %201  : i64
    %210 = llvm.add %209, %206  : i64
    %211 = llvm.getelementptr %208[%210] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %212 = llvm.load %211 : !llvm.ptr<i64>
    %213 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %214 = llvm.add %196, %201  : i64
    %215 = llvm.add %214, %206  : i64
    %216 = llvm.getelementptr %213[%215] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %217 = llvm.load %216 : !llvm.ptr<i64>
    %218 = llvm.sub %212, %217  : i64
    %219 = llvm.extractvalue %192[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %220 = llvm.add %196, %201  : i64
    %221 = llvm.add %220, %206  : i64
    %222 = llvm.getelementptr %219[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %218, %222 : !llvm.ptr<i64>
    %223 = llvm.add %206, %205  : i64
    llvm.br ^bb26(%223 : i64)
  ^bb28:  // pred: ^bb26
    %224 = llvm.add %201, %200  : i64
    llvm.br ^bb24(%224 : i64)
  ^bb29:  // pred: ^bb24
    %225 = llvm.add %196, %195  : i64
    llvm.br ^bb22(%225 : i64)
  ^bb30:  // pred: ^bb22
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.null : !llvm.ptr<i64>
    %231 = llvm.getelementptr %230[%226] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %232 = llvm.ptrtoint %231 : !llvm.ptr<i64> to i64
    %233 = llvm.mlir.constant(16 : index) : i64
    %234 = llvm.add %232, %233  : i64
    %235 = llvm.call @malloc(%234) : (i64) -> !llvm.ptr<i8>
    %236 = llvm.bitcast %235 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %237 = llvm.ptrtoint %236 : !llvm.ptr<i64> to i64
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.sub %233, %238  : i64
    %240 = llvm.add %237, %239  : i64
    %241 = llvm.urem %240, %233  : i64
    %242 = llvm.sub %240, %241  : i64
    %243 = llvm.inttoptr %242 : i64 to !llvm.ptr<i64>
    %244 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %245 = llvm.insertvalue %236, %244[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %246 = llvm.insertvalue %243, %245[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.insertvalue %247, %246[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %249 = llvm.insertvalue %226, %248[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %250 = llvm.insertvalue %227, %249[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %251 = llvm.insertvalue %228, %250[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %252 = llvm.insertvalue %227, %251[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %253 = llvm.insertvalue %228, %252[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %254 = llvm.insertvalue %229, %253[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %255 = llvm.mlir.constant(0 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%255 : i64)
  ^bb31(%258: i64):  // 2 preds: ^bb30, ^bb38
    %259 = llvm.icmp "slt" %258, %256 : i64
    llvm.cond_br %259, ^bb32, ^bb39
  ^bb32:  // pred: ^bb31
    %260 = llvm.mlir.constant(0 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%260 : i64)
  ^bb33(%263: i64):  // 2 preds: ^bb32, ^bb37
    %264 = llvm.icmp "slt" %263, %261 : i64
    llvm.cond_br %264, ^bb34, ^bb38
  ^bb34:  // pred: ^bb33
    %265 = llvm.mlir.constant(0 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%265 : i64)
  ^bb35(%268: i64):  // 2 preds: ^bb34, ^bb36
    %269 = llvm.icmp "slt" %268, %266 : i64
    llvm.cond_br %269, ^bb36, ^bb37
  ^bb36:  // pred: ^bb35
    %270 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %271 = llvm.add %258, %263  : i64
    %272 = llvm.add %271, %268  : i64
    %273 = llvm.getelementptr %270[%272] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %274 = llvm.load %273 : !llvm.ptr<i64>
    %275 = llvm.extractvalue %192[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %276 = llvm.add %258, %263  : i64
    %277 = llvm.add %276, %268  : i64
    %278 = llvm.getelementptr %275[%277] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %279 = llvm.load %278 : !llvm.ptr<i64>
    %280 = llvm.mul %274, %279  : i64
    %281 = llvm.extractvalue %254[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %282 = llvm.add %258, %263  : i64
    %283 = llvm.add %282, %268  : i64
    %284 = llvm.getelementptr %281[%283] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %280, %284 : !llvm.ptr<i64>
    %285 = llvm.add %268, %267  : i64
    llvm.br ^bb35(%285 : i64)
  ^bb37:  // pred: ^bb35
    %286 = llvm.add %263, %262  : i64
    llvm.br ^bb33(%286 : i64)
  ^bb38:  // pred: ^bb33
    %287 = llvm.add %258, %257  : i64
    llvm.br ^bb31(%287 : i64)
  ^bb39:  // pred: ^bb31
    %288 = llvm.mlir.constant(4 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.mlir.null : !llvm.ptr<i64>
    %291 = llvm.getelementptr %290[%288] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %292 = llvm.ptrtoint %291 : !llvm.ptr<i64> to i64
    %293 = llvm.mlir.constant(16 : index) : i64
    %294 = llvm.add %292, %293  : i64
    %295 = llvm.call @malloc(%294) : (i64) -> !llvm.ptr<i8>
    %296 = llvm.bitcast %295 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %297 = llvm.ptrtoint %296 : !llvm.ptr<i64> to i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.sub %293, %298  : i64
    %300 = llvm.add %297, %299  : i64
    %301 = llvm.urem %300, %293  : i64
    %302 = llvm.sub %300, %301  : i64
    %303 = llvm.inttoptr %302 : i64 to !llvm.ptr<i64>
    %304 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %305 = llvm.insertvalue %296, %304[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.insertvalue %303, %305[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.insertvalue %307, %306[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %309 = llvm.insertvalue %288, %308[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %310 = llvm.insertvalue %289, %309[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.mlir.constant(4 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%311 : i64)
  ^bb40(%314: i64):  // 2 preds: ^bb39, ^bb41
    %315 = llvm.icmp "slt" %314, %312 : i64
    llvm.cond_br %315, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %316 = llvm.extractvalue %310[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %317 = llvm.getelementptr %316[%314] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %317 : !llvm.ptr<i64>
    %318 = llvm.add %314, %313  : i64
    llvm.br ^bb40(%318 : i64)
  ^bb42:  // pred: ^bb40
    %319 = llvm.mlir.constant(4 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.null : !llvm.ptr<i64>
    %322 = llvm.getelementptr %321[%319] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %323 = llvm.ptrtoint %322 : !llvm.ptr<i64> to i64
    %324 = llvm.mlir.constant(16 : index) : i64
    %325 = llvm.add %323, %324  : i64
    %326 = llvm.call @malloc(%325) : (i64) -> !llvm.ptr<i8>
    %327 = llvm.bitcast %326 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %328 = llvm.ptrtoint %327 : !llvm.ptr<i64> to i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.sub %324, %329  : i64
    %331 = llvm.add %328, %330  : i64
    %332 = llvm.urem %331, %324  : i64
    %333 = llvm.sub %331, %332  : i64
    %334 = llvm.inttoptr %333 : i64 to !llvm.ptr<i64>
    %335 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %336 = llvm.insertvalue %327, %335[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.insertvalue %334, %336[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %338 = llvm.mlir.constant(0 : index) : i64
    %339 = llvm.insertvalue %338, %337[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %340 = llvm.insertvalue %319, %339[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.insertvalue %320, %340[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(4 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%342 : i64)
  ^bb43(%345: i64):  // 2 preds: ^bb42, ^bb44
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %347 = llvm.extractvalue %310[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %348 = llvm.getelementptr %347[%345] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %349 = llvm.load %348 : !llvm.ptr<i64>
    %350 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %351 = llvm.load %350 : !llvm.ptr<i64>
    %352 = llvm.mul %349, %351  : i64
    %353 = llvm.extractvalue %341[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %354 = llvm.getelementptr %353[%345] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %352, %354 : !llvm.ptr<i64>
    %355 = llvm.add %345, %344  : i64
    llvm.br ^bb43(%355 : i64)
  ^bb45:  // pred: ^bb43
    %356 = llvm.mlir.constant(4 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.null : !llvm.ptr<i1>
    %359 = llvm.getelementptr %358[%356] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %360 = llvm.ptrtoint %359 : !llvm.ptr<i1> to i64
    %361 = llvm.mlir.constant(16 : index) : i64
    %362 = llvm.add %360, %361  : i64
    %363 = llvm.call @malloc(%362) : (i64) -> !llvm.ptr<i8>
    %364 = llvm.bitcast %363 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %365 = llvm.ptrtoint %364 : !llvm.ptr<i1> to i64
    %366 = llvm.mlir.constant(1 : index) : i64
    %367 = llvm.sub %361, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.urem %368, %361  : i64
    %370 = llvm.sub %368, %369  : i64
    %371 = llvm.inttoptr %370 : i64 to !llvm.ptr<i1>
    %372 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %373 = llvm.insertvalue %364, %372[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %374 = llvm.insertvalue %371, %373[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %375 = llvm.mlir.constant(0 : index) : i64
    %376 = llvm.insertvalue %375, %374[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %377 = llvm.insertvalue %356, %376[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %378 = llvm.insertvalue %357, %377[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.mlir.constant(4 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%379 : i64)
  ^bb46(%382: i64):  // 2 preds: ^bb45, ^bb47
    %383 = llvm.icmp "slt" %382, %380 : i64
    llvm.cond_br %383, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %384 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %385 = llvm.getelementptr %384[%382] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %386 = llvm.load %385 : !llvm.ptr<i64>
    %387 = llvm.extractvalue %341[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %388 = llvm.getelementptr %387[%382] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %389 = llvm.load %388 : !llvm.ptr<i64>
    %390 = llvm.icmp "eq" %386, %389 : i64
    %391 = llvm.extractvalue %378[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %392 = llvm.getelementptr %391[%382] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %390, %392 : !llvm.ptr<i1>
    %393 = llvm.add %382, %381  : i64
    llvm.br ^bb46(%393 : i64)
  ^bb48:  // pred: ^bb46
    %394 = llvm.mlir.constant(4 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.mlir.null : !llvm.ptr<i64>
    %397 = llvm.getelementptr %396[%394] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %398 = llvm.ptrtoint %397 : !llvm.ptr<i64> to i64
    %399 = llvm.mlir.constant(16 : index) : i64
    %400 = llvm.add %398, %399  : i64
    %401 = llvm.call @malloc(%400) : (i64) -> !llvm.ptr<i8>
    %402 = llvm.bitcast %401 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %403 = llvm.ptrtoint %402 : !llvm.ptr<i64> to i64
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.sub %399, %404  : i64
    %406 = llvm.add %403, %405  : i64
    %407 = llvm.urem %406, %399  : i64
    %408 = llvm.sub %406, %407  : i64
    %409 = llvm.inttoptr %408 : i64 to !llvm.ptr<i64>
    %410 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %411 = llvm.insertvalue %402, %410[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %412 = llvm.insertvalue %409, %411[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %413 = llvm.mlir.constant(0 : index) : i64
    %414 = llvm.insertvalue %413, %412[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %415 = llvm.insertvalue %394, %414[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %416 = llvm.insertvalue %395, %415[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.mlir.constant(4 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%417 : i64)
  ^bb49(%420: i64):  // 2 preds: ^bb48, ^bb50
    %421 = llvm.icmp "slt" %420, %418 : i64
    llvm.cond_br %421, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %422 = llvm.extractvalue %378[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %423 = llvm.getelementptr %422[%420] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %424 = llvm.load %423 : !llvm.ptr<i1>
    %425 = llvm.extractvalue %310[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %426 = llvm.getelementptr %425[%420] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %427 = llvm.load %426 : !llvm.ptr<i64>
    %428 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %429 = llvm.getelementptr %428[%420] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %430 = llvm.load %429 : !llvm.ptr<i64>
    %431 = llvm.select %424, %427, %430 : i1, i64
    %432 = llvm.extractvalue %416[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %433 = llvm.getelementptr %432[%420] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %431, %433 : !llvm.ptr<i64>
    %434 = llvm.add %420, %419  : i64
    llvm.br ^bb49(%434 : i64)
  ^bb51:  // pred: ^bb49
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    %437 = llvm.mlir.constant(1 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    %440 = llvm.mlir.null : !llvm.ptr<i32>
    %441 = llvm.getelementptr %440[%435] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %442 = llvm.ptrtoint %441 : !llvm.ptr<i32> to i64
    %443 = llvm.mlir.constant(16 : index) : i64
    %444 = llvm.add %442, %443  : i64
    %445 = llvm.call @malloc(%444) : (i64) -> !llvm.ptr<i8>
    %446 = llvm.bitcast %445 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %447 = llvm.ptrtoint %446 : !llvm.ptr<i32> to i64
    %448 = llvm.mlir.constant(1 : index) : i64
    %449 = llvm.sub %443, %448  : i64
    %450 = llvm.add %447, %449  : i64
    %451 = llvm.urem %450, %443  : i64
    %452 = llvm.sub %450, %451  : i64
    %453 = llvm.inttoptr %452 : i64 to !llvm.ptr<i32>
    %454 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %455 = llvm.insertvalue %446, %454[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %456 = llvm.insertvalue %453, %455[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.mlir.constant(0 : index) : i64
    %458 = llvm.insertvalue %457, %456[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.insertvalue %435, %458[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %460 = llvm.insertvalue %436, %459[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.insertvalue %437, %460[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.insertvalue %438, %461[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.insertvalue %436, %462[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %464 = llvm.insertvalue %437, %463[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.insertvalue %438, %464[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.insertvalue %439, %465[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.mlir.constant(0 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    %469 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%467 : i64)
  ^bb52(%470: i64):  // 2 preds: ^bb51, ^bb62
    %471 = llvm.icmp "slt" %470, %468 : i64
    llvm.cond_br %471, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %472 = llvm.mlir.constant(0 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%472 : i64)
  ^bb54(%475: i64):  // 2 preds: ^bb53, ^bb61
    %476 = llvm.icmp "slt" %475, %473 : i64
    llvm.cond_br %476, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.mlir.constant(1 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%477 : i64)
  ^bb56(%480: i64):  // 2 preds: ^bb55, ^bb60
    %481 = llvm.icmp "slt" %480, %478 : i64
    llvm.cond_br %481, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %482 = llvm.mlir.constant(0 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%482 : i64)
  ^bb58(%485: i64):  // 2 preds: ^bb57, ^bb59
    %486 = llvm.icmp "slt" %485, %483 : i64
    llvm.cond_br %486, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %487 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %488 = llvm.add %13, %13  : i64
    %489 = llvm.add %488, %13  : i64
    %490 = llvm.add %489, %13  : i64
    %491 = llvm.getelementptr %487[%490] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %492 = llvm.load %491 : !llvm.ptr<i32>
    %493 = llvm.extractvalue %466[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.add %470, %475  : i64
    %495 = llvm.add %494, %480  : i64
    %496 = llvm.add %495, %485  : i64
    %497 = llvm.getelementptr %493[%496] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %492, %497 : !llvm.ptr<i32>
    %498 = llvm.add %485, %484  : i64
    llvm.br ^bb58(%498 : i64)
  ^bb60:  // pred: ^bb58
    %499 = llvm.add %480, %479  : i64
    llvm.br ^bb56(%499 : i64)
  ^bb61:  // pred: ^bb56
    %500 = llvm.add %475, %474  : i64
    llvm.br ^bb54(%500 : i64)
  ^bb62:  // pred: ^bb54
    %501 = llvm.add %470, %469  : i64
    llvm.br ^bb52(%501 : i64)
  ^bb63:  // pred: ^bb52
    %502 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %503 = llvm.insertvalue %254, %502[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %504 = llvm.insertvalue %466, %503[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %504 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v1_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(3 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(0 : i64) : i64
    %77 = llvm.getelementptr %50[%76] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %77 : !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(4 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(3 : i64) : i64
    %104 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %86[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %87[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.getelementptr %50[%108] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %109 : !llvm.ptr<ptr<i8>>
    %110 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %110 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

