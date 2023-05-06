module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<5xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<5 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<1> : tensor<5xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<5 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.constant(1 : i64) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<5 x i64>>
    %17 = llvm.bitcast %16 : !llvm.ptr<array<5 x i64>> to !llvm.ptr<i64>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(5 : index) : i64
    %24 = llvm.insertvalue %23, %22[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %29 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %34 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<5 x i64>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<5 x i64>> to !llvm.ptr<i64>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.insertvalue %35, %36[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(5 : index) : i64
    %42 = llvm.insertvalue %41, %40[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.null : !llvm.ptr<i32>
    %52 = llvm.getelementptr %51[%45] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %53 = llvm.ptrtoint %52 : !llvm.ptr<i32> to i64
    %54 = llvm.mlir.constant(16 : index) : i64
    %55 = llvm.add %53, %54  : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %58 = llvm.ptrtoint %57 : !llvm.ptr<i32> to i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.sub %54, %59  : i64
    %61 = llvm.add %58, %60  : i64
    %62 = llvm.urem %61, %54  : i64
    %63 = llvm.sub %61, %62  : i64
    %64 = llvm.inttoptr %63 : i64 to !llvm.ptr<i32>
    %65 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %66 = llvm.insertvalue %57, %65[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %67 = llvm.insertvalue %64, %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.insertvalue %68, %67[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %70 = llvm.insertvalue %45, %69[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %71 = llvm.insertvalue %46, %70[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %72 = llvm.insertvalue %47, %71[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %73 = llvm.insertvalue %48, %72[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %74 = llvm.insertvalue %49, %73[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %75 = llvm.insertvalue %46, %74[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %76 = llvm.insertvalue %47, %75[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %77 = llvm.insertvalue %48, %76[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %78 = llvm.insertvalue %49, %77[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %79 = llvm.insertvalue %50, %78[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%80 : i64)
  ^bb1(%83: i64):  // 2 preds: ^bb0, ^bb14
    %84 = llvm.icmp "slt" %83, %81 : i64
    llvm.cond_br %84, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%85 : i64)
  ^bb3(%88: i64):  // 2 preds: ^bb2, ^bb13
    %89 = llvm.icmp "slt" %88, %86 : i64
    llvm.cond_br %89, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%90 : i64)
  ^bb5(%93: i64):  // 2 preds: ^bb4, ^bb12
    %94 = llvm.icmp "slt" %93, %91 : i64
    llvm.cond_br %94, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%95 : i64)
  ^bb7(%98: i64):  // 2 preds: ^bb6, ^bb11
    %99 = llvm.icmp "slt" %98, %96 : i64
    llvm.cond_br %99, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%100 : i64)
  ^bb9(%103: i64):  // 2 preds: ^bb8, ^bb10
    %104 = llvm.icmp "slt" %103, %101 : i64
    llvm.cond_br %104, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %105 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %106 = llvm.add %83, %88  : i64
    %107 = llvm.add %106, %93  : i64
    %108 = llvm.add %107, %98  : i64
    %109 = llvm.add %108, %103  : i64
    %110 = llvm.getelementptr %105[%109] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %111 = llvm.load %110 : !llvm.ptr<i32>
    %112 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %113 = llvm.add %83, %88  : i64
    %114 = llvm.add %113, %93  : i64
    %115 = llvm.add %114, %98  : i64
    %116 = llvm.add %115, %103  : i64
    %117 = llvm.getelementptr %112[%116] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %111, %117 : !llvm.ptr<i32>
    %118 = llvm.add %103, %102  : i64
    llvm.br ^bb9(%118 : i64)
  ^bb11:  // pred: ^bb9
    %119 = llvm.add %98, %97  : i64
    llvm.br ^bb7(%119 : i64)
  ^bb12:  // pred: ^bb7
    %120 = llvm.add %93, %92  : i64
    llvm.br ^bb5(%120 : i64)
  ^bb13:  // pred: ^bb5
    %121 = llvm.add %88, %87  : i64
    llvm.br ^bb3(%121 : i64)
  ^bb14:  // pred: ^bb3
    %122 = llvm.add %83, %82  : i64
    llvm.br ^bb1(%122 : i64)
  ^bb15:  // pred: ^bb1
    %123 = llvm.mlir.constant(5 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.null : !llvm.ptr<i64>
    %126 = llvm.getelementptr %125[%123] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %127 = llvm.ptrtoint %126 : !llvm.ptr<i64> to i64
    %128 = llvm.mlir.constant(16 : index) : i64
    %129 = llvm.add %127, %128  : i64
    %130 = llvm.call @malloc(%129) : (i64) -> !llvm.ptr<i8>
    %131 = llvm.bitcast %130 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %132 = llvm.ptrtoint %131 : !llvm.ptr<i64> to i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.sub %128, %133  : i64
    %135 = llvm.add %132, %134  : i64
    %136 = llvm.urem %135, %128  : i64
    %137 = llvm.sub %135, %136  : i64
    %138 = llvm.inttoptr %137 : i64 to !llvm.ptr<i64>
    %139 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %140 = llvm.insertvalue %131, %139[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %141 = llvm.insertvalue %138, %140[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.insertvalue %142, %141[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %144 = llvm.insertvalue %123, %143[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %145 = llvm.insertvalue %124, %144[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.mlir.constant(5 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%146 : i64)
  ^bb16(%149: i64):  // 2 preds: ^bb15, ^bb17
    %150 = llvm.icmp "slt" %149, %147 : i64
    llvm.cond_br %150, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %151 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %152 = llvm.getelementptr %151[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %152 : !llvm.ptr<i64>
    %153 = llvm.add %149, %148  : i64
    llvm.br ^bb16(%153 : i64)
  ^bb18:  // pred: ^bb16
    %154 = llvm.mlir.constant(5 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.mlir.null : !llvm.ptr<i64>
    %157 = llvm.getelementptr %156[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %158 = llvm.ptrtoint %157 : !llvm.ptr<i64> to i64
    %159 = llvm.mlir.constant(16 : index) : i64
    %160 = llvm.add %158, %159  : i64
    %161 = llvm.call @malloc(%160) : (i64) -> !llvm.ptr<i8>
    %162 = llvm.bitcast %161 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %163 = llvm.ptrtoint %162 : !llvm.ptr<i64> to i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.sub %159, %164  : i64
    %166 = llvm.add %163, %165  : i64
    %167 = llvm.urem %166, %159  : i64
    %168 = llvm.sub %166, %167  : i64
    %169 = llvm.inttoptr %168 : i64 to !llvm.ptr<i64>
    %170 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %171 = llvm.insertvalue %162, %170[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %172 = llvm.insertvalue %169, %171[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.mlir.constant(0 : index) : i64
    %174 = llvm.insertvalue %173, %172[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.insertvalue %154, %174[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.insertvalue %155, %175[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.mlir.constant(5 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%177 : i64)
  ^bb19(%180: i64):  // 2 preds: ^bb18, ^bb20
    %181 = llvm.icmp "slt" %180, %178 : i64
    llvm.cond_br %181, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %182 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.getelementptr %182[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %184 = llvm.load %183 : !llvm.ptr<i64>
    %185 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %186 = llvm.load %185 : !llvm.ptr<i64>
    %187 = llvm.mul %184, %186  : i64
    %188 = llvm.extractvalue %176[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %189 = llvm.getelementptr %188[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %187, %189 : !llvm.ptr<i64>
    %190 = llvm.add %180, %179  : i64
    llvm.br ^bb19(%190 : i64)
  ^bb21:  // pred: ^bb19
    %191 = llvm.mlir.constant(5 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.mlir.null : !llvm.ptr<i1>
    %194 = llvm.getelementptr %193[%191] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %195 = llvm.ptrtoint %194 : !llvm.ptr<i1> to i64
    %196 = llvm.mlir.constant(16 : index) : i64
    %197 = llvm.add %195, %196  : i64
    %198 = llvm.call @malloc(%197) : (i64) -> !llvm.ptr<i8>
    %199 = llvm.bitcast %198 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %200 = llvm.ptrtoint %199 : !llvm.ptr<i1> to i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.sub %196, %201  : i64
    %203 = llvm.add %200, %202  : i64
    %204 = llvm.urem %203, %196  : i64
    %205 = llvm.sub %203, %204  : i64
    %206 = llvm.inttoptr %205 : i64 to !llvm.ptr<i1>
    %207 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %208 = llvm.insertvalue %199, %207[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %209 = llvm.insertvalue %206, %208[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %210 = llvm.mlir.constant(0 : index) : i64
    %211 = llvm.insertvalue %210, %209[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %212 = llvm.insertvalue %191, %211[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.insertvalue %192, %212[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.mlir.constant(5 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%214 : i64)
  ^bb22(%217: i64):  // 2 preds: ^bb21, ^bb23
    %218 = llvm.icmp "slt" %217, %215 : i64
    llvm.cond_br %218, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %219 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.getelementptr %219[%217] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %221 = llvm.load %220 : !llvm.ptr<i64>
    %222 = llvm.extractvalue %176[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %223 = llvm.getelementptr %222[%217] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %224 = llvm.load %223 : !llvm.ptr<i64>
    %225 = llvm.icmp "eq" %221, %224 : i64
    %226 = llvm.extractvalue %213[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %227 = llvm.getelementptr %226[%217] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %225, %227 : !llvm.ptr<i1>
    %228 = llvm.add %217, %216  : i64
    llvm.br ^bb22(%228 : i64)
  ^bb24:  // pred: ^bb22
    %229 = llvm.mlir.constant(5 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.null : !llvm.ptr<i64>
    %232 = llvm.getelementptr %231[%229] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %233 = llvm.ptrtoint %232 : !llvm.ptr<i64> to i64
    %234 = llvm.mlir.constant(16 : index) : i64
    %235 = llvm.add %233, %234  : i64
    %236 = llvm.call @malloc(%235) : (i64) -> !llvm.ptr<i8>
    %237 = llvm.bitcast %236 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %238 = llvm.ptrtoint %237 : !llvm.ptr<i64> to i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.sub %234, %239  : i64
    %241 = llvm.add %238, %240  : i64
    %242 = llvm.urem %241, %234  : i64
    %243 = llvm.sub %241, %242  : i64
    %244 = llvm.inttoptr %243 : i64 to !llvm.ptr<i64>
    %245 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %246 = llvm.insertvalue %237, %245[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %247 = llvm.insertvalue %244, %246[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.insertvalue %248, %247[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %250 = llvm.insertvalue %229, %249[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.insertvalue %230, %250[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.mlir.constant(5 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%252 : i64)
  ^bb25(%255: i64):  // 2 preds: ^bb24, ^bb26
    %256 = llvm.icmp "slt" %255, %253 : i64
    llvm.cond_br %256, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %257 = llvm.extractvalue %213[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %258 = llvm.getelementptr %257[%255] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %259 = llvm.load %258 : !llvm.ptr<i1>
    %260 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.getelementptr %260[%255] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %262 = llvm.load %261 : !llvm.ptr<i64>
    %263 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.getelementptr %263[%255] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %265 = llvm.load %264 : !llvm.ptr<i64>
    %266 = llvm.select %259, %262, %265 : i1, i64
    %267 = llvm.extractvalue %251[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %268 = llvm.getelementptr %267[%255] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %266, %268 : !llvm.ptr<i64>
    %269 = llvm.add %255, %254  : i64
    llvm.br ^bb25(%269 : i64)
  ^bb27:  // pred: ^bb25
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.null : !llvm.ptr<i32>
    %277 = llvm.getelementptr %276[%270] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %278 = llvm.ptrtoint %277 : !llvm.ptr<i32> to i64
    %279 = llvm.mlir.constant(16 : index) : i64
    %280 = llvm.add %278, %279  : i64
    %281 = llvm.call @malloc(%280) : (i64) -> !llvm.ptr<i8>
    %282 = llvm.bitcast %281 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %283 = llvm.ptrtoint %282 : !llvm.ptr<i32> to i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.sub %279, %284  : i64
    %286 = llvm.add %283, %285  : i64
    %287 = llvm.urem %286, %279  : i64
    %288 = llvm.sub %286, %287  : i64
    %289 = llvm.inttoptr %288 : i64 to !llvm.ptr<i32>
    %290 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %291 = llvm.insertvalue %282, %290[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %292 = llvm.insertvalue %289, %291[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %293 = llvm.mlir.constant(0 : index) : i64
    %294 = llvm.insertvalue %293, %292[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %295 = llvm.insertvalue %270, %294[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %296 = llvm.insertvalue %271, %295[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %297 = llvm.insertvalue %272, %296[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %298 = llvm.insertvalue %273, %297[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %299 = llvm.insertvalue %274, %298[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %300 = llvm.insertvalue %271, %299[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %301 = llvm.insertvalue %272, %300[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %302 = llvm.insertvalue %273, %301[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %303 = llvm.insertvalue %274, %302[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %304 = llvm.insertvalue %275, %303[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%305 : i64)
  ^bb28(%308: i64):  // 2 preds: ^bb27, ^bb41
    %309 = llvm.icmp "slt" %308, %306 : i64
    llvm.cond_br %309, ^bb29, ^bb42
  ^bb29:  // pred: ^bb28
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%310 : i64)
  ^bb30(%313: i64):  // 2 preds: ^bb29, ^bb40
    %314 = llvm.icmp "slt" %313, %311 : i64
    llvm.cond_br %314, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%315 : i64)
  ^bb32(%318: i64):  // 2 preds: ^bb31, ^bb39
    %319 = llvm.icmp "slt" %318, %316 : i64
    llvm.cond_br %319, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%320 : i64)
  ^bb34(%323: i64):  // 2 preds: ^bb33, ^bb38
    %324 = llvm.icmp "slt" %323, %321 : i64
    llvm.cond_br %324, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%325 : i64)
  ^bb36(%328: i64):  // 2 preds: ^bb35, ^bb37
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %330 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %331 = llvm.add %15, %15  : i64
    %332 = llvm.add %331, %15  : i64
    %333 = llvm.add %332, %15  : i64
    %334 = llvm.add %333, %15  : i64
    %335 = llvm.getelementptr %330[%334] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %336 = llvm.load %335 : !llvm.ptr<i32>
    %337 = llvm.extractvalue %304[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %338 = llvm.add %308, %313  : i64
    %339 = llvm.add %338, %318  : i64
    %340 = llvm.add %339, %323  : i64
    %341 = llvm.add %340, %328  : i64
    %342 = llvm.getelementptr %337[%341] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %336, %342 : !llvm.ptr<i32>
    %343 = llvm.add %328, %327  : i64
    llvm.br ^bb36(%343 : i64)
  ^bb38:  // pred: ^bb36
    %344 = llvm.add %323, %322  : i64
    llvm.br ^bb34(%344 : i64)
  ^bb39:  // pred: ^bb34
    %345 = llvm.add %318, %317  : i64
    llvm.br ^bb32(%345 : i64)
  ^bb40:  // pred: ^bb32
    %346 = llvm.add %313, %312  : i64
    llvm.br ^bb30(%346 : i64)
  ^bb41:  // pred: ^bb30
    %347 = llvm.add %308, %307  : i64
    llvm.br ^bb28(%347 : i64)
  ^bb42:  // pred: ^bb28
    %348 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %349 = llvm.extractvalue %79[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %350 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %351 = llvm.insertvalue %349, %348[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.insertvalue %350, %351[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.insertvalue %353, %352[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.insertvalue %355, %354[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.insertvalue %357, %356[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.insertvalue %359, %358[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.insertvalue %361, %360[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.mlir.constant(1 : index) : i64
    %364 = llvm.insertvalue %363, %362[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.mlir.constant(1 : index) : i64
    %366 = llvm.insertvalue %365, %364[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.mlir.constant(1 : index) : i64
    %368 = llvm.insertvalue %367, %366[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.insertvalue %369, %368[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.mlir.null : !llvm.ptr<i32>
    %377 = llvm.getelementptr %376[%371] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %378 = llvm.ptrtoint %377 : !llvm.ptr<i32> to i64
    %379 = llvm.mlir.constant(16 : index) : i64
    %380 = llvm.add %378, %379  : i64
    %381 = llvm.call @malloc(%380) : (i64) -> !llvm.ptr<i8>
    %382 = llvm.bitcast %381 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %383 = llvm.ptrtoint %382 : !llvm.ptr<i32> to i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.sub %379, %384  : i64
    %386 = llvm.add %383, %385  : i64
    %387 = llvm.urem %386, %379  : i64
    %388 = llvm.sub %386, %387  : i64
    %389 = llvm.inttoptr %388 : i64 to !llvm.ptr<i32>
    %390 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %391 = llvm.insertvalue %382, %390[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.insertvalue %389, %391[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.mlir.constant(0 : index) : i64
    %394 = llvm.insertvalue %393, %392[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.insertvalue %371, %394[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.insertvalue %372, %395[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.insertvalue %373, %396[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %374, %397[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.insertvalue %372, %398[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.insertvalue %373, %399[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.insertvalue %374, %400[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.insertvalue %375, %401[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.mlir.constant(0 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%403 : i64)
  ^bb43(%406: i64):  // 2 preds: ^bb42, ^bb53
    %407 = llvm.icmp "slt" %406, %404 : i64
    llvm.cond_br %407, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %408 = llvm.mlir.constant(0 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%408 : i64)
  ^bb45(%411: i64):  // 2 preds: ^bb44, ^bb52
    %412 = llvm.icmp "slt" %411, %409 : i64
    llvm.cond_br %412, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %413 = llvm.mlir.constant(0 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%413 : i64)
  ^bb47(%416: i64):  // 2 preds: ^bb46, ^bb51
    %417 = llvm.icmp "slt" %416, %414 : i64
    llvm.cond_br %417, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %418 = llvm.mlir.constant(0 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%418 : i64)
  ^bb49(%421: i64):  // 2 preds: ^bb48, ^bb50
    %422 = llvm.icmp "slt" %421, %419 : i64
    llvm.cond_br %422, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %423 = llvm.extractvalue %370[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.add %406, %411  : i64
    %425 = llvm.add %424, %416  : i64
    %426 = llvm.add %425, %421  : i64
    %427 = llvm.getelementptr %423[%426] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %428 = llvm.load %427 : !llvm.ptr<i32>
    %429 = llvm.extractvalue %370[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.add %406, %411  : i64
    %431 = llvm.add %430, %416  : i64
    %432 = llvm.add %431, %421  : i64
    %433 = llvm.getelementptr %429[%432] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %434 = llvm.load %433 : !llvm.ptr<i32>
    %435 = llvm.icmp "slt" %428, %434 : i32
    %436 = llvm.select %435, %428, %434 : i1, i32
    %437 = llvm.extractvalue %402[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.add %406, %411  : i64
    %439 = llvm.add %438, %416  : i64
    %440 = llvm.add %439, %421  : i64
    %441 = llvm.getelementptr %437[%440] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %436, %441 : !llvm.ptr<i32>
    %442 = llvm.add %421, %420  : i64
    llvm.br ^bb49(%442 : i64)
  ^bb51:  // pred: ^bb49
    %443 = llvm.add %416, %415  : i64
    llvm.br ^bb47(%443 : i64)
  ^bb52:  // pred: ^bb47
    %444 = llvm.add %411, %410  : i64
    llvm.br ^bb45(%444 : i64)
  ^bb53:  // pred: ^bb45
    %445 = llvm.add %406, %405  : i64
    llvm.br ^bb43(%445 : i64)
  ^bb54:  // pred: ^bb43
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.mlir.null : !llvm.ptr<i32>
    %452 = llvm.getelementptr %451[%446] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %453 = llvm.ptrtoint %452 : !llvm.ptr<i32> to i64
    %454 = llvm.mlir.constant(16 : index) : i64
    %455 = llvm.add %453, %454  : i64
    %456 = llvm.call @malloc(%455) : (i64) -> !llvm.ptr<i8>
    %457 = llvm.bitcast %456 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %458 = llvm.ptrtoint %457 : !llvm.ptr<i32> to i64
    %459 = llvm.mlir.constant(1 : index) : i64
    %460 = llvm.sub %454, %459  : i64
    %461 = llvm.add %458, %460  : i64
    %462 = llvm.urem %461, %454  : i64
    %463 = llvm.sub %461, %462  : i64
    %464 = llvm.inttoptr %463 : i64 to !llvm.ptr<i32>
    %465 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %466 = llvm.insertvalue %457, %465[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.insertvalue %464, %466[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.mlir.constant(0 : index) : i64
    %469 = llvm.insertvalue %468, %467[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.insertvalue %446, %469[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.insertvalue %447, %470[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.insertvalue %448, %471[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.insertvalue %449, %472[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %447, %473[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %448, %474[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %449, %475[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.insertvalue %450, %476[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.mlir.constant(0 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%478 : i64)
  ^bb55(%481: i64):  // 2 preds: ^bb54, ^bb65
    %482 = llvm.icmp "slt" %481, %479 : i64
    llvm.cond_br %482, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %483 = llvm.mlir.constant(0 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%483 : i64)
  ^bb57(%486: i64):  // 2 preds: ^bb56, ^bb64
    %487 = llvm.icmp "slt" %486, %484 : i64
    llvm.cond_br %487, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %488 = llvm.mlir.constant(0 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%488 : i64)
  ^bb59(%491: i64):  // 2 preds: ^bb58, ^bb63
    %492 = llvm.icmp "slt" %491, %489 : i64
    llvm.cond_br %492, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %493 = llvm.mlir.constant(0 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%493 : i64)
  ^bb61(%496: i64):  // 2 preds: ^bb60, ^bb62
    %497 = llvm.icmp "slt" %496, %494 : i64
    llvm.cond_br %497, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %498 = llvm.extractvalue %370[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.add %481, %486  : i64
    %500 = llvm.add %499, %491  : i64
    %501 = llvm.add %500, %496  : i64
    %502 = llvm.getelementptr %498[%501] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %503 = llvm.load %502 : !llvm.ptr<i32>
    %504 = llvm.extractvalue %402[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.add %481, %486  : i64
    %506 = llvm.add %505, %491  : i64
    %507 = llvm.add %506, %496  : i64
    %508 = llvm.getelementptr %504[%507] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %509 = llvm.load %508 : !llvm.ptr<i32>
    %510 = llvm.mul %503, %509  : i32
    %511 = llvm.extractvalue %477[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.add %481, %486  : i64
    %513 = llvm.add %512, %491  : i64
    %514 = llvm.add %513, %496  : i64
    %515 = llvm.getelementptr %511[%514] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %510, %515 : !llvm.ptr<i32>
    %516 = llvm.add %496, %495  : i64
    llvm.br ^bb61(%516 : i64)
  ^bb63:  // pred: ^bb61
    %517 = llvm.add %491, %490  : i64
    llvm.br ^bb59(%517 : i64)
  ^bb64:  // pred: ^bb59
    %518 = llvm.add %486, %485  : i64
    llvm.br ^bb57(%518 : i64)
  ^bb65:  // pred: ^bb57
    %519 = llvm.add %481, %480  : i64
    llvm.br ^bb55(%519 : i64)
  ^bb66:  // pred: ^bb55
    %520 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %521 = llvm.insertvalue %304, %520[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %522 = llvm.insertvalue %477, %521[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %522 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %52 = llvm.extractvalue %51[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %53 = llvm.extractvalue %51[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %54 = llvm.mlir.constant(2 : i64) : i64
    %55 = llvm.mlir.constant(16 : i64) : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %58 = llvm.mlir.constant(5 : i64) : i64
    %59 = llvm.call @omTensorCreateUntyped(%58) : (i64) -> !llvm.ptr<i8>
    %60 = llvm.mlir.constant(1 : i64) : i64
    %61 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %63 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.bitcast %63 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%59, %60, %62, %64) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %65 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%59, %65) : (!llvm.ptr<i8>, i64) -> ()
    %66 = llvm.call @omTensorGetShape(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %67 = llvm.call @omTensorGetStrides(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.mlir.constant(0 : i64) : i64
    %69 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %70 = llvm.getelementptr %66[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %72 = llvm.getelementptr %67[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %75 = llvm.getelementptr %66[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %77 = llvm.getelementptr %67[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %80 = llvm.getelementptr %66[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %82 = llvm.getelementptr %67[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.mlir.constant(3 : i64) : i64
    %84 = llvm.extractvalue %52[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %85 = llvm.getelementptr %66[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.extractvalue %52[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %87 = llvm.getelementptr %67[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.mlir.constant(4 : i64) : i64
    %89 = llvm.extractvalue %52[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %90 = llvm.getelementptr %66[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %52[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %92 = llvm.getelementptr %67[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.getelementptr %57[%93] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %59, %94 : !llvm.ptr<ptr<i8>>
    %95 = llvm.mlir.constant(4 : i64) : i64
    %96 = llvm.call @omTensorCreateUntyped(%95) : (i64) -> !llvm.ptr<i8>
    %97 = llvm.mlir.constant(1 : i64) : i64
    %98 = llvm.extractvalue %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.bitcast %98 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %100 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.bitcast %100 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%96, %97, %99, %101) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %102 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%96, %102) : (!llvm.ptr<i8>, i64) -> ()
    %103 = llvm.call @omTensorGetShape(%96) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %104 = llvm.call @omTensorGetStrides(%96) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %105 = llvm.mlir.constant(0 : i64) : i64
    %106 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %103[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %104[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(1 : i64) : i64
    %111 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %103[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %104[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(2 : i64) : i64
    %116 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %103[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %104[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.mlir.constant(3 : i64) : i64
    %121 = llvm.extractvalue %53[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %103[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.extractvalue %53[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %104[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.mlir.constant(1 : i64) : i64
    %126 = llvm.getelementptr %57[%125] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %96, %126 : !llvm.ptr<ptr<i8>>
    %127 = llvm.call @omTensorListCreate(%57, %54, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %127 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<76 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<76 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<145 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<145 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

