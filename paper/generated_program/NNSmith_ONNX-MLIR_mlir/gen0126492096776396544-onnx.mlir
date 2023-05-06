module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<[[[[7, 4], [6, 4]], [[6, 6], [6, 3]]]]> : tensor<1x2x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x array<2 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v5_0"]} {
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
    %14 = llvm.mlir.constant(1.000000e+00 : f32) : f32
    %15 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %16 = llvm.mlir.constant(2147483647 : i32) : i32
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<2 x array<2 x array<2 x i32>>>>>
    %19 = llvm.bitcast %18 : !llvm.ptr<array<1 x array<2 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %21 = llvm.insertvalue %19, %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %19, %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(0 : index) : i64
    %24 = llvm.insertvalue %23, %22[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.mlir.constant(8 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.mlir.constant(2 : index) : i64
    %30 = llvm.insertvalue %29, %28[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.mlir.constant(4 : index) : i64
    %32 = llvm.insertvalue %31, %30[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.mlir.constant(2 : index) : i64
    %34 = llvm.insertvalue %33, %32[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(2 : index) : i64
    %36 = llvm.insertvalue %35, %34[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(2 : index) : i64
    %38 = llvm.insertvalue %37, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.insertvalue %39, %38[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.constant(2 : index) : i64
    %43 = llvm.mlir.constant(2 : index) : i64
    %44 = llvm.mlir.constant(2 : index) : i64
    %45 = llvm.mlir.constant(2 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(4 : index) : i64
    %48 = llvm.mlir.constant(8 : index) : i64
    %49 = llvm.mlir.constant(16 : index) : i64
    %50 = llvm.mlir.constant(16 : index) : i64
    %51 = llvm.mlir.null : !llvm.ptr<i32>
    %52 = llvm.getelementptr %51[%50] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %70 = llvm.insertvalue %41, %69[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %71 = llvm.insertvalue %42, %70[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %72 = llvm.insertvalue %43, %71[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %73 = llvm.insertvalue %44, %72[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %74 = llvm.insertvalue %45, %73[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %75 = llvm.insertvalue %49, %74[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %76 = llvm.insertvalue %48, %75[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %77 = llvm.insertvalue %47, %76[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %78 = llvm.insertvalue %45, %77[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %79 = llvm.insertvalue %46, %78[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%80 : i64)
  ^bb1(%83: i64):  // 2 preds: ^bb0, ^bb14
    %84 = llvm.icmp "slt" %83, %81 : i64
    llvm.cond_br %84, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%85 : i64)
  ^bb3(%88: i64):  // 2 preds: ^bb2, ^bb13
    %89 = llvm.icmp "slt" %88, %86 : i64
    llvm.cond_br %89, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.mlir.constant(2 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%90 : i64)
  ^bb5(%93: i64):  // 2 preds: ^bb4, ^bb12
    %94 = llvm.icmp "slt" %93, %91 : i64
    llvm.cond_br %94, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%95 : i64)
  ^bb7(%98: i64):  // 2 preds: ^bb6, ^bb11
    %99 = llvm.icmp "slt" %98, %96 : i64
    llvm.cond_br %99, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.mlir.constant(2 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%100 : i64)
  ^bb9(%103: i64):  // 2 preds: ^bb8, ^bb10
    %104 = llvm.icmp "slt" %103, %101 : i64
    llvm.cond_br %104, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %105 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %106 = llvm.mlir.constant(4 : index) : i64
    %107 = llvm.mul %83, %106  : i64
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mul %88, %108  : i64
    %110 = llvm.add %107, %109  : i64
    %111 = llvm.add %110, %93  : i64
    %112 = llvm.add %111, %17  : i64
    %113 = llvm.add %112, %17  : i64
    %114 = llvm.getelementptr %105[%113] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %115 = llvm.load %114 : !llvm.ptr<i32>
    %116 = llvm.extractvalue %40[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.mlir.constant(8 : index) : i64
    %118 = llvm.mul %17, %117  : i64
    %119 = llvm.mlir.constant(4 : index) : i64
    %120 = llvm.mul %93, %119  : i64
    %121 = llvm.add %118, %120  : i64
    %122 = llvm.mlir.constant(2 : index) : i64
    %123 = llvm.mul %98, %122  : i64
    %124 = llvm.add %121, %123  : i64
    %125 = llvm.add %124, %103  : i64
    %126 = llvm.getelementptr %116[%125] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %127 = llvm.load %126 : !llvm.ptr<i32>
    %128 = llvm.mul %115, %127  : i32
    %129 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %130 = llvm.mlir.constant(16 : index) : i64
    %131 = llvm.mul %83, %130  : i64
    %132 = llvm.mlir.constant(8 : index) : i64
    %133 = llvm.mul %88, %132  : i64
    %134 = llvm.add %131, %133  : i64
    %135 = llvm.mlir.constant(4 : index) : i64
    %136 = llvm.mul %93, %135  : i64
    %137 = llvm.add %134, %136  : i64
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mul %98, %138  : i64
    %140 = llvm.add %137, %139  : i64
    %141 = llvm.add %140, %103  : i64
    %142 = llvm.getelementptr %129[%141] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %128, %142 : !llvm.ptr<i32>
    %143 = llvm.add %103, %102  : i64
    llvm.br ^bb9(%143 : i64)
  ^bb11:  // pred: ^bb9
    %144 = llvm.add %98, %97  : i64
    llvm.br ^bb7(%144 : i64)
  ^bb12:  // pred: ^bb7
    %145 = llvm.add %93, %92  : i64
    llvm.br ^bb5(%145 : i64)
  ^bb13:  // pred: ^bb5
    %146 = llvm.add %88, %87  : i64
    llvm.br ^bb3(%146 : i64)
  ^bb14:  // pred: ^bb3
    %147 = llvm.add %83, %82  : i64
    llvm.br ^bb1(%147 : i64)
  ^bb15:  // pred: ^bb1
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mlir.constant(2 : index) : i64
    %151 = llvm.mlir.constant(2 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.mlir.constant(4 : index) : i64
    %154 = llvm.mlir.constant(8 : index) : i64
    %155 = llvm.mlir.constant(8 : index) : i64
    %156 = llvm.mlir.null : !llvm.ptr<i32>
    %157 = llvm.getelementptr %156[%155] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %158 = llvm.ptrtoint %157 : !llvm.ptr<i32> to i64
    %159 = llvm.mlir.constant(16 : index) : i64
    %160 = llvm.add %158, %159  : i64
    %161 = llvm.call @malloc(%160) : (i64) -> !llvm.ptr<i8>
    %162 = llvm.bitcast %161 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %163 = llvm.ptrtoint %162 : !llvm.ptr<i32> to i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.sub %159, %164  : i64
    %166 = llvm.add %163, %165  : i64
    %167 = llvm.urem %166, %159  : i64
    %168 = llvm.sub %166, %167  : i64
    %169 = llvm.inttoptr %168 : i64 to !llvm.ptr<i32>
    %170 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %171 = llvm.insertvalue %162, %170[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.insertvalue %169, %171[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.mlir.constant(0 : index) : i64
    %174 = llvm.insertvalue %173, %172[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.insertvalue %148, %174[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.insertvalue %149, %175[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.insertvalue %150, %176[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.insertvalue %151, %177[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.insertvalue %154, %178[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.insertvalue %153, %179[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.insertvalue %151, %180[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.insertvalue %152, %181[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%183 : i64)
  ^bb16(%186: i64):  // 2 preds: ^bb15, ^bb26
    %187 = llvm.icmp "slt" %186, %184 : i64
    llvm.cond_br %187, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %188 = llvm.mlir.constant(0 : index) : i64
    %189 = llvm.mlir.constant(2 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%188 : i64)
  ^bb18(%191: i64):  // 2 preds: ^bb17, ^bb25
    %192 = llvm.icmp "slt" %191, %189 : i64
    llvm.cond_br %192, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %193 = llvm.mlir.constant(0 : index) : i64
    %194 = llvm.mlir.constant(2 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%193 : i64)
  ^bb20(%196: i64):  // 2 preds: ^bb19, ^bb24
    %197 = llvm.icmp "slt" %196, %194 : i64
    llvm.cond_br %197, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.mlir.constant(2 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%198 : i64)
  ^bb22(%201: i64):  // 2 preds: ^bb21, ^bb23
    %202 = llvm.icmp "slt" %201, %199 : i64
    llvm.cond_br %202, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %203 = llvm.extractvalue %182[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.mlir.constant(8 : index) : i64
    %205 = llvm.mul %186, %204  : i64
    %206 = llvm.mlir.constant(4 : index) : i64
    %207 = llvm.mul %191, %206  : i64
    %208 = llvm.add %205, %207  : i64
    %209 = llvm.mlir.constant(2 : index) : i64
    %210 = llvm.mul %196, %209  : i64
    %211 = llvm.add %208, %210  : i64
    %212 = llvm.add %211, %201  : i64
    %213 = llvm.getelementptr %203[%212] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %16, %213 : !llvm.ptr<i32>
    %214 = llvm.add %201, %200  : i64
    llvm.br ^bb22(%214 : i64)
  ^bb24:  // pred: ^bb22
    %215 = llvm.add %196, %195  : i64
    llvm.br ^bb20(%215 : i64)
  ^bb25:  // pred: ^bb20
    %216 = llvm.add %191, %190  : i64
    llvm.br ^bb18(%216 : i64)
  ^bb26:  // pred: ^bb18
    %217 = llvm.add %186, %185  : i64
    llvm.br ^bb16(%217 : i64)
  ^bb27:  // pred: ^bb16
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%218 : i64)
  ^bb28(%221: i64):  // 2 preds: ^bb27, ^bb41
    %222 = llvm.icmp "slt" %221, %219 : i64
    llvm.cond_br %222, ^bb29, ^bb42
  ^bb29:  // pred: ^bb28
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.mlir.constant(2 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%223 : i64)
  ^bb30(%226: i64):  // 2 preds: ^bb29, ^bb40
    %227 = llvm.icmp "slt" %226, %224 : i64
    llvm.cond_br %227, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %228 = llvm.mlir.constant(0 : index) : i64
    %229 = llvm.mlir.constant(2 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%228 : i64)
  ^bb32(%231: i64):  // 2 preds: ^bb31, ^bb39
    %232 = llvm.icmp "slt" %231, %229 : i64
    llvm.cond_br %232, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.mlir.constant(2 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%233 : i64)
  ^bb34(%236: i64):  // 2 preds: ^bb33, ^bb38
    %237 = llvm.icmp "slt" %236, %234 : i64
    llvm.cond_br %237, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.mlir.constant(2 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%238 : i64)
  ^bb36(%241: i64):  // 2 preds: ^bb35, ^bb37
    %242 = llvm.icmp "slt" %241, %239 : i64
    llvm.cond_br %242, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %243 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %244 = llvm.mlir.constant(16 : index) : i64
    %245 = llvm.mul %221, %244  : i64
    %246 = llvm.mlir.constant(8 : index) : i64
    %247 = llvm.mul %226, %246  : i64
    %248 = llvm.add %245, %247  : i64
    %249 = llvm.mlir.constant(4 : index) : i64
    %250 = llvm.mul %231, %249  : i64
    %251 = llvm.add %248, %250  : i64
    %252 = llvm.mlir.constant(2 : index) : i64
    %253 = llvm.mul %236, %252  : i64
    %254 = llvm.add %251, %253  : i64
    %255 = llvm.add %254, %241  : i64
    %256 = llvm.getelementptr %243[%255] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %257 = llvm.load %256 : !llvm.ptr<i32>
    %258 = llvm.extractvalue %182[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.mlir.constant(8 : index) : i64
    %260 = llvm.mul %221, %259  : i64
    %261 = llvm.mlir.constant(4 : index) : i64
    %262 = llvm.mul %226, %261  : i64
    %263 = llvm.add %260, %262  : i64
    %264 = llvm.mlir.constant(2 : index) : i64
    %265 = llvm.mul %231, %264  : i64
    %266 = llvm.add %263, %265  : i64
    %267 = llvm.add %266, %236  : i64
    %268 = llvm.getelementptr %258[%267] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %269 = llvm.load %268 : !llvm.ptr<i32>
    %270 = llvm.icmp "slt" %269, %257 : i32
    %271 = llvm.select %270, %269, %257 : i1, i32
    %272 = llvm.extractvalue %182[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.mlir.constant(8 : index) : i64
    %274 = llvm.mul %221, %273  : i64
    %275 = llvm.mlir.constant(4 : index) : i64
    %276 = llvm.mul %226, %275  : i64
    %277 = llvm.add %274, %276  : i64
    %278 = llvm.mlir.constant(2 : index) : i64
    %279 = llvm.mul %231, %278  : i64
    %280 = llvm.add %277, %279  : i64
    %281 = llvm.add %280, %236  : i64
    %282 = llvm.getelementptr %272[%281] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %271, %282 : !llvm.ptr<i32>
    %283 = llvm.add %241, %240  : i64
    llvm.br ^bb36(%283 : i64)
  ^bb38:  // pred: ^bb36
    %284 = llvm.add %236, %235  : i64
    llvm.br ^bb34(%284 : i64)
  ^bb39:  // pred: ^bb34
    %285 = llvm.add %231, %230  : i64
    llvm.br ^bb32(%285 : i64)
  ^bb40:  // pred: ^bb32
    %286 = llvm.add %226, %225  : i64
    llvm.br ^bb30(%286 : i64)
  ^bb41:  // pred: ^bb30
    %287 = llvm.add %221, %220  : i64
    llvm.br ^bb28(%287 : i64)
  ^bb42:  // pred: ^bb28
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.mlir.constant(2 : index) : i64
    %290 = llvm.mlir.constant(2 : index) : i64
    %291 = llvm.mlir.constant(2 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mlir.constant(4 : index) : i64
    %294 = llvm.mlir.constant(8 : index) : i64
    %295 = llvm.mlir.constant(8 : index) : i64
    %296 = llvm.mlir.null : !llvm.ptr<f32>
    %297 = llvm.getelementptr %296[%295] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %298 = llvm.ptrtoint %297 : !llvm.ptr<f32> to i64
    %299 = llvm.mlir.constant(16 : index) : i64
    %300 = llvm.add %298, %299  : i64
    %301 = llvm.call @malloc(%300) : (i64) -> !llvm.ptr<i8>
    %302 = llvm.bitcast %301 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %303 = llvm.ptrtoint %302 : !llvm.ptr<f32> to i64
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.sub %299, %304  : i64
    %306 = llvm.add %303, %305  : i64
    %307 = llvm.urem %306, %299  : i64
    %308 = llvm.sub %306, %307  : i64
    %309 = llvm.inttoptr %308 : i64 to !llvm.ptr<f32>
    %310 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %311 = llvm.insertvalue %302, %310[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %309, %311[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.mlir.constant(0 : index) : i64
    %314 = llvm.insertvalue %313, %312[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.insertvalue %288, %314[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.insertvalue %289, %315[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.insertvalue %290, %316[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.insertvalue %291, %317[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.insertvalue %294, %318[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.insertvalue %293, %319[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.insertvalue %291, %320[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.insertvalue %292, %321[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%323 : i64)
  ^bb43(%326: i64):  // 2 preds: ^bb42, ^bb53
    %327 = llvm.icmp "slt" %326, %324 : i64
    llvm.cond_br %327, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %328 = llvm.mlir.constant(0 : index) : i64
    %329 = llvm.mlir.constant(2 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%328 : i64)
  ^bb45(%331: i64):  // 2 preds: ^bb44, ^bb52
    %332 = llvm.icmp "slt" %331, %329 : i64
    llvm.cond_br %332, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %333 = llvm.mlir.constant(0 : index) : i64
    %334 = llvm.mlir.constant(2 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%333 : i64)
  ^bb47(%336: i64):  // 2 preds: ^bb46, ^bb51
    %337 = llvm.icmp "slt" %336, %334 : i64
    llvm.cond_br %337, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %338 = llvm.mlir.constant(0 : index) : i64
    %339 = llvm.mlir.constant(2 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%338 : i64)
  ^bb49(%341: i64):  // 2 preds: ^bb48, ^bb50
    %342 = llvm.icmp "slt" %341, %339 : i64
    llvm.cond_br %342, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %343 = llvm.extractvalue %182[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.mlir.constant(8 : index) : i64
    %345 = llvm.mul %326, %344  : i64
    %346 = llvm.mlir.constant(4 : index) : i64
    %347 = llvm.mul %331, %346  : i64
    %348 = llvm.add %345, %347  : i64
    %349 = llvm.mlir.constant(2 : index) : i64
    %350 = llvm.mul %336, %349  : i64
    %351 = llvm.add %348, %350  : i64
    %352 = llvm.add %351, %341  : i64
    %353 = llvm.getelementptr %343[%352] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %354 = llvm.load %353 : !llvm.ptr<i32>
    %355 = llvm.sitofp %354 : i32 to f32
    %356 = llvm.extractvalue %322[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.mlir.constant(8 : index) : i64
    %358 = llvm.mul %326, %357  : i64
    %359 = llvm.mlir.constant(4 : index) : i64
    %360 = llvm.mul %331, %359  : i64
    %361 = llvm.add %358, %360  : i64
    %362 = llvm.mlir.constant(2 : index) : i64
    %363 = llvm.mul %336, %362  : i64
    %364 = llvm.add %361, %363  : i64
    %365 = llvm.add %364, %341  : i64
    %366 = llvm.getelementptr %356[%365] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %355, %366 : !llvm.ptr<f32>
    %367 = llvm.add %341, %340  : i64
    llvm.br ^bb49(%367 : i64)
  ^bb51:  // pred: ^bb49
    %368 = llvm.add %336, %335  : i64
    llvm.br ^bb47(%368 : i64)
  ^bb52:  // pred: ^bb47
    %369 = llvm.add %331, %330  : i64
    llvm.br ^bb45(%369 : i64)
  ^bb53:  // pred: ^bb45
    %370 = llvm.add %326, %325  : i64
    llvm.br ^bb43(%370 : i64)
  ^bb54:  // pred: ^bb43
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.mlir.constant(2 : index) : i64
    %373 = llvm.mlir.constant(2 : index) : i64
    %374 = llvm.mlir.constant(2 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.mlir.constant(4 : index) : i64
    %377 = llvm.mlir.constant(8 : index) : i64
    %378 = llvm.mlir.constant(8 : index) : i64
    %379 = llvm.mlir.null : !llvm.ptr<f32>
    %380 = llvm.getelementptr %379[%378] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %381 = llvm.ptrtoint %380 : !llvm.ptr<f32> to i64
    %382 = llvm.mlir.constant(16 : index) : i64
    %383 = llvm.add %381, %382  : i64
    %384 = llvm.call @malloc(%383) : (i64) -> !llvm.ptr<i8>
    %385 = llvm.bitcast %384 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %386 = llvm.ptrtoint %385 : !llvm.ptr<f32> to i64
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.sub %382, %387  : i64
    %389 = llvm.add %386, %388  : i64
    %390 = llvm.urem %389, %382  : i64
    %391 = llvm.sub %389, %390  : i64
    %392 = llvm.inttoptr %391 : i64 to !llvm.ptr<f32>
    %393 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %394 = llvm.insertvalue %385, %393[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.insertvalue %392, %394[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.mlir.constant(0 : index) : i64
    %397 = llvm.insertvalue %396, %395[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %371, %397[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.insertvalue %372, %398[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.insertvalue %373, %399[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.insertvalue %374, %400[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.insertvalue %377, %401[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.insertvalue %376, %402[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.insertvalue %374, %403[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.insertvalue %375, %404[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.mlir.constant(0 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%406 : i64)
  ^bb55(%409: i64):  // 2 preds: ^bb54, ^bb65
    %410 = llvm.icmp "slt" %409, %407 : i64
    llvm.cond_br %410, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.mlir.constant(2 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%411 : i64)
  ^bb57(%414: i64):  // 2 preds: ^bb56, ^bb64
    %415 = llvm.icmp "slt" %414, %412 : i64
    llvm.cond_br %415, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %416 = llvm.mlir.constant(0 : index) : i64
    %417 = llvm.mlir.constant(2 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%416 : i64)
  ^bb59(%419: i64):  // 2 preds: ^bb58, ^bb63
    %420 = llvm.icmp "slt" %419, %417 : i64
    llvm.cond_br %420, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %421 = llvm.mlir.constant(0 : index) : i64
    %422 = llvm.mlir.constant(2 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%421 : i64)
  ^bb61(%424: i64):  // 2 preds: ^bb60, ^bb62
    %425 = llvm.icmp "slt" %424, %422 : i64
    llvm.cond_br %425, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %426 = llvm.extractvalue %322[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.mlir.constant(8 : index) : i64
    %428 = llvm.mul %409, %427  : i64
    %429 = llvm.mlir.constant(4 : index) : i64
    %430 = llvm.mul %414, %429  : i64
    %431 = llvm.add %428, %430  : i64
    %432 = llvm.mlir.constant(2 : index) : i64
    %433 = llvm.mul %419, %432  : i64
    %434 = llvm.add %431, %433  : i64
    %435 = llvm.add %434, %424  : i64
    %436 = llvm.getelementptr %426[%435] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %437 = llvm.load %436 : !llvm.ptr<f32>
    %438 = llvm.fsub %15, %437  : f32
    %439 = llvm.intr.exp(%438)  : (f32) -> f32
    %440 = llvm.fadd %439, %14  : f32
    %441 = llvm.fdiv %14, %440  : f32
    %442 = llvm.extractvalue %405[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.mlir.constant(8 : index) : i64
    %444 = llvm.mul %409, %443  : i64
    %445 = llvm.mlir.constant(4 : index) : i64
    %446 = llvm.mul %414, %445  : i64
    %447 = llvm.add %444, %446  : i64
    %448 = llvm.mlir.constant(2 : index) : i64
    %449 = llvm.mul %419, %448  : i64
    %450 = llvm.add %447, %449  : i64
    %451 = llvm.add %450, %424  : i64
    %452 = llvm.getelementptr %442[%451] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %441, %452 : !llvm.ptr<f32>
    %453 = llvm.add %424, %423  : i64
    llvm.br ^bb61(%453 : i64)
  ^bb63:  // pred: ^bb61
    %454 = llvm.add %419, %418  : i64
    llvm.br ^bb59(%454 : i64)
  ^bb64:  // pred: ^bb59
    %455 = llvm.add %414, %413  : i64
    llvm.br ^bb57(%455 : i64)
  ^bb65:  // pred: ^bb57
    %456 = llvm.add %409, %408  : i64
    llvm.br ^bb55(%456 : i64)
  ^bb66:  // pred: ^bb55
    llvm.return %405 : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v5_0"]} {
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
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>
    %52 = llvm.mlir.constant(1 : i64) : i64
    %53 = llvm.mlir.constant(8 : i64) : i64
    %54 = llvm.call @malloc(%53) : (i64) -> !llvm.ptr<i8>
    %55 = llvm.bitcast %54 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %56 = llvm.mlir.constant(4 : i64) : i64
    %57 = llvm.call @omTensorCreateUntyped(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.mlir.constant(1 : i64) : i64
    %59 = llvm.extractvalue %51[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.bitcast %59 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %61 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%57, %58, %60, %62) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %63 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%57, %63) : (!llvm.ptr<i8>, i64) -> ()
    %64 = llvm.call @omTensorGetShape(%57) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %65 = llvm.call @omTensorGetStrides(%57) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %66 = llvm.mlir.constant(0 : i64) : i64
    %67 = llvm.extractvalue %51[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %64[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %51[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %65[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.extractvalue %51[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %64[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %51[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %65[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(2 : i64) : i64
    %77 = llvm.extractvalue %51[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %64[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %51[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %65[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(3 : i64) : i64
    %82 = llvm.extractvalue %51[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %64[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.extractvalue %51[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %65[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.mlir.constant(0 : i64) : i64
    %87 = llvm.getelementptr %55[%86] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %57, %87 : !llvm.ptr<ptr<i8>>
    %88 = llvm.call @omTensorListCreate(%55, %52, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %88 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

