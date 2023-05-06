module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_9(dense<0> : tensor<6xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<6 x i64>
  llvm.mlir.global internal constant @constant_0(dense<4.56711912> : tensor<1x1x1xf32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x f32>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v3_0"]} {
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
    %12 = llvm.mlir.constant(3 : index) : i64
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(0 : i64) : i64
    %15 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x f32>>>>
    %19 = llvm.bitcast %18 : !llvm.ptr<array<1 x array<1 x array<1 x f32>>>> to !llvm.ptr<f32>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
    %21 = llvm.insertvalue %19, %20[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.insertvalue %19, %21[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.mlir.constant(0 : index) : i64
    %24 = llvm.insertvalue %23, %22[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.insertvalue %29, %28[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.insertvalue %31, %30[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.insertvalue %33, %32[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.insertvalue %35, %34[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %37 = llvm.mlir.addressof @constant_9 : !llvm.ptr<array<6 x i64>>
    %38 = llvm.bitcast %37 : !llvm.ptr<array<6 x i64>> to !llvm.ptr<i64>
    %39 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %40 = llvm.insertvalue %38, %39[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.insertvalue %38, %40[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(0 : index) : i64
    %43 = llvm.insertvalue %42, %41[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(6 : index) : i64
    %45 = llvm.insertvalue %44, %43[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.insertvalue %46, %45[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.extractvalue %11[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %49, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(0 : index) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.insertvalue %65, %64[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.null : !llvm.ptr<f32>
    %77 = llvm.getelementptr %76[%71] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %78 = llvm.ptrtoint %77 : !llvm.ptr<f32> to i64
    %79 = llvm.mlir.constant(16 : index) : i64
    %80 = llvm.add %78, %79  : i64
    %81 = llvm.call @malloc(%80) : (i64) -> !llvm.ptr<i8>
    %82 = llvm.bitcast %81 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %83 = llvm.ptrtoint %82 : !llvm.ptr<f32> to i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.sub %79, %84  : i64
    %86 = llvm.add %83, %85  : i64
    %87 = llvm.urem %86, %79  : i64
    %88 = llvm.sub %86, %87  : i64
    %89 = llvm.inttoptr %88 : i64 to !llvm.ptr<f32>
    %90 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %91 = llvm.insertvalue %82, %90[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.insertvalue %89, %91[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.mlir.constant(0 : index) : i64
    %94 = llvm.insertvalue %93, %92[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %71, %94[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %72, %95[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %73, %96[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %74, %97[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %72, %98[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %73, %99[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %74, %100[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %75, %101[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%103 : i64)
  ^bb1(%106: i64):  // 2 preds: ^bb0, ^bb11
    %107 = llvm.icmp "slt" %106, %104 : i64
    llvm.cond_br %107, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%108 : i64)
  ^bb3(%111: i64):  // 2 preds: ^bb2, ^bb10
    %112 = llvm.icmp "slt" %111, %109 : i64
    llvm.cond_br %112, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%113 : i64)
  ^bb5(%116: i64):  // 2 preds: ^bb4, ^bb9
    %117 = llvm.icmp "slt" %116, %114 : i64
    llvm.cond_br %117, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%118 : i64)
  ^bb7(%121: i64):  // 2 preds: ^bb6, ^bb8
    %122 = llvm.icmp "slt" %121, %119 : i64
    llvm.cond_br %122, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %123 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.add %106, %111  : i64
    %125 = llvm.add %124, %116  : i64
    %126 = llvm.add %125, %121  : i64
    %127 = llvm.getelementptr %123[%126] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %128 = llvm.load %127 : !llvm.ptr<i32>
    %129 = llvm.sitofp %128 : i32 to f32
    %130 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.add %106, %111  : i64
    %132 = llvm.add %131, %116  : i64
    %133 = llvm.add %132, %121  : i64
    %134 = llvm.getelementptr %130[%133] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %129, %134 : !llvm.ptr<f32>
    %135 = llvm.add %121, %120  : i64
    llvm.br ^bb7(%135 : i64)
  ^bb9:  // pred: ^bb7
    %136 = llvm.add %116, %115  : i64
    llvm.br ^bb5(%136 : i64)
  ^bb10:  // pred: ^bb5
    %137 = llvm.add %111, %110  : i64
    llvm.br ^bb3(%137 : i64)
  ^bb11:  // pred: ^bb3
    %138 = llvm.add %106, %105  : i64
    llvm.br ^bb1(%138 : i64)
  ^bb12:  // pred: ^bb1
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.null : !llvm.ptr<f32>
    %145 = llvm.getelementptr %144[%139] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %146 = llvm.ptrtoint %145 : !llvm.ptr<f32> to i64
    %147 = llvm.mlir.constant(16 : index) : i64
    %148 = llvm.add %146, %147  : i64
    %149 = llvm.call @malloc(%148) : (i64) -> !llvm.ptr<i8>
    %150 = llvm.bitcast %149 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %151 = llvm.ptrtoint %150 : !llvm.ptr<f32> to i64
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.sub %147, %152  : i64
    %154 = llvm.add %151, %153  : i64
    %155 = llvm.urem %154, %147  : i64
    %156 = llvm.sub %154, %155  : i64
    %157 = llvm.inttoptr %156 : i64 to !llvm.ptr<f32>
    %158 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %159 = llvm.insertvalue %150, %158[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %157, %159[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.insertvalue %161, %160[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.insertvalue %139, %162[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.insertvalue %140, %163[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.insertvalue %141, %164[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.insertvalue %142, %165[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.insertvalue %140, %166[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.insertvalue %141, %167[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.insertvalue %142, %168[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.insertvalue %143, %169[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%171 : i64)
  ^bb13(%174: i64):  // 2 preds: ^bb12, ^bb23
    %175 = llvm.icmp "slt" %174, %172 : i64
    llvm.cond_br %175, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%176 : i64)
  ^bb15(%179: i64):  // 2 preds: ^bb14, ^bb22
    %180 = llvm.icmp "slt" %179, %177 : i64
    llvm.cond_br %180, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %181 = llvm.mlir.constant(0 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%181 : i64)
  ^bb17(%184: i64):  // 2 preds: ^bb16, ^bb21
    %185 = llvm.icmp "slt" %184, %182 : i64
    llvm.cond_br %185, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %186 = llvm.mlir.constant(0 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%186 : i64)
  ^bb19(%189: i64):  // 2 preds: ^bb18, ^bb20
    %190 = llvm.icmp "slt" %189, %187 : i64
    llvm.cond_br %190, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %191 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.add %174, %179  : i64
    %193 = llvm.add %192, %184  : i64
    %194 = llvm.add %193, %189  : i64
    %195 = llvm.getelementptr %191[%194] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %196 = llvm.load %195 : !llvm.ptr<f32>
    %197 = llvm.intr.floor(%196)  : (f32) -> f32
    %198 = llvm.extractvalue %170[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.add %174, %179  : i64
    %200 = llvm.add %199, %184  : i64
    %201 = llvm.add %200, %189  : i64
    %202 = llvm.getelementptr %198[%201] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %197, %202 : !llvm.ptr<f32>
    %203 = llvm.add %189, %188  : i64
    llvm.br ^bb19(%203 : i64)
  ^bb21:  // pred: ^bb19
    %204 = llvm.add %184, %183  : i64
    llvm.br ^bb17(%204 : i64)
  ^bb22:  // pred: ^bb17
    %205 = llvm.add %179, %178  : i64
    llvm.br ^bb15(%205 : i64)
  ^bb23:  // pred: ^bb15
    %206 = llvm.add %174, %173  : i64
    llvm.br ^bb13(%206 : i64)
  ^bb24:  // pred: ^bb13
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.null : !llvm.ptr<f32>
    %213 = llvm.getelementptr %212[%207] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
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
    %226 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %227 = llvm.insertvalue %218, %226[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.insertvalue %225, %227[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.insertvalue %229, %228[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.insertvalue %207, %230[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.insertvalue %208, %231[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.insertvalue %209, %232[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.insertvalue %210, %233[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.insertvalue %208, %234[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.insertvalue %209, %235[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.insertvalue %210, %236[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.insertvalue %211, %237[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.mlir.constant(0 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%239 : i64)
  ^bb25(%242: i64):  // 2 preds: ^bb24, ^bb35
    %243 = llvm.icmp "slt" %242, %240 : i64
    llvm.cond_br %243, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%244 : i64)
  ^bb27(%247: i64):  // 2 preds: ^bb26, ^bb34
    %248 = llvm.icmp "slt" %247, %245 : i64
    llvm.cond_br %248, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%249 : i64)
  ^bb29(%252: i64):  // 2 preds: ^bb28, ^bb33
    %253 = llvm.icmp "slt" %252, %250 : i64
    llvm.cond_br %253, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%254 : i64)
  ^bb31(%257: i64):  // 2 preds: ^bb30, ^bb32
    %258 = llvm.icmp "slt" %257, %255 : i64
    llvm.cond_br %258, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %259 = llvm.extractvalue %170[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.add %242, %247  : i64
    %261 = llvm.add %260, %252  : i64
    %262 = llvm.add %261, %257  : i64
    %263 = llvm.getelementptr %259[%262] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %264 = llvm.load %263 : !llvm.ptr<f32>
    %265 = llvm.extractvalue %36[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %266 = llvm.add %247, %252  : i64
    %267 = llvm.add %266, %257  : i64
    %268 = llvm.getelementptr %265[%267] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %269 = llvm.load %268 : !llvm.ptr<f32>
    %270 = llvm.fcmp "olt" %264, %15 : f32
    %271 = llvm.fmul %269, %264  : f32
    %272 = llvm.select %270, %271, %264 : i1, f32
    %273 = llvm.extractvalue %238[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.add %242, %247  : i64
    %275 = llvm.add %274, %252  : i64
    %276 = llvm.add %275, %257  : i64
    %277 = llvm.getelementptr %273[%276] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %272, %277 : !llvm.ptr<f32>
    %278 = llvm.add %257, %256  : i64
    llvm.br ^bb31(%278 : i64)
  ^bb33:  // pred: ^bb31
    %279 = llvm.add %252, %251  : i64
    llvm.br ^bb29(%279 : i64)
  ^bb34:  // pred: ^bb29
    %280 = llvm.add %247, %246  : i64
    llvm.br ^bb27(%280 : i64)
  ^bb35:  // pred: ^bb27
    %281 = llvm.add %242, %241  : i64
    llvm.br ^bb25(%281 : i64)
  ^bb36:  // pred: ^bb25
    %282 = llvm.mlir.constant(2 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.null : !llvm.ptr<i64>
    %285 = llvm.getelementptr %284[%282] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %286 = llvm.ptrtoint %285 : !llvm.ptr<i64> to i64
    %287 = llvm.mlir.constant(16 : index) : i64
    %288 = llvm.add %286, %287  : i64
    %289 = llvm.call @malloc(%288) : (i64) -> !llvm.ptr<i8>
    %290 = llvm.bitcast %289 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %291 = llvm.ptrtoint %290 : !llvm.ptr<i64> to i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.sub %287, %292  : i64
    %294 = llvm.add %291, %293  : i64
    %295 = llvm.urem %294, %287  : i64
    %296 = llvm.sub %294, %295  : i64
    %297 = llvm.inttoptr %296 : i64 to !llvm.ptr<i64>
    %298 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %299 = llvm.insertvalue %290, %298[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %300 = llvm.insertvalue %297, %299[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %301 = llvm.mlir.constant(0 : index) : i64
    %302 = llvm.insertvalue %301, %300[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.insertvalue %282, %302[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.insertvalue %283, %303[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.mlir.constant(2 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%305 : i64)
  ^bb37(%308: i64):  // 2 preds: ^bb36, ^bb38
    %309 = llvm.icmp "slt" %308, %306 : i64
    llvm.cond_br %309, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %310 = llvm.extractvalue %304[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %311 = llvm.getelementptr %310[%308] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %311 : !llvm.ptr<i64>
    %312 = llvm.add %308, %307  : i64
    llvm.br ^bb37(%312 : i64)
  ^bb39:  // pred: ^bb37
    %313 = llvm.mlir.constant(8 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.null : !llvm.ptr<i64>
    %316 = llvm.getelementptr %315[%313] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %317 = llvm.ptrtoint %316 : !llvm.ptr<i64> to i64
    %318 = llvm.mlir.constant(16 : index) : i64
    %319 = llvm.add %317, %318  : i64
    %320 = llvm.call @malloc(%319) : (i64) -> !llvm.ptr<i8>
    %321 = llvm.bitcast %320 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %322 = llvm.ptrtoint %321 : !llvm.ptr<i64> to i64
    %323 = llvm.mlir.constant(1 : index) : i64
    %324 = llvm.sub %318, %323  : i64
    %325 = llvm.add %322, %324  : i64
    %326 = llvm.urem %325, %318  : i64
    %327 = llvm.sub %325, %326  : i64
    %328 = llvm.inttoptr %327 : i64 to !llvm.ptr<i64>
    %329 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %330 = llvm.insertvalue %321, %329[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %331 = llvm.insertvalue %328, %330[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %332 = llvm.mlir.constant(0 : index) : i64
    %333 = llvm.insertvalue %332, %331[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %334 = llvm.insertvalue %313, %333[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %335 = llvm.insertvalue %314, %334[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %336 = llvm.mlir.constant(0 : index) : i64
    %337 = llvm.mlir.constant(6 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%336 : i64)
  ^bb40(%339: i64):  // 2 preds: ^bb39, ^bb41
    %340 = llvm.icmp "slt" %339, %337 : i64
    llvm.cond_br %340, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %341 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %342 = llvm.getelementptr %341[%339] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %343 = llvm.load %342 : !llvm.ptr<i64>
    %344 = llvm.extractvalue %335[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %345 = llvm.getelementptr %344[%339] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %343, %345 : !llvm.ptr<i64>
    %346 = llvm.add %339, %338  : i64
    llvm.br ^bb40(%346 : i64)
  ^bb42:  // pred: ^bb40
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.mlir.constant(2 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%347 : i64)
  ^bb43(%350: i64):  // 2 preds: ^bb42, ^bb44
    %351 = llvm.icmp "slt" %350, %348 : i64
    llvm.cond_br %351, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %352 = llvm.mlir.constant(6 : index) : i64
    %353 = llvm.add %350, %352  : i64
    %354 = llvm.extractvalue %304[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %355 = llvm.getelementptr %354[%350] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %356 = llvm.load %355 : !llvm.ptr<i64>
    %357 = llvm.extractvalue %335[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %358 = llvm.getelementptr %357[%353] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %356, %358 : !llvm.ptr<i64>
    %359 = llvm.add %350, %349  : i64
    llvm.br ^bb43(%359 : i64)
  ^bb45:  // pred: ^bb43
    %360 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %361 = llvm.extractvalue %335[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %362 = llvm.extractvalue %335[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %363 = llvm.insertvalue %361, %360[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %364 = llvm.insertvalue %362, %363[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %365 = llvm.mlir.constant(0 : index) : i64
    %366 = llvm.insertvalue %365, %364[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %367 = llvm.mlir.constant(4 : index) : i64
    %368 = llvm.insertvalue %367, %366[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %369 = llvm.mlir.constant(2 : index) : i64
    %370 = llvm.insertvalue %369, %368[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %371 = llvm.mlir.constant(2 : index) : i64
    %372 = llvm.insertvalue %371, %370[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %373 = llvm.mlir.constant(1 : index) : i64
    %374 = llvm.insertvalue %373, %372[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %375 = llvm.mlir.constant(4 : index) : i64
    %376 = llvm.mlir.constant(2 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    %378 = llvm.mlir.constant(8 : index) : i64
    %379 = llvm.mlir.null : !llvm.ptr<i64>
    %380 = llvm.getelementptr %379[%378] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %381 = llvm.ptrtoint %380 : !llvm.ptr<i64> to i64
    %382 = llvm.mlir.constant(16 : index) : i64
    %383 = llvm.add %381, %382  : i64
    %384 = llvm.call @malloc(%383) : (i64) -> !llvm.ptr<i8>
    %385 = llvm.bitcast %384 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %386 = llvm.ptrtoint %385 : !llvm.ptr<i64> to i64
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.sub %382, %387  : i64
    %389 = llvm.add %386, %388  : i64
    %390 = llvm.urem %389, %382  : i64
    %391 = llvm.sub %389, %390  : i64
    %392 = llvm.inttoptr %391 : i64 to !llvm.ptr<i64>
    %393 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %394 = llvm.insertvalue %385, %393[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %395 = llvm.insertvalue %392, %394[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %396 = llvm.mlir.constant(0 : index) : i64
    %397 = llvm.insertvalue %396, %395[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %398 = llvm.insertvalue %375, %397[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %399 = llvm.insertvalue %376, %398[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %400 = llvm.insertvalue %376, %399[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %401 = llvm.insertvalue %377, %400[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.mlir.constant(4 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%402 : i64)
  ^bb46(%405: i64):  // 2 preds: ^bb45, ^bb50
    %406 = llvm.icmp "slt" %405, %403 : i64
    llvm.cond_br %406, ^bb47, ^bb51
  ^bb47:  // pred: ^bb46
    %407 = llvm.mlir.constant(0 : index) : i64
    %408 = llvm.mlir.constant(2 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%407 : i64)
  ^bb48(%410: i64):  // 2 preds: ^bb47, ^bb49
    %411 = llvm.icmp "slt" %410, %408 : i64
    llvm.cond_br %411, ^bb49, ^bb50
  ^bb49:  // pred: ^bb48
    %412 = llvm.mlir.constant(-1 : index) : i64
    %413 = llvm.mul %405, %412  : i64
    %414 = llvm.mlir.constant(3 : index) : i64
    %415 = llvm.add %413, %414  : i64
    %416 = llvm.extractvalue %374[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %417 = llvm.mlir.constant(2 : index) : i64
    %418 = llvm.mul %415, %417  : i64
    %419 = llvm.add %418, %410  : i64
    %420 = llvm.getelementptr %416[%419] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %421 = llvm.load %420 : !llvm.ptr<i64>
    %422 = llvm.extractvalue %401[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %423 = llvm.mlir.constant(2 : index) : i64
    %424 = llvm.mul %405, %423  : i64
    %425 = llvm.add %424, %410  : i64
    %426 = llvm.getelementptr %422[%425] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %421, %426 : !llvm.ptr<i64>
    %427 = llvm.add %410, %409  : i64
    llvm.br ^bb48(%427 : i64)
  ^bb50:  // pred: ^bb48
    %428 = llvm.add %405, %404  : i64
    llvm.br ^bb46(%428 : i64)
  ^bb51:  // pred: ^bb46
    %429 = llvm.mlir.constant(2 : index) : i64
    %430 = llvm.mlir.constant(4 : index) : i64
    %431 = llvm.mlir.constant(1 : index) : i64
    %432 = llvm.mlir.constant(8 : index) : i64
    %433 = llvm.mlir.null : !llvm.ptr<i64>
    %434 = llvm.getelementptr %433[%432] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %435 = llvm.ptrtoint %434 : !llvm.ptr<i64> to i64
    %436 = llvm.mlir.constant(16 : index) : i64
    %437 = llvm.add %435, %436  : i64
    %438 = llvm.call @malloc(%437) : (i64) -> !llvm.ptr<i8>
    %439 = llvm.bitcast %438 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %440 = llvm.ptrtoint %439 : !llvm.ptr<i64> to i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.sub %436, %441  : i64
    %443 = llvm.add %440, %442  : i64
    %444 = llvm.urem %443, %436  : i64
    %445 = llvm.sub %443, %444  : i64
    %446 = llvm.inttoptr %445 : i64 to !llvm.ptr<i64>
    %447 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %448 = llvm.insertvalue %439, %447[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %449 = llvm.insertvalue %446, %448[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.insertvalue %450, %449[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %452 = llvm.insertvalue %429, %451[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %453 = llvm.insertvalue %430, %452[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %454 = llvm.insertvalue %430, %453[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %455 = llvm.insertvalue %431, %454[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.mlir.constant(4 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%456 : i64)
  ^bb52(%459: i64):  // 2 preds: ^bb51, ^bb56
    %460 = llvm.icmp "slt" %459, %457 : i64
    llvm.cond_br %460, ^bb53, ^bb57
  ^bb53:  // pred: ^bb52
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.mlir.constant(2 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%461 : i64)
  ^bb54(%464: i64):  // 2 preds: ^bb53, ^bb55
    %465 = llvm.icmp "slt" %464, %462 : i64
    llvm.cond_br %465, ^bb55, ^bb56
  ^bb55:  // pred: ^bb54
    %466 = llvm.extractvalue %401[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %467 = llvm.mlir.constant(2 : index) : i64
    %468 = llvm.mul %459, %467  : i64
    %469 = llvm.add %468, %464  : i64
    %470 = llvm.getelementptr %466[%469] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %471 = llvm.load %470 : !llvm.ptr<i64>
    %472 = llvm.extractvalue %455[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %473 = llvm.mlir.constant(4 : index) : i64
    %474 = llvm.mul %464, %473  : i64
    %475 = llvm.add %474, %459  : i64
    %476 = llvm.getelementptr %472[%475] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %471, %476 : !llvm.ptr<i64>
    %477 = llvm.add %464, %463  : i64
    llvm.br ^bb54(%477 : i64)
  ^bb56:  // pred: ^bb54
    %478 = llvm.add %459, %458  : i64
    llvm.br ^bb52(%478 : i64)
  ^bb57:  // pred: ^bb52
    %479 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %480 = llvm.extractvalue %455[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %481 = llvm.extractvalue %455[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %482 = llvm.insertvalue %480, %479[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %483 = llvm.insertvalue %481, %482[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %484 = llvm.mlir.constant(0 : index) : i64
    %485 = llvm.insertvalue %484, %483[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %486 = llvm.mlir.constant(8 : index) : i64
    %487 = llvm.insertvalue %486, %485[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %488 = llvm.mlir.constant(1 : index) : i64
    %489 = llvm.insertvalue %488, %487[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %490 = llvm.extractvalue %489[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %491 = llvm.getelementptr %490[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %492 = llvm.load %491 : !llvm.ptr<i64>
    %493 = llvm.extractvalue %489[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %494 = llvm.getelementptr %493[%17] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %495 = llvm.load %494 : !llvm.ptr<i64>
    %496 = llvm.extractvalue %489[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %497 = llvm.getelementptr %496[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %498 = llvm.load %497 : !llvm.ptr<i64>
    %499 = llvm.extractvalue %489[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %500 = llvm.getelementptr %499[%12] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %501 = llvm.load %500 : !llvm.ptr<i64>
    %502 = llvm.mlir.constant(1 : index) : i64
    %503 = llvm.mlir.constant(1 : index) : i64
    %504 = llvm.mlir.constant(1 : index) : i64
    %505 = llvm.mlir.constant(1 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    %507 = llvm.mlir.null : !llvm.ptr<f32>
    %508 = llvm.getelementptr %507[%502] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %509 = llvm.ptrtoint %508 : !llvm.ptr<f32> to i64
    %510 = llvm.mlir.constant(16 : index) : i64
    %511 = llvm.add %509, %510  : i64
    %512 = llvm.call @malloc(%511) : (i64) -> !llvm.ptr<i8>
    %513 = llvm.bitcast %512 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %514 = llvm.ptrtoint %513 : !llvm.ptr<f32> to i64
    %515 = llvm.mlir.constant(1 : index) : i64
    %516 = llvm.sub %510, %515  : i64
    %517 = llvm.add %514, %516  : i64
    %518 = llvm.urem %517, %510  : i64
    %519 = llvm.sub %517, %518  : i64
    %520 = llvm.inttoptr %519 : i64 to !llvm.ptr<f32>
    %521 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %522 = llvm.insertvalue %513, %521[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %523 = llvm.insertvalue %520, %522[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %524 = llvm.mlir.constant(0 : index) : i64
    %525 = llvm.insertvalue %524, %523[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %526 = llvm.insertvalue %502, %525[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %527 = llvm.insertvalue %503, %526[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %528 = llvm.insertvalue %504, %527[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %529 = llvm.insertvalue %505, %528[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %530 = llvm.insertvalue %503, %529[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %531 = llvm.insertvalue %504, %530[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %532 = llvm.insertvalue %505, %531[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %533 = llvm.insertvalue %506, %532[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %534 = llvm.mlir.constant(0 : index) : i64
    %535 = llvm.mlir.constant(1 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%534 : i64)
  ^bb58(%537: i64):  // 2 preds: ^bb57, ^bb68
    %538 = llvm.icmp "slt" %537, %535 : i64
    llvm.cond_br %538, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %539 = llvm.mlir.constant(0 : index) : i64
    %540 = llvm.mlir.constant(1 : index) : i64
    %541 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%539 : i64)
  ^bb60(%542: i64):  // 2 preds: ^bb59, ^bb67
    %543 = llvm.icmp "slt" %542, %540 : i64
    llvm.cond_br %543, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %544 = llvm.mlir.constant(0 : index) : i64
    %545 = llvm.mlir.constant(1 : index) : i64
    %546 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%544 : i64)
  ^bb62(%547: i64):  // 2 preds: ^bb61, ^bb66
    %548 = llvm.icmp "slt" %547, %545 : i64
    llvm.cond_br %548, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %549 = llvm.mlir.constant(0 : index) : i64
    %550 = llvm.mlir.constant(1 : index) : i64
    %551 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%549 : i64)
  ^bb64(%552: i64):  // 2 preds: ^bb63, ^bb65
    %553 = llvm.icmp "slt" %552, %550 : i64
    llvm.cond_br %553, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %554 = llvm.mlir.constant(-1 : index) : i64
    %555 = llvm.mul %492, %554  : i64
    %556 = llvm.add %537, %555  : i64
    %557 = llvm.icmp "sle" %537, %492 : i64
    %558 = llvm.select %557, %16, %556 : i1, i64
    %559 = llvm.icmp "sge" %558, %17 : i64
    %560 = llvm.select %559, %16, %558 : i1, i64
    %561 = llvm.mlir.constant(-1 : index) : i64
    %562 = llvm.mul %495, %561  : i64
    %563 = llvm.add %542, %562  : i64
    %564 = llvm.icmp "sle" %542, %495 : i64
    %565 = llvm.select %564, %16, %563 : i1, i64
    %566 = llvm.icmp "sge" %565, %17 : i64
    %567 = llvm.select %566, %16, %565 : i1, i64
    %568 = llvm.mlir.constant(-1 : index) : i64
    %569 = llvm.mul %498, %568  : i64
    %570 = llvm.add %547, %569  : i64
    %571 = llvm.icmp "sle" %547, %498 : i64
    %572 = llvm.select %571, %16, %570 : i1, i64
    %573 = llvm.icmp "sge" %572, %17 : i64
    %574 = llvm.select %573, %16, %572 : i1, i64
    %575 = llvm.mlir.constant(-1 : index) : i64
    %576 = llvm.mul %501, %575  : i64
    %577 = llvm.add %552, %576  : i64
    %578 = llvm.icmp "sle" %552, %501 : i64
    %579 = llvm.select %578, %16, %577 : i1, i64
    %580 = llvm.icmp "sge" %579, %17 : i64
    %581 = llvm.select %580, %16, %579 : i1, i64
    %582 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %583 = llvm.add %560, %567  : i64
    %584 = llvm.add %583, %574  : i64
    %585 = llvm.add %584, %581  : i64
    %586 = llvm.getelementptr %582[%585] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %587 = llvm.load %586 : !llvm.ptr<f32>
    %588 = llvm.extractvalue %533[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %589 = llvm.add %537, %542  : i64
    %590 = llvm.add %589, %547  : i64
    %591 = llvm.add %590, %552  : i64
    %592 = llvm.getelementptr %588[%591] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %587, %592 : !llvm.ptr<f32>
    %593 = llvm.add %552, %551  : i64
    llvm.br ^bb64(%593 : i64)
  ^bb66:  // pred: ^bb64
    %594 = llvm.add %547, %546  : i64
    llvm.br ^bb62(%594 : i64)
  ^bb67:  // pred: ^bb62
    %595 = llvm.add %542, %541  : i64
    llvm.br ^bb60(%595 : i64)
  ^bb68:  // pred: ^bb60
    %596 = llvm.add %537, %536  : i64
    llvm.br ^bb58(%596 : i64)
  ^bb69:  // pred: ^bb58
    %597 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %598 = llvm.insertvalue %238, %597[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %599 = llvm.insertvalue %533, %598[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %599 : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v3_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(4 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(3 : i64) : i64
    %109 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %91[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %92[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.getelementptr %50[%113] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %114 : !llvm.ptr<ptr<i8>>
    %115 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %115 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

