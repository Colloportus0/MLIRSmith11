module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @Resize_Size(!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, f64, i64, f64, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.mlir.global internal constant @"om_/Resize"("/Resize") {addr_space = 0 : i32, alignment = 16 : i64}
  llvm.mlir.global internal constant @om_floor("floor") {addr_space = 0 : i32, alignment = 16 : i64}
  llvm.mlir.global internal constant @om_linear("linear") {addr_space = 0 : i32, alignment = 16 : i64}
  llvm.mlir.global internal constant @om_half_pixel("half_pixel") {addr_space = 0 : i32, alignment = 16 : i64}
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
  llvm.mlir.global internal constant @constant_0(dense<1> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v5_0", "v2_0"]} {
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
    %14 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %15 = llvm.mlir.constant(1.000000e+00 : f32) : f32
    %16 = llvm.mlir.constant(0xFF800000 : f32) : f32
    %17 = llvm.mlir.constant(2147483647 : i32) : i32
    %18 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<3 x i64>>
    %19 = llvm.bitcast %18 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.insertvalue %19, %20[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %19, %21[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(0 : index) : i64
    %24 = llvm.insertvalue %23, %22[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(3 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.null : !llvm.ptr<i32>
    %35 = llvm.getelementptr %34[%29] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %36 = llvm.ptrtoint %35 : !llvm.ptr<i32> to i64
    %37 = llvm.mlir.constant(16 : index) : i64
    %38 = llvm.add %36, %37  : i64
    %39 = llvm.call @malloc(%38) : (i64) -> !llvm.ptr<i8>
    %40 = llvm.bitcast %39 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %41 = llvm.ptrtoint %40 : !llvm.ptr<i32> to i64
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.sub %37, %42  : i64
    %44 = llvm.add %41, %43  : i64
    %45 = llvm.urem %44, %37  : i64
    %46 = llvm.sub %44, %45  : i64
    %47 = llvm.inttoptr %46 : i64 to !llvm.ptr<i32>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.insertvalue %40, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %47, %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.insertvalue %51, %50[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.insertvalue %29, %52[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %30, %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %31, %54[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %32, %55[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %30, %56[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %31, %57[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %32, %58[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %33, %59[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%61 : i64)
  ^bb1(%64: i64):  // 2 preds: ^bb0, ^bb11
    %65 = llvm.icmp "slt" %64, %62 : i64
    llvm.cond_br %65, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%66 : i64)
  ^bb3(%69: i64):  // 2 preds: ^bb2, ^bb10
    %70 = llvm.icmp "slt" %69, %67 : i64
    llvm.cond_br %70, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%71 : i64)
  ^bb5(%74: i64):  // 2 preds: ^bb4, ^bb9
    %75 = llvm.icmp "slt" %74, %72 : i64
    llvm.cond_br %75, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%76 : i64)
  ^bb7(%79: i64):  // 2 preds: ^bb6, ^bb8
    %80 = llvm.icmp "slt" %79, %77 : i64
    llvm.cond_br %80, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %81 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.add %64, %69  : i64
    %83 = llvm.add %82, %74  : i64
    %84 = llvm.add %83, %79  : i64
    %85 = llvm.getelementptr %81[%84] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %17, %85 : !llvm.ptr<i32>
    %86 = llvm.add %79, %78  : i64
    llvm.br ^bb7(%86 : i64)
  ^bb9:  // pred: ^bb7
    %87 = llvm.add %74, %73  : i64
    llvm.br ^bb5(%87 : i64)
  ^bb10:  // pred: ^bb5
    %88 = llvm.add %69, %68  : i64
    llvm.br ^bb3(%88 : i64)
  ^bb11:  // pred: ^bb3
    %89 = llvm.add %64, %63  : i64
    llvm.br ^bb1(%89 : i64)
  ^bb12:  // pred: ^bb1
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%90 : i64)
  ^bb13(%93: i64):  // 2 preds: ^bb12, ^bb26
    %94 = llvm.icmp "slt" %93, %91 : i64
    llvm.cond_br %94, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%95 : i64)
  ^bb15(%98: i64):  // 2 preds: ^bb14, ^bb25
    %99 = llvm.icmp "slt" %98, %96 : i64
    llvm.cond_br %99, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%100 : i64)
  ^bb17(%103: i64):  // 2 preds: ^bb16, ^bb24
    %104 = llvm.icmp "slt" %103, %101 : i64
    llvm.cond_br %104, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%105 : i64)
  ^bb19(%108: i64):  // 2 preds: ^bb18, ^bb23
    %109 = llvm.icmp "slt" %108, %106 : i64
    llvm.cond_br %109, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%110 : i64)
  ^bb21(%113: i64):  // 2 preds: ^bb20, ^bb22
    %114 = llvm.icmp "slt" %113, %111 : i64
    llvm.cond_br %114, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %115 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %116 = llvm.add %93, %98  : i64
    %117 = llvm.add %116, %103  : i64
    %118 = llvm.add %117, %108  : i64
    %119 = llvm.add %118, %113  : i64
    %120 = llvm.getelementptr %115[%119] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %121 = llvm.load %120 : !llvm.ptr<i32>
    %122 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.add %93, %98  : i64
    %124 = llvm.add %123, %103  : i64
    %125 = llvm.add %124, %113  : i64
    %126 = llvm.getelementptr %122[%125] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %127 = llvm.load %126 : !llvm.ptr<i32>
    %128 = llvm.icmp "slt" %127, %121 : i32
    %129 = llvm.select %128, %127, %121 : i1, i32
    %130 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.add %93, %98  : i64
    %132 = llvm.add %131, %103  : i64
    %133 = llvm.add %132, %113  : i64
    %134 = llvm.getelementptr %130[%133] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %129, %134 : !llvm.ptr<i32>
    %135 = llvm.add %113, %112  : i64
    llvm.br ^bb21(%135 : i64)
  ^bb23:  // pred: ^bb21
    %136 = llvm.add %108, %107  : i64
    llvm.br ^bb19(%136 : i64)
  ^bb24:  // pred: ^bb19
    %137 = llvm.add %103, %102  : i64
    llvm.br ^bb17(%137 : i64)
  ^bb25:  // pred: ^bb17
    %138 = llvm.add %98, %97  : i64
    llvm.br ^bb15(%138 : i64)
  ^bb26:  // pred: ^bb15
    %139 = llvm.add %93, %92  : i64
    llvm.br ^bb13(%139 : i64)
  ^bb27:  // pred: ^bb13
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.null : !llvm.ptr<f32>
    %146 = llvm.getelementptr %145[%140] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %147 = llvm.ptrtoint %146 : !llvm.ptr<f32> to i64
    %148 = llvm.mlir.constant(16 : index) : i64
    %149 = llvm.add %147, %148  : i64
    %150 = llvm.call @malloc(%149) : (i64) -> !llvm.ptr<i8>
    %151 = llvm.bitcast %150 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %152 = llvm.ptrtoint %151 : !llvm.ptr<f32> to i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.sub %148, %153  : i64
    %155 = llvm.add %152, %154  : i64
    %156 = llvm.urem %155, %148  : i64
    %157 = llvm.sub %155, %156  : i64
    %158 = llvm.inttoptr %157 : i64 to !llvm.ptr<f32>
    %159 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %160 = llvm.insertvalue %151, %159[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.insertvalue %158, %160[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.insertvalue %162, %161[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.insertvalue %140, %163[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.insertvalue %141, %164[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.insertvalue %142, %165[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.insertvalue %143, %166[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.insertvalue %141, %167[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.insertvalue %142, %168[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.insertvalue %143, %169[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.insertvalue %144, %170[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%172 : i64)
  ^bb28(%175: i64):  // 2 preds: ^bb27, ^bb38
    %176 = llvm.icmp "slt" %175, %173 : i64
    llvm.cond_br %176, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%177 : i64)
  ^bb30(%180: i64):  // 2 preds: ^bb29, ^bb37
    %181 = llvm.icmp "slt" %180, %178 : i64
    llvm.cond_br %181, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%182 : i64)
  ^bb32(%185: i64):  // 2 preds: ^bb31, ^bb36
    %186 = llvm.icmp "slt" %185, %183 : i64
    llvm.cond_br %186, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%187 : i64)
  ^bb34(%190: i64):  // 2 preds: ^bb33, ^bb35
    %191 = llvm.icmp "slt" %190, %188 : i64
    llvm.cond_br %191, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %192 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.add %175, %180  : i64
    %194 = llvm.add %193, %185  : i64
    %195 = llvm.add %194, %190  : i64
    %196 = llvm.getelementptr %192[%195] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %197 = llvm.load %196 : !llvm.ptr<i32>
    %198 = llvm.sitofp %197 : i32 to f32
    %199 = llvm.extractvalue %171[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.add %175, %180  : i64
    %201 = llvm.add %200, %185  : i64
    %202 = llvm.add %201, %190  : i64
    %203 = llvm.getelementptr %199[%202] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %198, %203 : !llvm.ptr<f32>
    %204 = llvm.add %190, %189  : i64
    llvm.br ^bb34(%204 : i64)
  ^bb36:  // pred: ^bb34
    %205 = llvm.add %185, %184  : i64
    llvm.br ^bb32(%205 : i64)
  ^bb37:  // pred: ^bb32
    %206 = llvm.add %180, %179  : i64
    llvm.br ^bb30(%206 : i64)
  ^bb38:  // pred: ^bb30
    %207 = llvm.add %175, %174  : i64
    llvm.br ^bb28(%207 : i64)
  ^bb39:  // pred: ^bb28
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.null : !llvm.ptr<f32>
    %213 = llvm.getelementptr %212[%208] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %214 = llvm.ptrtoint %213 : !llvm.ptr<f32> to i64
    %215 = llvm.mlir.constant(16 : index) : i64
    %216 = llvm.add %214, %215  : i64
    %217 = llvm.call @malloc(%216) : (i64) -> !llvm.ptr<i8>
    %218 = llvm.bitcast %217 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %219 = llvm.ptrtoint %218 : !llvm.ptr<f32> to i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.sub %215, %220  : i64
    %222 = llvm.add %219, %221  : i64
    %223 = llvm.urem %222, %215  : i64
    %224 = llvm.sub %222, %223  : i64
    %225 = llvm.inttoptr %224 : i64 to !llvm.ptr<f32>
    %226 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
    %227 = llvm.insertvalue %218, %226[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %228 = llvm.insertvalue %225, %227[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.insertvalue %229, %228[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %231 = llvm.insertvalue %208, %230[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %232 = llvm.insertvalue %209, %231[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %233 = llvm.insertvalue %210, %232[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %234 = llvm.insertvalue %209, %233[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %235 = llvm.insertvalue %210, %234[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %236 = llvm.insertvalue %211, %235[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %237 = llvm.mlir.constant(0 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%237 : i64)
  ^bb40(%240: i64):  // 2 preds: ^bb39, ^bb47
    %241 = llvm.icmp "slt" %240, %238 : i64
    llvm.cond_br %241, ^bb41, ^bb48
  ^bb41:  // pred: ^bb40
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%242 : i64)
  ^bb42(%245: i64):  // 2 preds: ^bb41, ^bb46
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb43, ^bb47
  ^bb43:  // pred: ^bb42
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%247 : i64)
  ^bb44(%250: i64):  // 2 preds: ^bb43, ^bb45
    %251 = llvm.icmp "slt" %250, %248 : i64
    llvm.cond_br %251, ^bb45, ^bb46
  ^bb45:  // pred: ^bb44
    %252 = llvm.extractvalue %236[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %253 = llvm.add %240, %245  : i64
    %254 = llvm.add %253, %250  : i64
    %255 = llvm.getelementptr %252[%254] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %16, %255 : !llvm.ptr<f32>
    %256 = llvm.add %250, %249  : i64
    llvm.br ^bb44(%256 : i64)
  ^bb46:  // pred: ^bb44
    %257 = llvm.add %245, %244  : i64
    llvm.br ^bb42(%257 : i64)
  ^bb47:  // pred: ^bb42
    %258 = llvm.add %240, %239  : i64
    llvm.br ^bb40(%258 : i64)
  ^bb48:  // pred: ^bb40
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%259 : i64)
  ^bb49(%262: i64):  // 2 preds: ^bb48, ^bb59
    %263 = llvm.icmp "slt" %262, %260 : i64
    llvm.cond_br %263, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%264 : i64)
  ^bb51(%267: i64):  // 2 preds: ^bb50, ^bb58
    %268 = llvm.icmp "slt" %267, %265 : i64
    llvm.cond_br %268, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %269 = llvm.mlir.constant(0 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%269 : i64)
  ^bb53(%272: i64):  // 2 preds: ^bb52, ^bb57
    %273 = llvm.icmp "slt" %272, %270 : i64
    llvm.cond_br %273, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %274 = llvm.mlir.constant(0 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%274 : i64)
  ^bb55(%277: i64):  // 2 preds: ^bb54, ^bb56
    %278 = llvm.icmp "slt" %277, %275 : i64
    llvm.cond_br %278, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %279 = llvm.extractvalue %171[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.add %262, %267  : i64
    %281 = llvm.add %280, %272  : i64
    %282 = llvm.add %281, %277  : i64
    %283 = llvm.getelementptr %279[%282] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %284 = llvm.load %283 : !llvm.ptr<f32>
    %285 = llvm.extractvalue %236[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %286 = llvm.add %262, %272  : i64
    %287 = llvm.add %286, %277  : i64
    %288 = llvm.getelementptr %285[%287] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %289 = llvm.load %288 : !llvm.ptr<f32>
    %290 = llvm.fcmp "ogt" %289, %284 : f32
    %291 = llvm.select %290, %289, %284 : i1, f32
    %292 = llvm.extractvalue %236[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %293 = llvm.add %262, %272  : i64
    %294 = llvm.add %293, %277  : i64
    %295 = llvm.getelementptr %292[%294] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %291, %295 : !llvm.ptr<f32>
    %296 = llvm.add %277, %276  : i64
    llvm.br ^bb55(%296 : i64)
  ^bb57:  // pred: ^bb55
    %297 = llvm.add %272, %271  : i64
    llvm.br ^bb53(%297 : i64)
  ^bb58:  // pred: ^bb53
    %298 = llvm.add %267, %266  : i64
    llvm.br ^bb51(%298 : i64)
  ^bb59:  // pred: ^bb51
    %299 = llvm.add %262, %261  : i64
    llvm.br ^bb49(%299 : i64)
  ^bb60:  // pred: ^bb49
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.mlir.null : !llvm.ptr<f32>
    %305 = llvm.getelementptr %304[%300] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %306 = llvm.ptrtoint %305 : !llvm.ptr<f32> to i64
    %307 = llvm.mlir.constant(16 : index) : i64
    %308 = llvm.add %306, %307  : i64
    %309 = llvm.call @malloc(%308) : (i64) -> !llvm.ptr<i8>
    %310 = llvm.bitcast %309 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %311 = llvm.ptrtoint %310 : !llvm.ptr<f32> to i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.sub %307, %312  : i64
    %314 = llvm.add %311, %313  : i64
    %315 = llvm.urem %314, %307  : i64
    %316 = llvm.sub %314, %315  : i64
    %317 = llvm.inttoptr %316 : i64 to !llvm.ptr<f32>
    %318 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
    %319 = llvm.insertvalue %310, %318[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %320 = llvm.insertvalue %317, %319[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.insertvalue %321, %320[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %323 = llvm.insertvalue %300, %322[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %324 = llvm.insertvalue %301, %323[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %325 = llvm.insertvalue %302, %324[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %326 = llvm.insertvalue %301, %325[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %327 = llvm.insertvalue %302, %326[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %328 = llvm.insertvalue %303, %327[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %329 = llvm.mlir.constant(3 : i64) : i64
    %330 = llvm.call @omTensorCreateUntyped(%329) : (i64) -> !llvm.ptr<i8>
    %331 = llvm.mlir.constant(0 : i64) : i64
    %332 = llvm.extractvalue %328[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %333 = llvm.bitcast %332 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %334 = llvm.extractvalue %328[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %335 = llvm.bitcast %334 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%330, %331, %333, %335) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %336 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%330, %336) : (!llvm.ptr<i8>, i64) -> ()
    %337 = llvm.call @omTensorGetShape(%330) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %338 = llvm.call @omTensorGetStrides(%330) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %339 = llvm.mlir.constant(0 : i64) : i64
    %340 = llvm.extractvalue %328[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %341 = llvm.getelementptr %337[%339] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %340, %341 : !llvm.ptr<i64>
    %342 = llvm.extractvalue %328[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %343 = llvm.getelementptr %338[%339] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %342, %343 : !llvm.ptr<i64>
    %344 = llvm.mlir.constant(1 : i64) : i64
    %345 = llvm.extractvalue %328[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %346 = llvm.getelementptr %337[%344] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %345, %346 : !llvm.ptr<i64>
    %347 = llvm.extractvalue %328[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %348 = llvm.getelementptr %338[%344] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %347, %348 : !llvm.ptr<i64>
    %349 = llvm.mlir.constant(2 : i64) : i64
    %350 = llvm.extractvalue %328[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %351 = llvm.getelementptr %337[%349] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %350, %351 : !llvm.ptr<i64>
    %352 = llvm.extractvalue %328[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %353 = llvm.getelementptr %338[%349] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %352, %353 : !llvm.ptr<i64>
    %354 = llvm.mlir.constant(3 : i64) : i64
    %355 = llvm.call @omTensorCreateUntyped(%354) : (i64) -> !llvm.ptr<i8>
    %356 = llvm.mlir.constant(0 : i64) : i64
    %357 = llvm.extractvalue %236[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %358 = llvm.bitcast %357 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %359 = llvm.extractvalue %236[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %360 = llvm.bitcast %359 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%355, %356, %358, %360) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %361 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%355, %361) : (!llvm.ptr<i8>, i64) -> ()
    %362 = llvm.call @omTensorGetShape(%355) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %363 = llvm.call @omTensorGetStrides(%355) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %364 = llvm.mlir.constant(0 : i64) : i64
    %365 = llvm.extractvalue %236[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %366 = llvm.getelementptr %362[%364] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %365, %366 : !llvm.ptr<i64>
    %367 = llvm.extractvalue %236[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %368 = llvm.getelementptr %363[%364] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %367, %368 : !llvm.ptr<i64>
    %369 = llvm.mlir.constant(1 : i64) : i64
    %370 = llvm.extractvalue %236[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %371 = llvm.getelementptr %362[%369] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %370, %371 : !llvm.ptr<i64>
    %372 = llvm.extractvalue %236[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %373 = llvm.getelementptr %363[%369] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %372, %373 : !llvm.ptr<i64>
    %374 = llvm.mlir.constant(2 : i64) : i64
    %375 = llvm.extractvalue %236[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %376 = llvm.getelementptr %362[%374] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %375, %376 : !llvm.ptr<i64>
    %377 = llvm.extractvalue %236[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %378 = llvm.getelementptr %363[%374] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %377, %378 : !llvm.ptr<i64>
    %379 = llvm.mlir.constant(1 : i64) : i64
    %380 = llvm.call @omTensorCreateUntyped(%379) : (i64) -> !llvm.ptr<i8>
    %381 = llvm.mlir.constant(0 : i64) : i64
    %382 = llvm.extractvalue %28[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %383 = llvm.bitcast %382 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %384 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %385 = llvm.bitcast %384 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%380, %381, %383, %385) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %386 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%380, %386) : (!llvm.ptr<i8>, i64) -> ()
    %387 = llvm.call @omTensorGetShape(%380) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %388 = llvm.call @omTensorGetStrides(%380) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %389 = llvm.mlir.constant(0 : i64) : i64
    %390 = llvm.extractvalue %28[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %391 = llvm.getelementptr %387[%389] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %390, %391 : !llvm.ptr<i64>
    %392 = llvm.extractvalue %28[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %393 = llvm.getelementptr %388[%389] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %392, %393 : !llvm.ptr<i64>
    %394 = llvm.mlir.addressof @om_half_pixel : !llvm.ptr<array<10 x i8>>
    %395 = llvm.mlir.constant(0 : i64) : i64
    %396 = llvm.getelementptr %394[%395, %395] : (!llvm.ptr<array<10 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %397 = llvm.mlir.constant(-7.500000e-01 : f64) : f64
    %398 = llvm.mlir.constant(0 : si64) : i64
    %399 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %400 = llvm.mlir.addressof @om_linear : !llvm.ptr<array<6 x i8>>
    %401 = llvm.mlir.constant(0 : i64) : i64
    %402 = llvm.getelementptr %400[%401, %401] : (!llvm.ptr<array<6 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %403 = llvm.mlir.addressof @om_floor : !llvm.ptr<array<5 x i8>>
    %404 = llvm.mlir.constant(0 : i64) : i64
    %405 = llvm.getelementptr %403[%404, %404] : (!llvm.ptr<array<5 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %406 = llvm.mlir.addressof @"om_/Resize" : !llvm.ptr<array<7 x i8>>
    %407 = llvm.mlir.constant(0 : i64) : i64
    %408 = llvm.getelementptr %406[%407, %407] : (!llvm.ptr<array<7 x i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.call @Resize_Size(%330, %355, %380, %396, %397, %398, %399, %402, %405, %408) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, f64, i64, f64, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    %414 = llvm.mlir.null : !llvm.ptr<f32>
    %415 = llvm.getelementptr %414[%409] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %416 = llvm.ptrtoint %415 : !llvm.ptr<f32> to i64
    %417 = llvm.mlir.constant(16 : index) : i64
    %418 = llvm.add %416, %417  : i64
    %419 = llvm.call @malloc(%418) : (i64) -> !llvm.ptr<i8>
    %420 = llvm.bitcast %419 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %421 = llvm.ptrtoint %420 : !llvm.ptr<f32> to i64
    %422 = llvm.mlir.constant(1 : index) : i64
    %423 = llvm.sub %417, %422  : i64
    %424 = llvm.add %421, %423  : i64
    %425 = llvm.urem %424, %417  : i64
    %426 = llvm.sub %424, %425  : i64
    %427 = llvm.inttoptr %426 : i64 to !llvm.ptr<f32>
    %428 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %429 = llvm.insertvalue %420, %428[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.insertvalue %427, %429[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.mlir.constant(0 : index) : i64
    %432 = llvm.insertvalue %431, %430[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.insertvalue %409, %432[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.insertvalue %410, %433[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %411, %434[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.insertvalue %412, %435[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.insertvalue %410, %436[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %411, %437[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %412, %438[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.insertvalue %413, %439[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.mlir.constant(0 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%441 : i64)
  ^bb61(%444: i64):  // 2 preds: ^bb60, ^bb71
    %445 = llvm.icmp "slt" %444, %442 : i64
    llvm.cond_br %445, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%446 : i64)
  ^bb63(%449: i64):  // 2 preds: ^bb62, ^bb70
    %450 = llvm.icmp "slt" %449, %447 : i64
    llvm.cond_br %450, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%451 : i64)
  ^bb65(%454: i64):  // 2 preds: ^bb64, ^bb69
    %455 = llvm.icmp "slt" %454, %452 : i64
    llvm.cond_br %455, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%456 : i64)
  ^bb67(%459: i64):  // 2 preds: ^bb66, ^bb68
    %460 = llvm.icmp "slt" %459, %457 : i64
    llvm.cond_br %460, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %461 = llvm.extractvalue %171[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.add %444, %449  : i64
    %463 = llvm.add %462, %454  : i64
    %464 = llvm.add %463, %459  : i64
    %465 = llvm.getelementptr %461[%464] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %466 = llvm.load %465 : !llvm.ptr<f32>
    %467 = llvm.fsub %14, %466  : f32
    %468 = llvm.intr.exp(%467)  : (f32) -> f32
    %469 = llvm.fadd %468, %15  : f32
    %470 = llvm.fdiv %15, %469  : f32
    %471 = llvm.extractvalue %440[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.add %444, %449  : i64
    %473 = llvm.add %472, %454  : i64
    %474 = llvm.add %473, %459  : i64
    %475 = llvm.getelementptr %471[%474] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %470, %475 : !llvm.ptr<f32>
    %476 = llvm.add %459, %458  : i64
    llvm.br ^bb67(%476 : i64)
  ^bb69:  // pred: ^bb67
    %477 = llvm.add %454, %453  : i64
    llvm.br ^bb65(%477 : i64)
  ^bb70:  // pred: ^bb65
    %478 = llvm.add %449, %448  : i64
    llvm.br ^bb63(%478 : i64)
  ^bb71:  // pred: ^bb63
    %479 = llvm.add %444, %443  : i64
    llvm.br ^bb61(%479 : i64)
  ^bb72:  // pred: ^bb61
    %480 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %481 = llvm.insertvalue %328, %480[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %482 = llvm.insertvalue %440, %481[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %482 : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v5_0", "v2_0"]} {
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
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %52 = llvm.extractvalue %51[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %53 = llvm.extractvalue %51[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %54 = llvm.mlir.constant(2 : i64) : i64
    %55 = llvm.mlir.constant(16 : i64) : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %58 = llvm.mlir.constant(3 : i64) : i64
    %59 = llvm.call @omTensorCreateUntyped(%58) : (i64) -> !llvm.ptr<i8>
    %60 = llvm.mlir.constant(1 : i64) : i64
    %61 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %63 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.bitcast %63 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%59, %60, %62, %64) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %65 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%59, %65) : (!llvm.ptr<i8>, i64) -> ()
    %66 = llvm.call @omTensorGetShape(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %67 = llvm.call @omTensorGetStrides(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.mlir.constant(0 : i64) : i64
    %69 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.getelementptr %66[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %72 = llvm.getelementptr %67[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %66[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %77 = llvm.getelementptr %67[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %80 = llvm.getelementptr %66[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.getelementptr %67[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.mlir.constant(0 : i64) : i64
    %84 = llvm.getelementptr %57[%83] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %59, %84 : !llvm.ptr<ptr<i8>>
    %85 = llvm.mlir.constant(4 : i64) : i64
    %86 = llvm.call @omTensorCreateUntyped(%85) : (i64) -> !llvm.ptr<i8>
    %87 = llvm.mlir.constant(1 : i64) : i64
    %88 = llvm.extractvalue %53[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %90 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.bitcast %90 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%86, %87, %89, %91) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %92 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%86, %92) : (!llvm.ptr<i8>, i64) -> ()
    %93 = llvm.call @omTensorGetShape(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.call @omTensorGetStrides(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %95 = llvm.mlir.constant(0 : i64) : i64
    %96 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %93[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.getelementptr %94[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %98, %99 : !llvm.ptr<i64>
    %100 = llvm.mlir.constant(1 : i64) : i64
    %101 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %93[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %94[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(2 : i64) : i64
    %106 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %93[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %94[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(3 : i64) : i64
    %111 = llvm.extractvalue %53[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %93[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %53[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %94[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(1 : i64) : i64
    %116 = llvm.getelementptr %57[%115] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %86, %116 : !llvm.ptr<ptr<i8>>
    %117 = llvm.call @omTensorListCreate(%57, %54, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

