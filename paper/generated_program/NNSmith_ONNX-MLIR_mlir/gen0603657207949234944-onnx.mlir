module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_2(dense<0.000000e+00> : tensor<1xf32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x f32>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v0_0"]} {
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
    %12 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %17 = llvm.bitcast %16 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %23 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %25 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %26 = llvm.insertvalue %24, %25[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %27 = llvm.insertvalue %24, %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.insertvalue %28, %27[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %30 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x f32>>
    %31 = llvm.bitcast %30 : !llvm.ptr<array<1 x f32>> to !llvm.ptr<f32>
    %32 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %33 = llvm.insertvalue %31, %32[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.insertvalue %37, %36[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.insertvalue %39, %38[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.mlir.null : !llvm.ptr<i32>
    %47 = llvm.getelementptr %46[%41] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %48 = llvm.ptrtoint %47 : !llvm.ptr<i32> to i64
    %49 = llvm.mlir.constant(16 : index) : i64
    %50 = llvm.add %48, %49  : i64
    %51 = llvm.call @malloc(%50) : (i64) -> !llvm.ptr<i8>
    %52 = llvm.bitcast %51 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %53 = llvm.ptrtoint %52 : !llvm.ptr<i32> to i64
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.sub %49, %54  : i64
    %56 = llvm.add %53, %55  : i64
    %57 = llvm.urem %56, %49  : i64
    %58 = llvm.sub %56, %57  : i64
    %59 = llvm.inttoptr %58 : i64 to !llvm.ptr<i32>
    %60 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %61 = llvm.insertvalue %52, %60[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %59, %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.insertvalue %63, %62[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %41, %64[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %42, %65[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %43, %66[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %44, %67[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %42, %68[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %43, %69[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %44, %70[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %45, %71[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%73 : i64)
  ^bb1(%76: i64):  // 2 preds: ^bb0, ^bb11
    %77 = llvm.icmp "slt" %76, %74 : i64
    llvm.cond_br %77, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%78 : i64)
  ^bb3(%81: i64):  // 2 preds: ^bb2, ^bb10
    %82 = llvm.icmp "slt" %81, %79 : i64
    llvm.cond_br %82, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%83 : i64)
  ^bb5(%86: i64):  // 2 preds: ^bb4, ^bb9
    %87 = llvm.icmp "slt" %86, %84 : i64
    llvm.cond_br %87, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%88 : i64)
  ^bb7(%91: i64):  // 2 preds: ^bb6, ^bb8
    %92 = llvm.icmp "slt" %91, %89 : i64
    llvm.cond_br %92, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %93 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.add %76, %81  : i64
    %95 = llvm.add %94, %86  : i64
    %96 = llvm.add %95, %91  : i64
    %97 = llvm.getelementptr %93[%96] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %98 = llvm.load %97 : !llvm.ptr<i32>
    %99 = llvm.extractvalue %22[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %100 = llvm.load %99 : !llvm.ptr<i32>
    %101 = llvm.icmp "slt" %98, %100 : i32
    %102 = llvm.select %101, %100, %98 : i1, i32
    %103 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %104 = llvm.load %103 : !llvm.ptr<i32>
    %105 = llvm.icmp "slt" %102, %104 : i32
    %106 = llvm.select %105, %102, %104 : i1, i32
    %107 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.add %76, %81  : i64
    %109 = llvm.add %108, %86  : i64
    %110 = llvm.add %109, %91  : i64
    %111 = llvm.getelementptr %107[%110] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %106, %111 : !llvm.ptr<i32>
    %112 = llvm.add %91, %90  : i64
    llvm.br ^bb7(%112 : i64)
  ^bb9:  // pred: ^bb7
    %113 = llvm.add %86, %85  : i64
    llvm.br ^bb5(%113 : i64)
  ^bb10:  // pred: ^bb5
    %114 = llvm.add %81, %80  : i64
    llvm.br ^bb3(%114 : i64)
  ^bb11:  // pred: ^bb3
    %115 = llvm.add %76, %75  : i64
    llvm.br ^bb1(%115 : i64)
  ^bb12:  // pred: ^bb1
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.null : !llvm.ptr<i32>
    %122 = llvm.getelementptr %121[%116] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %123 = llvm.ptrtoint %122 : !llvm.ptr<i32> to i64
    %124 = llvm.mlir.constant(16 : index) : i64
    %125 = llvm.add %123, %124  : i64
    %126 = llvm.call @malloc(%125) : (i64) -> !llvm.ptr<i8>
    %127 = llvm.bitcast %126 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %128 = llvm.ptrtoint %127 : !llvm.ptr<i32> to i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.sub %124, %129  : i64
    %131 = llvm.add %128, %130  : i64
    %132 = llvm.urem %131, %124  : i64
    %133 = llvm.sub %131, %132  : i64
    %134 = llvm.inttoptr %133 : i64 to !llvm.ptr<i32>
    %135 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %136 = llvm.insertvalue %127, %135[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.insertvalue %134, %136[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.insertvalue %138, %137[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.insertvalue %116, %139[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.insertvalue %117, %140[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.insertvalue %118, %141[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.insertvalue %119, %142[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %117, %143[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %118, %144[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.insertvalue %119, %145[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %120, %146[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%148 : i64)
  ^bb13(%151: i64):  // 2 preds: ^bb12, ^bb23
    %152 = llvm.icmp "slt" %151, %149 : i64
    llvm.cond_br %152, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%153 : i64)
  ^bb15(%156: i64):  // 2 preds: ^bb14, ^bb22
    %157 = llvm.icmp "slt" %156, %154 : i64
    llvm.cond_br %157, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%158 : i64)
  ^bb17(%161: i64):  // 2 preds: ^bb16, ^bb21
    %162 = llvm.icmp "slt" %161, %159 : i64
    llvm.cond_br %162, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%163 : i64)
  ^bb19(%166: i64):  // 2 preds: ^bb18, ^bb20
    %167 = llvm.icmp "slt" %166, %164 : i64
    llvm.cond_br %167, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %168 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.add %151, %156  : i64
    %170 = llvm.add %169, %161  : i64
    %171 = llvm.add %170, %166  : i64
    %172 = llvm.getelementptr %168[%171] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %173 = llvm.load %172 : !llvm.ptr<i32>
    %174 = llvm.extractvalue %147[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.add %151, %156  : i64
    %176 = llvm.add %175, %161  : i64
    %177 = llvm.add %176, %166  : i64
    %178 = llvm.getelementptr %174[%177] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %173, %178 : !llvm.ptr<i32>
    %179 = llvm.add %166, %165  : i64
    llvm.br ^bb19(%179 : i64)
  ^bb21:  // pred: ^bb19
    %180 = llvm.add %161, %160  : i64
    llvm.br ^bb17(%180 : i64)
  ^bb22:  // pred: ^bb17
    %181 = llvm.add %156, %155  : i64
    llvm.br ^bb15(%181 : i64)
  ^bb23:  // pred: ^bb15
    %182 = llvm.add %151, %150  : i64
    llvm.br ^bb13(%182 : i64)
  ^bb24:  // pred: ^bb13
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.mlir.null : !llvm.ptr<i32>
    %189 = llvm.getelementptr %188[%183] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %190 = llvm.ptrtoint %189 : !llvm.ptr<i32> to i64
    %191 = llvm.mlir.constant(16 : index) : i64
    %192 = llvm.add %190, %191  : i64
    %193 = llvm.call @malloc(%192) : (i64) -> !llvm.ptr<i8>
    %194 = llvm.bitcast %193 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %195 = llvm.ptrtoint %194 : !llvm.ptr<i32> to i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.sub %191, %196  : i64
    %198 = llvm.add %195, %197  : i64
    %199 = llvm.urem %198, %191  : i64
    %200 = llvm.sub %198, %199  : i64
    %201 = llvm.inttoptr %200 : i64 to !llvm.ptr<i32>
    %202 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %203 = llvm.insertvalue %194, %202[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.insertvalue %201, %203[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.insertvalue %205, %204[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.insertvalue %183, %206[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.insertvalue %184, %207[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.insertvalue %185, %208[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.insertvalue %186, %209[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.insertvalue %184, %210[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.insertvalue %185, %211[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %186, %212[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %187, %213[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%215 : i64)
  ^bb25(%218: i64):  // 2 preds: ^bb24, ^bb35
    %219 = llvm.icmp "slt" %218, %216 : i64
    llvm.cond_br %219, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%220 : i64)
  ^bb27(%223: i64):  // 2 preds: ^bb26, ^bb34
    %224 = llvm.icmp "slt" %223, %221 : i64
    llvm.cond_br %224, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%225 : i64)
  ^bb29(%228: i64):  // 2 preds: ^bb28, ^bb33
    %229 = llvm.icmp "slt" %228, %226 : i64
    llvm.cond_br %229, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%230 : i64)
  ^bb31(%233: i64):  // 2 preds: ^bb30, ^bb32
    %234 = llvm.icmp "slt" %233, %231 : i64
    llvm.cond_br %234, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %235 = llvm.extractvalue %147[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.add %218, %223  : i64
    %237 = llvm.add %236, %228  : i64
    %238 = llvm.add %237, %233  : i64
    %239 = llvm.getelementptr %235[%238] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %240 = llvm.load %239 : !llvm.ptr<i32>
    %241 = llvm.extractvalue %147[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.add %218, %223  : i64
    %243 = llvm.add %242, %228  : i64
    %244 = llvm.add %243, %233  : i64
    %245 = llvm.getelementptr %241[%244] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %246 = llvm.load %245 : !llvm.ptr<i32>
    %247 = llvm.icmp "slt" %240, %246 : i32
    %248 = llvm.select %247, %240, %246 : i1, i32
    %249 = llvm.extractvalue %214[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.add %218, %223  : i64
    %251 = llvm.add %250, %228  : i64
    %252 = llvm.add %251, %233  : i64
    %253 = llvm.getelementptr %249[%252] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %248, %253 : !llvm.ptr<i32>
    %254 = llvm.add %233, %232  : i64
    llvm.br ^bb31(%254 : i64)
  ^bb33:  // pred: ^bb31
    %255 = llvm.add %228, %227  : i64
    llvm.br ^bb29(%255 : i64)
  ^bb34:  // pred: ^bb29
    %256 = llvm.add %223, %222  : i64
    llvm.br ^bb27(%256 : i64)
  ^bb35:  // pred: ^bb27
    %257 = llvm.add %218, %217  : i64
    llvm.br ^bb25(%257 : i64)
  ^bb36:  // pred: ^bb25
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    %263 = llvm.mlir.null : !llvm.ptr<f32>
    %264 = llvm.getelementptr %263[%258] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %265 = llvm.ptrtoint %264 : !llvm.ptr<f32> to i64
    %266 = llvm.mlir.constant(16 : index) : i64
    %267 = llvm.add %265, %266  : i64
    %268 = llvm.call @malloc(%267) : (i64) -> !llvm.ptr<i8>
    %269 = llvm.bitcast %268 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %270 = llvm.ptrtoint %269 : !llvm.ptr<f32> to i64
    %271 = llvm.mlir.constant(1 : index) : i64
    %272 = llvm.sub %266, %271  : i64
    %273 = llvm.add %270, %272  : i64
    %274 = llvm.urem %273, %266  : i64
    %275 = llvm.sub %273, %274  : i64
    %276 = llvm.inttoptr %275 : i64 to !llvm.ptr<f32>
    %277 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %278 = llvm.insertvalue %269, %277[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %276, %278[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.insertvalue %280, %279[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.insertvalue %258, %281[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.insertvalue %259, %282[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.insertvalue %260, %283[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.insertvalue %261, %284[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %286 = llvm.insertvalue %259, %285[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %287 = llvm.insertvalue %260, %286[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %288 = llvm.insertvalue %261, %287[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.insertvalue %262, %288[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%290 : i64)
  ^bb37(%293: i64):  // 2 preds: ^bb36, ^bb47
    %294 = llvm.icmp "slt" %293, %291 : i64
    llvm.cond_br %294, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%295 : i64)
  ^bb39(%298: i64):  // 2 preds: ^bb38, ^bb46
    %299 = llvm.icmp "slt" %298, %296 : i64
    llvm.cond_br %299, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %300 = llvm.mlir.constant(0 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%300 : i64)
  ^bb41(%303: i64):  // 2 preds: ^bb40, ^bb45
    %304 = llvm.icmp "slt" %303, %301 : i64
    llvm.cond_br %304, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%305 : i64)
  ^bb43(%308: i64):  // 2 preds: ^bb42, ^bb44
    %309 = llvm.icmp "slt" %308, %306 : i64
    llvm.cond_br %309, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %310 = llvm.extractvalue %214[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.add %293, %298  : i64
    %312 = llvm.add %311, %303  : i64
    %313 = llvm.add %312, %308  : i64
    %314 = llvm.getelementptr %310[%313] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %315 = llvm.load %314 : !llvm.ptr<i32>
    %316 = llvm.sitofp %315 : i32 to f32
    %317 = llvm.extractvalue %289[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.add %293, %298  : i64
    %319 = llvm.add %318, %303  : i64
    %320 = llvm.add %319, %308  : i64
    %321 = llvm.getelementptr %317[%320] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %316, %321 : !llvm.ptr<f32>
    %322 = llvm.add %308, %307  : i64
    llvm.br ^bb43(%322 : i64)
  ^bb45:  // pred: ^bb43
    %323 = llvm.add %303, %302  : i64
    llvm.br ^bb41(%323 : i64)
  ^bb46:  // pred: ^bb41
    %324 = llvm.add %298, %297  : i64
    llvm.br ^bb39(%324 : i64)
  ^bb47:  // pred: ^bb39
    %325 = llvm.add %293, %292  : i64
    llvm.br ^bb37(%325 : i64)
  ^bb48:  // pred: ^bb37
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.null : !llvm.ptr<f32>
    %332 = llvm.getelementptr %331[%326] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %333 = llvm.ptrtoint %332 : !llvm.ptr<f32> to i64
    %334 = llvm.mlir.constant(16 : index) : i64
    %335 = llvm.add %333, %334  : i64
    %336 = llvm.call @malloc(%335) : (i64) -> !llvm.ptr<i8>
    %337 = llvm.bitcast %336 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %338 = llvm.ptrtoint %337 : !llvm.ptr<f32> to i64
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.sub %334, %339  : i64
    %341 = llvm.add %338, %340  : i64
    %342 = llvm.urem %341, %334  : i64
    %343 = llvm.sub %341, %342  : i64
    %344 = llvm.inttoptr %343 : i64 to !llvm.ptr<f32>
    %345 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %346 = llvm.insertvalue %337, %345[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.insertvalue %344, %346[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.mlir.constant(0 : index) : i64
    %349 = llvm.insertvalue %348, %347[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.insertvalue %326, %349[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.insertvalue %327, %350[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.insertvalue %328, %351[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.insertvalue %329, %352[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.insertvalue %327, %353[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.insertvalue %328, %354[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.insertvalue %329, %355[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.insertvalue %330, %356[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.extractvalue %40[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %359 = llvm.getelementptr %358[%14] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %360 = llvm.load %359 : !llvm.ptr<f32>
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.mlir.constant(0 : index) : i64
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%366 : i64)
  ^bb49(%369: i64):  // 2 preds: ^bb48, ^bb59
    %370 = llvm.icmp "slt" %369, %367 : i64
    llvm.cond_br %370, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %371 = llvm.mlir.constant(0 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%371 : i64)
  ^bb51(%374: i64):  // 2 preds: ^bb50, ^bb58
    %375 = llvm.icmp "slt" %374, %372 : i64
    llvm.cond_br %375, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %376 = llvm.mlir.constant(0 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%376 : i64)
  ^bb53(%379: i64):  // 2 preds: ^bb52, ^bb57
    %380 = llvm.icmp "slt" %379, %377 : i64
    llvm.cond_br %380, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %381 = llvm.mlir.constant(0 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%381 : i64)
  ^bb55(%384: i64):  // 2 preds: ^bb54, ^bb56
    %385 = llvm.icmp "slt" %384, %382 : i64
    llvm.cond_br %385, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %386 = llvm.extractvalue %357[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.add %369, %374  : i64
    %388 = llvm.add %387, %379  : i64
    %389 = llvm.add %388, %384  : i64
    %390 = llvm.getelementptr %386[%389] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %360, %390 : !llvm.ptr<f32>
    %391 = llvm.add %384, %383  : i64
    llvm.br ^bb55(%391 : i64)
  ^bb57:  // pred: ^bb55
    %392 = llvm.add %379, %378  : i64
    llvm.br ^bb53(%392 : i64)
  ^bb58:  // pred: ^bb53
    %393 = llvm.add %374, %373  : i64
    llvm.br ^bb51(%393 : i64)
  ^bb59:  // pred: ^bb51
    %394 = llvm.add %369, %368  : i64
    llvm.br ^bb49(%394 : i64)
  ^bb60:  // pred: ^bb49
    %395 = llvm.mlir.constant(0 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    %397 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%395 : i64)
  ^bb61(%398: i64):  // 2 preds: ^bb60, ^bb71
    %399 = llvm.icmp "slt" %398, %396 : i64
    llvm.cond_br %399, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%400 : i64)
  ^bb63(%403: i64):  // 2 preds: ^bb62, ^bb70
    %404 = llvm.icmp "slt" %403, %401 : i64
    llvm.cond_br %404, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%405 : i64)
  ^bb65(%408: i64):  // 2 preds: ^bb64, ^bb69
    %409 = llvm.icmp "slt" %408, %406 : i64
    llvm.cond_br %409, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %410 = llvm.mlir.constant(0 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%410 : i64)
  ^bb67(%413: i64):  // 2 preds: ^bb66, ^bb68
    %414 = llvm.icmp "slt" %413, %411 : i64
    llvm.cond_br %414, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %415 = llvm.extractvalue %289[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.add %398, %403  : i64
    %417 = llvm.add %416, %408  : i64
    %418 = llvm.add %417, %413  : i64
    %419 = llvm.getelementptr %415[%418] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %420 = llvm.load %419 : !llvm.ptr<f32>
    %421 = llvm.extractvalue %357[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.add %398, %403  : i64
    %423 = llvm.add %422, %408  : i64
    %424 = llvm.add %423, %413  : i64
    %425 = llvm.getelementptr %421[%424] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %420, %425 : !llvm.ptr<f32>
    %426 = llvm.add %413, %412  : i64
    llvm.br ^bb67(%426 : i64)
  ^bb69:  // pred: ^bb67
    %427 = llvm.add %408, %407  : i64
    llvm.br ^bb65(%427 : i64)
  ^bb70:  // pred: ^bb65
    %428 = llvm.add %403, %402  : i64
    llvm.br ^bb63(%428 : i64)
  ^bb71:  // pred: ^bb63
    %429 = llvm.add %398, %397  : i64
    llvm.br ^bb61(%429 : i64)
  ^bb72:  // pred: ^bb61
    %430 = llvm.mlir.constant(1 : index) : i64
    %431 = llvm.mlir.constant(1 : index) : i64
    %432 = llvm.mlir.constant(1 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    %435 = llvm.mlir.null : !llvm.ptr<f32>
    %436 = llvm.getelementptr %435[%430] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %437 = llvm.ptrtoint %436 : !llvm.ptr<f32> to i64
    %438 = llvm.mlir.constant(16 : index) : i64
    %439 = llvm.add %437, %438  : i64
    %440 = llvm.call @malloc(%439) : (i64) -> !llvm.ptr<i8>
    %441 = llvm.bitcast %440 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %442 = llvm.ptrtoint %441 : !llvm.ptr<f32> to i64
    %443 = llvm.mlir.constant(1 : index) : i64
    %444 = llvm.sub %438, %443  : i64
    %445 = llvm.add %442, %444  : i64
    %446 = llvm.urem %445, %438  : i64
    %447 = llvm.sub %445, %446  : i64
    %448 = llvm.inttoptr %447 : i64 to !llvm.ptr<f32>
    %449 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %450 = llvm.insertvalue %441, %449[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.insertvalue %448, %450[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %452 = llvm.mlir.constant(0 : index) : i64
    %453 = llvm.insertvalue %452, %451[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.insertvalue %430, %453[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.insertvalue %431, %454[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %456 = llvm.insertvalue %432, %455[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.insertvalue %433, %456[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %458 = llvm.insertvalue %431, %457[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.insertvalue %432, %458[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %460 = llvm.insertvalue %433, %459[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.insertvalue %434, %460[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.mlir.constant(1 : index) : i64
    %463 = llvm.mlir.null : !llvm.ptr<f32>
    %464 = llvm.getelementptr %463[%462] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %465 = llvm.ptrtoint %464 : !llvm.ptr<f32> to i64
    %466 = llvm.alloca %465 x f32 : (i64) -> !llvm.ptr<f32>
    %467 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64)>
    %468 = llvm.insertvalue %466, %467[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %469 = llvm.insertvalue %466, %468[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %470 = llvm.mlir.constant(0 : index) : i64
    %471 = llvm.insertvalue %470, %469[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %472 = llvm.mlir.constant(0 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%472 : i64)
  ^bb73(%475: i64):  // 2 preds: ^bb72, ^bb89
    %476 = llvm.icmp "slt" %475, %473 : i64
    llvm.cond_br %476, ^bb74, ^bb90
  ^bb74:  // pred: ^bb73
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.mlir.constant(1 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%477 : i64)
  ^bb75(%480: i64):  // 2 preds: ^bb74, ^bb88
    %481 = llvm.icmp "slt" %480, %478 : i64
    llvm.cond_br %481, ^bb76, ^bb89
  ^bb76:  // pred: ^bb75
    %482 = llvm.mlir.constant(0 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%482 : i64)
  ^bb77(%485: i64):  // 2 preds: ^bb76, ^bb87
    %486 = llvm.icmp "slt" %485, %483 : i64
    llvm.cond_br %486, ^bb78, ^bb88
  ^bb78:  // pred: ^bb77
    %487 = llvm.mlir.constant(0 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%487 : i64)
  ^bb79(%490: i64):  // 2 preds: ^bb78, ^bb86
    %491 = llvm.icmp "slt" %490, %488 : i64
    llvm.cond_br %491, ^bb80, ^bb87
  ^bb80:  // pred: ^bb79
    %492 = llvm.extractvalue %471[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    llvm.store %12, %492 : !llvm.ptr<f32>
    %493 = llvm.mlir.constant(0 : index) : i64
    %494 = llvm.mlir.constant(2 : index) : i64
    %495 = llvm.mul %485, %494  : i64
    %496 = llvm.icmp "slt" %495, %493 : i64
    %497 = llvm.select %496, %493, %495 : i1, i64
    %498 = llvm.mlir.constant(1 : index) : i64
    %499 = llvm.mlir.constant(2 : index) : i64
    %500 = llvm.mul %485, %499  : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    %502 = llvm.add %500, %501  : i64
    %503 = llvm.icmp "sgt" %502, %498 : i64
    %504 = llvm.select %503, %498, %502 : i1, i64
    %505 = llvm.mlir.constant(0 : index) : i64
    %506 = llvm.mlir.constant(2 : index) : i64
    %507 = llvm.mul %490, %506  : i64
    %508 = llvm.icmp "slt" %507, %505 : i64
    %509 = llvm.select %508, %505, %507 : i1, i64
    %510 = llvm.mlir.constant(1 : index) : i64
    %511 = llvm.mlir.constant(2 : index) : i64
    %512 = llvm.mul %490, %511  : i64
    %513 = llvm.mlir.constant(1 : index) : i64
    %514 = llvm.add %512, %513  : i64
    %515 = llvm.icmp "sgt" %514, %510 : i64
    %516 = llvm.select %515, %510, %514 : i1, i64
    %517 = llvm.sub %504, %497  : i64
    %518 = llvm.sub %516, %509  : i64
    %519 = llvm.mlir.constant(0 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    %521 = llvm.mlir.constant(-2 : index) : i64
    %522 = llvm.mul %485, %521  : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    %524 = llvm.add %522, %523  : i64
    %525 = llvm.mlir.constant(2 : index) : i64
    %526 = llvm.mul %485, %525  : i64
    %527 = llvm.mlir.constant(1 : index) : i64
    %528 = llvm.add %526, %527  : i64
    %529 = llvm.mlir.constant(1 : index) : i64
    %530 = llvm.icmp "sgt" %524, %520 : i64
    %531 = llvm.select %530, %520, %524 : i1, i64
    %532 = llvm.icmp "slt" %531, %528 : i64
    %533 = llvm.select %532, %531, %528 : i1, i64
    %534 = llvm.icmp "slt" %533, %529 : i64
    %535 = llvm.select %534, %533, %529 : i1, i64
    %536 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%519 : i64)
  ^bb81(%537: i64):  // 2 preds: ^bb80, ^bb85
    %538 = llvm.icmp "slt" %537, %535 : i64
    llvm.cond_br %538, ^bb82, ^bb86
  ^bb82:  // pred: ^bb81
    %539 = llvm.mlir.constant(0 : index) : i64
    %540 = llvm.mlir.constant(1 : index) : i64
    %541 = llvm.mlir.constant(-2 : index) : i64
    %542 = llvm.mul %490, %541  : i64
    %543 = llvm.mlir.constant(1 : index) : i64
    %544 = llvm.add %542, %543  : i64
    %545 = llvm.mlir.constant(2 : index) : i64
    %546 = llvm.mul %490, %545  : i64
    %547 = llvm.mlir.constant(1 : index) : i64
    %548 = llvm.add %546, %547  : i64
    %549 = llvm.mlir.constant(1 : index) : i64
    %550 = llvm.icmp "sgt" %544, %540 : i64
    %551 = llvm.select %550, %540, %544 : i1, i64
    %552 = llvm.icmp "slt" %551, %548 : i64
    %553 = llvm.select %552, %551, %548 : i1, i64
    %554 = llvm.icmp "slt" %553, %549 : i64
    %555 = llvm.select %554, %553, %549 : i1, i64
    %556 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb83(%539 : i64)
  ^bb83(%557: i64):  // 2 preds: ^bb82, ^bb84
    %558 = llvm.icmp "slt" %557, %555 : i64
    llvm.cond_br %558, ^bb84, ^bb85
  ^bb84:  // pred: ^bb83
    %559 = llvm.add %537, %497  : i64
    %560 = llvm.add %557, %509  : i64
    %561 = llvm.extractvalue %357[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %562 = llvm.add %475, %480  : i64
    %563 = llvm.add %562, %559  : i64
    %564 = llvm.add %563, %560  : i64
    %565 = llvm.getelementptr %561[%564] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %566 = llvm.load %565 : !llvm.ptr<f32>
    %567 = llvm.extractvalue %471[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %568 = llvm.load %567 : !llvm.ptr<f32>
    %569 = llvm.fadd %568, %566  : f32
    %570 = llvm.extractvalue %471[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    llvm.store %569, %570 : !llvm.ptr<f32>
    %571 = llvm.add %557, %556  : i64
    llvm.br ^bb83(%571 : i64)
  ^bb85:  // pred: ^bb83
    %572 = llvm.add %537, %536  : i64
    llvm.br ^bb81(%572 : i64)
  ^bb86:  // pred: ^bb81
    %573 = llvm.extractvalue %471[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %574 = llvm.load %573 : !llvm.ptr<f32>
    %575 = llvm.extractvalue %461[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %576 = llvm.add %475, %480  : i64
    %577 = llvm.add %576, %485  : i64
    %578 = llvm.add %577, %490  : i64
    %579 = llvm.getelementptr %575[%578] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %574, %579 : !llvm.ptr<f32>
    %580 = llvm.extractvalue %461[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %581 = llvm.add %475, %480  : i64
    %582 = llvm.add %581, %485  : i64
    %583 = llvm.add %582, %490  : i64
    %584 = llvm.getelementptr %580[%583] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %585 = llvm.load %584 : !llvm.ptr<f32>
    %586 = llvm.mul %517, %518  : i64
    %587 = llvm.sitofp %586 : i64 to f32
    %588 = llvm.fdiv %585, %587  : f32
    %589 = llvm.extractvalue %461[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %590 = llvm.add %475, %480  : i64
    %591 = llvm.add %590, %485  : i64
    %592 = llvm.add %591, %490  : i64
    %593 = llvm.getelementptr %589[%592] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %588, %593 : !llvm.ptr<f32>
    %594 = llvm.add %490, %489  : i64
    llvm.br ^bb79(%594 : i64)
  ^bb87:  // pred: ^bb79
    %595 = llvm.add %485, %484  : i64
    llvm.br ^bb77(%595 : i64)
  ^bb88:  // pred: ^bb77
    %596 = llvm.add %480, %479  : i64
    llvm.br ^bb75(%596 : i64)
  ^bb89:  // pred: ^bb75
    %597 = llvm.add %475, %474  : i64
    llvm.br ^bb73(%597 : i64)
  ^bb90:  // pred: ^bb73
    llvm.return %461 : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v0_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.mlir.constant(8 : i64) : i64
    %47 = llvm.call @malloc(%46) : (i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %49 = llvm.mlir.constant(4 : i64) : i64
    %50 = llvm.call @omTensorCreateUntyped(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.extractvalue %44[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.bitcast %52 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %54 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%50, %51, %53, %55) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %56 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%50, %56) : (!llvm.ptr<i8>, i64) -> ()
    %57 = llvm.call @omTensorGetShape(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %58 = llvm.call @omTensorGetStrides(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %59 = llvm.mlir.constant(0 : i64) : i64
    %60 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %57[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %58[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %44[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %57[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.extractvalue %44[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %58[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.mlir.constant(2 : i64) : i64
    %70 = llvm.extractvalue %44[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %57[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %44[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %58[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(3 : i64) : i64
    %75 = llvm.extractvalue %44[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %57[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %44[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %58[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(0 : i64) : i64
    %80 = llvm.getelementptr %48[%79] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %50, %80 : !llvm.ptr<ptr<i8>>
    %81 = llvm.call @omTensorListCreate(%48, %45, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %81 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

