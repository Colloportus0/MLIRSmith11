module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v5_0", "v2_0"]} {
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
    %13 = llvm.mlir.constant(0 : i32) : i32
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(0 : i64) : i64
    %16 = llvm.mlir.constant(-1 : i64) : i64
    %17 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<3 x i64>>
    %18 = llvm.bitcast %17 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %19 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(3 : index) : i64
    %25 = llvm.insertvalue %24, %23[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %35 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<3 x i64>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(3 : index) : i64
    %43 = llvm.insertvalue %42, %41[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.insertvalue %44, %43[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.null : !llvm.ptr<i64>
    %51 = llvm.getelementptr %50[%46] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.ptrtoint %51 : !llvm.ptr<i64> to i64
    %53 = llvm.mlir.constant(16 : index) : i64
    %54 = llvm.add %52, %53  : i64
    %55 = llvm.call @malloc(%54) : (i64) -> !llvm.ptr<i8>
    %56 = llvm.bitcast %55 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %57 = llvm.ptrtoint %56 : !llvm.ptr<i64> to i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.sub %53, %58  : i64
    %60 = llvm.add %57, %59  : i64
    %61 = llvm.urem %60, %53  : i64
    %62 = llvm.sub %60, %61  : i64
    %63 = llvm.inttoptr %62 : i64 to !llvm.ptr<i64>
    %64 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %65 = llvm.insertvalue %56, %64[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %69 = llvm.insertvalue %46, %68[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.insertvalue %47, %69[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.insertvalue %48, %70[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %72 = llvm.insertvalue %47, %71[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.insertvalue %48, %72[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %74 = llvm.insertvalue %49, %73[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%75 : i64)
  ^bb1(%78: i64):  // 2 preds: ^bb0, ^bb8
    %79 = llvm.icmp "slt" %78, %76 : i64
    llvm.cond_br %79, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%80 : i64)
  ^bb3(%83: i64):  // 2 preds: ^bb2, ^bb7
    %84 = llvm.icmp "slt" %83, %81 : i64
    llvm.cond_br %84, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%85 : i64)
  ^bb5(%88: i64):  // 2 preds: ^bb4, ^bb6
    %89 = llvm.icmp "slt" %88, %86 : i64
    llvm.cond_br %89, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %90 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %91 = llvm.add %78, %83  : i64
    %92 = llvm.add %91, %88  : i64
    %93 = llvm.getelementptr %90[%92] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %16, %93 : !llvm.ptr<i64>
    %94 = llvm.add %88, %87  : i64
    llvm.br ^bb5(%94 : i64)
  ^bb7:  // pred: ^bb5
    %95 = llvm.add %83, %82  : i64
    llvm.br ^bb3(%95 : i64)
  ^bb8:  // pred: ^bb3
    %96 = llvm.add %78, %77  : i64
    llvm.br ^bb1(%96 : i64)
  ^bb9:  // pred: ^bb1
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%97 : i64)
  ^bb10(%100: i64):  // 2 preds: ^bb9, ^bb20
    %101 = llvm.icmp "slt" %100, %98 : i64
    llvm.cond_br %101, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%102 : i64)
  ^bb12(%105: i64):  // 2 preds: ^bb11, ^bb19
    %106 = llvm.icmp "slt" %105, %103 : i64
    llvm.cond_br %106, ^bb13, ^bb20
  ^bb13:  // pred: ^bb12
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%107 : i64)
  ^bb14(%110: i64):  // 2 preds: ^bb13, ^bb18
    %111 = llvm.icmp "slt" %110, %108 : i64
    llvm.cond_br %111, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%112 : i64)
  ^bb16(%115: i64):  // 2 preds: ^bb15, ^bb17
    %116 = llvm.icmp "slt" %115, %113 : i64
    llvm.cond_br %116, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %117 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.add %100, %105  : i64
    %119 = llvm.add %118, %110  : i64
    %120 = llvm.add %119, %115  : i64
    %121 = llvm.getelementptr %117[%120] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %122 = llvm.load %121 : !llvm.ptr<i32>
    %123 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %124 = llvm.add %100, %105  : i64
    %125 = llvm.add %124, %110  : i64
    %126 = llvm.getelementptr %123[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %127 = llvm.load %126 : !llvm.ptr<i64>
    %128 = llvm.icmp "slt" %127, %15 : i64
    %129 = llvm.select %128, %15, %127 : i1, i64
    %130 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.add %100, %105  : i64
    %132 = llvm.add %131, %110  : i64
    %133 = llvm.add %132, %129  : i64
    %134 = llvm.getelementptr %130[%133] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %135 = llvm.load %134 : !llvm.ptr<i32>
    %136 = llvm.icmp "slt" %122, %135 : i32
    %137 = llvm.select %136, %115, %129 : i1, i64
    %138 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %139 = llvm.add %100, %105  : i64
    %140 = llvm.add %139, %110  : i64
    %141 = llvm.getelementptr %138[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %141 : !llvm.ptr<i64>
    %142 = llvm.add %115, %114  : i64
    llvm.br ^bb16(%142 : i64)
  ^bb18:  // pred: ^bb16
    %143 = llvm.add %110, %109  : i64
    llvm.br ^bb14(%143 : i64)
  ^bb19:  // pred: ^bb14
    %144 = llvm.add %105, %104  : i64
    llvm.br ^bb12(%144 : i64)
  ^bb20:  // pred: ^bb12
    %145 = llvm.add %100, %99  : i64
    llvm.br ^bb10(%145 : i64)
  ^bb21:  // pred: ^bb10
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.null : !llvm.ptr<i64>
    %151 = llvm.getelementptr %150[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %152 = llvm.ptrtoint %151 : !llvm.ptr<i64> to i64
    %153 = llvm.mlir.constant(16 : index) : i64
    %154 = llvm.add %152, %153  : i64
    %155 = llvm.call @malloc(%154) : (i64) -> !llvm.ptr<i8>
    %156 = llvm.bitcast %155 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %157 = llvm.ptrtoint %156 : !llvm.ptr<i64> to i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.sub %153, %158  : i64
    %160 = llvm.add %157, %159  : i64
    %161 = llvm.urem %160, %153  : i64
    %162 = llvm.sub %160, %161  : i64
    %163 = llvm.inttoptr %162 : i64 to !llvm.ptr<i64>
    %164 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %165 = llvm.insertvalue %156, %164[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %166 = llvm.insertvalue %163, %165[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.insertvalue %167, %166[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %169 = llvm.insertvalue %146, %168[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %170 = llvm.insertvalue %147, %169[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %171 = llvm.insertvalue %148, %170[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %172 = llvm.insertvalue %147, %171[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %173 = llvm.insertvalue %148, %172[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %174 = llvm.insertvalue %149, %173[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.null : !llvm.ptr<i64>
    %177 = llvm.getelementptr %176[%175] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %178 = llvm.ptrtoint %177 : !llvm.ptr<i64> to i64
    %179 = llvm.alloca %178 x i64 : (i64) -> !llvm.ptr<i64>
    %180 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %181 = llvm.insertvalue %179, %180[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %182 = llvm.insertvalue %179, %181[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.insertvalue %183, %182[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%185 : i64)
  ^bb22(%188: i64):  // 2 preds: ^bb21, ^bb32
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%190 : i64)
  ^bb24(%193: i64):  // 2 preds: ^bb23, ^bb31
    %194 = llvm.icmp "slt" %193, %191 : i64
    llvm.cond_br %194, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%195 : i64)
  ^bb26(%198: i64):  // 2 preds: ^bb25, ^bb30
    %199 = llvm.icmp "slt" %198, %196 : i64
    llvm.cond_br %199, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %200 = llvm.extractvalue %184[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    llvm.store %15, %200 : !llvm.ptr<i64>
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%201 : i64)
  ^bb28(%204: i64):  // 2 preds: ^bb27, ^bb29
    %205 = llvm.icmp "slt" %204, %202 : i64
    llvm.cond_br %205, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %206 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %207 = llvm.add %188, %193  : i64
    %208 = llvm.add %207, %204  : i64
    %209 = llvm.getelementptr %206[%208] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %210 = llvm.load %209 : !llvm.ptr<i64>
    %211 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %212 = llvm.add %188, %204  : i64
    %213 = llvm.add %212, %198  : i64
    %214 = llvm.getelementptr %211[%213] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %215 = llvm.load %214 : !llvm.ptr<i64>
    %216 = llvm.extractvalue %184[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %217 = llvm.load %216 : !llvm.ptr<i64>
    %218 = llvm.mul %210, %215  : i64
    %219 = llvm.add %217, %218  : i64
    %220 = llvm.extractvalue %184[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    llvm.store %219, %220 : !llvm.ptr<i64>
    %221 = llvm.add %204, %203  : i64
    llvm.br ^bb28(%221 : i64)
  ^bb30:  // pred: ^bb28
    %222 = llvm.extractvalue %184[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %223 = llvm.load %222 : !llvm.ptr<i64>
    %224 = llvm.extractvalue %174[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %225 = llvm.add %188, %193  : i64
    %226 = llvm.add %225, %198  : i64
    %227 = llvm.getelementptr %224[%226] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %223, %227 : !llvm.ptr<i64>
    %228 = llvm.add %198, %197  : i64
    llvm.br ^bb26(%228 : i64)
  ^bb31:  // pred: ^bb26
    %229 = llvm.add %193, %192  : i64
    llvm.br ^bb24(%229 : i64)
  ^bb32:  // pred: ^bb24
    %230 = llvm.add %188, %187  : i64
    llvm.br ^bb22(%230 : i64)
  ^bb33:  // pred: ^bb22
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.null : !llvm.ptr<i32>
    %237 = llvm.getelementptr %236[%231] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %238 = llvm.ptrtoint %237 : !llvm.ptr<i32> to i64
    %239 = llvm.mlir.constant(16 : index) : i64
    %240 = llvm.add %238, %239  : i64
    %241 = llvm.call @malloc(%240) : (i64) -> !llvm.ptr<i8>
    %242 = llvm.bitcast %241 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %243 = llvm.ptrtoint %242 : !llvm.ptr<i32> to i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.sub %239, %244  : i64
    %246 = llvm.add %243, %245  : i64
    %247 = llvm.urem %246, %239  : i64
    %248 = llvm.sub %246, %247  : i64
    %249 = llvm.inttoptr %248 : i64 to !llvm.ptr<i32>
    %250 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %251 = llvm.insertvalue %242, %250[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.insertvalue %249, %251[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.insertvalue %253, %252[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.insertvalue %231, %254[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.insertvalue %232, %255[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.insertvalue %233, %256[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.insertvalue %234, %257[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.insertvalue %232, %258[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.insertvalue %233, %259[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.insertvalue %234, %260[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.insertvalue %235, %261[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.mlir.constant(0 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%263 : i64)
  ^bb34(%266: i64):  // 2 preds: ^bb33, ^bb44
    %267 = llvm.icmp "slt" %266, %264 : i64
    llvm.cond_br %267, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%268 : i64)
  ^bb36(%271: i64):  // 2 preds: ^bb35, ^bb43
    %272 = llvm.icmp "slt" %271, %269 : i64
    llvm.cond_br %272, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%273 : i64)
  ^bb38(%276: i64):  // 2 preds: ^bb37, ^bb42
    %277 = llvm.icmp "slt" %276, %274 : i64
    llvm.cond_br %277, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%278 : i64)
  ^bb40(%281: i64):  // 2 preds: ^bb39, ^bb41
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %283 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.add %266, %271  : i64
    %285 = llvm.add %284, %276  : i64
    %286 = llvm.add %285, %281  : i64
    %287 = llvm.getelementptr %283[%286] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %288 = llvm.load %287 : !llvm.ptr<i32>
    %289 = llvm.sub %13, %288  : i32
    %290 = llvm.extractvalue %262[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.add %266, %271  : i64
    %292 = llvm.add %291, %276  : i64
    %293 = llvm.add %292, %281  : i64
    %294 = llvm.getelementptr %290[%293] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %289, %294 : !llvm.ptr<i32>
    %295 = llvm.add %281, %280  : i64
    llvm.br ^bb40(%295 : i64)
  ^bb42:  // pred: ^bb40
    %296 = llvm.add %276, %275  : i64
    llvm.br ^bb38(%296 : i64)
  ^bb43:  // pred: ^bb38
    %297 = llvm.add %271, %270  : i64
    llvm.br ^bb36(%297 : i64)
  ^bb44:  // pred: ^bb36
    %298 = llvm.add %266, %265  : i64
    llvm.br ^bb34(%298 : i64)
  ^bb45:  // pred: ^bb34
    %299 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %300 = llvm.extractvalue %262[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.extractvalue %262[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %300, %299[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %303 = llvm.insertvalue %301, %302[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.insertvalue %304, %303[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.insertvalue %306, %305[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %308 = llvm.mlir.constant(1 : index) : i64
    %309 = llvm.insertvalue %308, %307[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.insertvalue %310, %309[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.insertvalue %312, %311[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.insertvalue %314, %313[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.insertvalue %316, %315[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %318 = llvm.mlir.constant(3 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.mlir.null : !llvm.ptr<i64>
    %321 = llvm.getelementptr %320[%318] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %322 = llvm.ptrtoint %321 : !llvm.ptr<i64> to i64
    %323 = llvm.mlir.constant(16 : index) : i64
    %324 = llvm.add %322, %323  : i64
    %325 = llvm.call @malloc(%324) : (i64) -> !llvm.ptr<i8>
    %326 = llvm.bitcast %325 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %327 = llvm.ptrtoint %326 : !llvm.ptr<i64> to i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.sub %323, %328  : i64
    %330 = llvm.add %327, %329  : i64
    %331 = llvm.urem %330, %323  : i64
    %332 = llvm.sub %330, %331  : i64
    %333 = llvm.inttoptr %332 : i64 to !llvm.ptr<i64>
    %334 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %335 = llvm.insertvalue %326, %334[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %336 = llvm.insertvalue %333, %335[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.insertvalue %337, %336[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %339 = llvm.insertvalue %318, %338[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %340 = llvm.insertvalue %319, %339[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.mlir.constant(0 : index) : i64
    %342 = llvm.mlir.constant(3 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%341 : i64)
  ^bb46(%344: i64):  // 2 preds: ^bb45, ^bb47
    %345 = llvm.icmp "slt" %344, %342 : i64
    llvm.cond_br %345, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %346 = llvm.extractvalue %340[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %347 = llvm.getelementptr %346[%344] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %347 : !llvm.ptr<i64>
    %348 = llvm.add %344, %343  : i64
    llvm.br ^bb46(%348 : i64)
  ^bb48:  // pred: ^bb46
    %349 = llvm.mlir.constant(3 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    %351 = llvm.mlir.null : !llvm.ptr<i64>
    %352 = llvm.getelementptr %351[%349] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %353 = llvm.ptrtoint %352 : !llvm.ptr<i64> to i64
    %354 = llvm.mlir.constant(16 : index) : i64
    %355 = llvm.add %353, %354  : i64
    %356 = llvm.call @malloc(%355) : (i64) -> !llvm.ptr<i8>
    %357 = llvm.bitcast %356 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %358 = llvm.ptrtoint %357 : !llvm.ptr<i64> to i64
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.sub %354, %359  : i64
    %361 = llvm.add %358, %360  : i64
    %362 = llvm.urem %361, %354  : i64
    %363 = llvm.sub %361, %362  : i64
    %364 = llvm.inttoptr %363 : i64 to !llvm.ptr<i64>
    %365 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %366 = llvm.insertvalue %357, %365[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %367 = llvm.insertvalue %364, %366[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.insertvalue %368, %367[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %370 = llvm.insertvalue %349, %369[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %371 = llvm.insertvalue %350, %370[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %372 = llvm.mlir.constant(0 : index) : i64
    %373 = llvm.mlir.constant(3 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%372 : i64)
  ^bb49(%375: i64):  // 2 preds: ^bb48, ^bb50
    %376 = llvm.icmp "slt" %375, %373 : i64
    llvm.cond_br %376, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %377 = llvm.extractvalue %340[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %378 = llvm.getelementptr %377[%375] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %379 = llvm.load %378 : !llvm.ptr<i64>
    %380 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %381 = llvm.load %380 : !llvm.ptr<i64>
    %382 = llvm.mul %379, %381  : i64
    %383 = llvm.extractvalue %371[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %384 = llvm.getelementptr %383[%375] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %382, %384 : !llvm.ptr<i64>
    %385 = llvm.add %375, %374  : i64
    llvm.br ^bb49(%385 : i64)
  ^bb51:  // pred: ^bb49
    %386 = llvm.mlir.constant(3 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.mlir.null : !llvm.ptr<i1>
    %389 = llvm.getelementptr %388[%386] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %390 = llvm.ptrtoint %389 : !llvm.ptr<i1> to i64
    %391 = llvm.mlir.constant(16 : index) : i64
    %392 = llvm.add %390, %391  : i64
    %393 = llvm.call @malloc(%392) : (i64) -> !llvm.ptr<i8>
    %394 = llvm.bitcast %393 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %395 = llvm.ptrtoint %394 : !llvm.ptr<i1> to i64
    %396 = llvm.mlir.constant(1 : index) : i64
    %397 = llvm.sub %391, %396  : i64
    %398 = llvm.add %395, %397  : i64
    %399 = llvm.urem %398, %391  : i64
    %400 = llvm.sub %398, %399  : i64
    %401 = llvm.inttoptr %400 : i64 to !llvm.ptr<i1>
    %402 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %403 = llvm.insertvalue %394, %402[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %404 = llvm.insertvalue %401, %403[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.insertvalue %405, %404[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %407 = llvm.insertvalue %386, %406[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %408 = llvm.insertvalue %387, %407[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %409 = llvm.mlir.constant(0 : index) : i64
    %410 = llvm.mlir.constant(3 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%409 : i64)
  ^bb52(%412: i64):  // 2 preds: ^bb51, ^bb53
    %413 = llvm.icmp "slt" %412, %410 : i64
    llvm.cond_br %413, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %414 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %415 = llvm.getelementptr %414[%412] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %416 = llvm.load %415 : !llvm.ptr<i64>
    %417 = llvm.extractvalue %371[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %418 = llvm.getelementptr %417[%412] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %419 = llvm.load %418 : !llvm.ptr<i64>
    %420 = llvm.icmp "eq" %416, %419 : i64
    %421 = llvm.extractvalue %408[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %422 = llvm.getelementptr %421[%412] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %420, %422 : !llvm.ptr<i1>
    %423 = llvm.add %412, %411  : i64
    llvm.br ^bb52(%423 : i64)
  ^bb54:  // pred: ^bb52
    %424 = llvm.mlir.constant(3 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.mlir.null : !llvm.ptr<i64>
    %427 = llvm.getelementptr %426[%424] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %428 = llvm.ptrtoint %427 : !llvm.ptr<i64> to i64
    %429 = llvm.mlir.constant(16 : index) : i64
    %430 = llvm.add %428, %429  : i64
    %431 = llvm.call @malloc(%430) : (i64) -> !llvm.ptr<i8>
    %432 = llvm.bitcast %431 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %433 = llvm.ptrtoint %432 : !llvm.ptr<i64> to i64
    %434 = llvm.mlir.constant(1 : index) : i64
    %435 = llvm.sub %429, %434  : i64
    %436 = llvm.add %433, %435  : i64
    %437 = llvm.urem %436, %429  : i64
    %438 = llvm.sub %436, %437  : i64
    %439 = llvm.inttoptr %438 : i64 to !llvm.ptr<i64>
    %440 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %441 = llvm.insertvalue %432, %440[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %442 = llvm.insertvalue %439, %441[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %443 = llvm.mlir.constant(0 : index) : i64
    %444 = llvm.insertvalue %443, %442[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %445 = llvm.insertvalue %424, %444[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %446 = llvm.insertvalue %425, %445[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %447 = llvm.mlir.constant(0 : index) : i64
    %448 = llvm.mlir.constant(3 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%447 : i64)
  ^bb55(%450: i64):  // 2 preds: ^bb54, ^bb56
    %451 = llvm.icmp "slt" %450, %448 : i64
    llvm.cond_br %451, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %452 = llvm.extractvalue %408[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %453 = llvm.getelementptr %452[%450] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %454 = llvm.load %453 : !llvm.ptr<i1>
    %455 = llvm.extractvalue %340[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %456 = llvm.getelementptr %455[%450] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %457 = llvm.load %456 : !llvm.ptr<i64>
    %458 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %459 = llvm.getelementptr %458[%450] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %460 = llvm.load %459 : !llvm.ptr<i64>
    %461 = llvm.select %454, %457, %460 : i1, i64
    %462 = llvm.extractvalue %446[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %463 = llvm.getelementptr %462[%450] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %461, %463 : !llvm.ptr<i64>
    %464 = llvm.add %450, %449  : i64
    llvm.br ^bb55(%464 : i64)
  ^bb57:  // pred: ^bb55
    %465 = llvm.mlir.constant(1 : index) : i64
    %466 = llvm.mlir.constant(1 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    %469 = llvm.mlir.null : !llvm.ptr<i32>
    %470 = llvm.getelementptr %469[%465] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %471 = llvm.ptrtoint %470 : !llvm.ptr<i32> to i64
    %472 = llvm.mlir.constant(16 : index) : i64
    %473 = llvm.add %471, %472  : i64
    %474 = llvm.call @malloc(%473) : (i64) -> !llvm.ptr<i8>
    %475 = llvm.bitcast %474 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %476 = llvm.ptrtoint %475 : !llvm.ptr<i32> to i64
    %477 = llvm.mlir.constant(1 : index) : i64
    %478 = llvm.sub %472, %477  : i64
    %479 = llvm.add %476, %478  : i64
    %480 = llvm.urem %479, %472  : i64
    %481 = llvm.sub %479, %480  : i64
    %482 = llvm.inttoptr %481 : i64 to !llvm.ptr<i32>
    %483 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %484 = llvm.insertvalue %475, %483[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %485 = llvm.insertvalue %482, %484[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %486 = llvm.mlir.constant(0 : index) : i64
    %487 = llvm.insertvalue %486, %485[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %488 = llvm.insertvalue %465, %487[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %489 = llvm.insertvalue %466, %488[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %490 = llvm.insertvalue %467, %489[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %491 = llvm.insertvalue %466, %490[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %492 = llvm.insertvalue %467, %491[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %493 = llvm.insertvalue %468, %492[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %494 = llvm.mlir.constant(0 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    %496 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%494 : i64)
  ^bb58(%497: i64):  // 2 preds: ^bb57, ^bb65
    %498 = llvm.icmp "slt" %497, %495 : i64
    llvm.cond_br %498, ^bb59, ^bb66
  ^bb59:  // pred: ^bb58
    %499 = llvm.mlir.constant(0 : index) : i64
    %500 = llvm.mlir.constant(1 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%499 : i64)
  ^bb60(%502: i64):  // 2 preds: ^bb59, ^bb64
    %503 = llvm.icmp "slt" %502, %500 : i64
    llvm.cond_br %503, ^bb61, ^bb65
  ^bb61:  // pred: ^bb60
    %504 = llvm.mlir.constant(0 : index) : i64
    %505 = llvm.mlir.constant(1 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%504 : i64)
  ^bb62(%507: i64):  // 2 preds: ^bb61, ^bb63
    %508 = llvm.icmp "slt" %507, %505 : i64
    llvm.cond_br %508, ^bb63, ^bb64
  ^bb63:  // pred: ^bb62
    %509 = llvm.extractvalue %317[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %510 = llvm.add %14, %14  : i64
    %511 = llvm.add %510, %14  : i64
    %512 = llvm.getelementptr %509[%511] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %513 = llvm.load %512 : !llvm.ptr<i32>
    %514 = llvm.extractvalue %493[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %515 = llvm.add %497, %502  : i64
    %516 = llvm.add %515, %507  : i64
    %517 = llvm.getelementptr %514[%516] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %513, %517 : !llvm.ptr<i32>
    %518 = llvm.add %507, %506  : i64
    llvm.br ^bb62(%518 : i64)
  ^bb64:  // pred: ^bb62
    %519 = llvm.add %502, %501  : i64
    llvm.br ^bb60(%519 : i64)
  ^bb65:  // pred: ^bb60
    %520 = llvm.add %497, %496  : i64
    llvm.br ^bb58(%520 : i64)
  ^bb66:  // pred: ^bb58
    %521 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %522 = llvm.insertvalue %174, %521[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %523 = llvm.insertvalue %493, %522[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %523 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v5_0", "v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
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
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(1 : i64) : i64
    %104 = llvm.getelementptr %50[%103] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %104 : !llvm.ptr<ptr<i8>>
    %105 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %105 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<133 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<133 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

