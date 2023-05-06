module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22f64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<-1.500000e+00> : tensor<f64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x f64>
  llvm.mlir.global internal constant @constant_3(dense<1.500000e+00> : tensor<f64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x f64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v3_0", "v2_0"]} {
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
    %28 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x f64>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<1 x f64>> to !llvm.ptr<f64>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %35 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x f64>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<1 x f64>> to !llvm.ptr<f64>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %42 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %43 = llvm.bitcast %42 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %44 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %45 = llvm.insertvalue %43, %44[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.insertvalue %43, %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.constant(0 : index) : i64
    %48 = llvm.insertvalue %47, %46[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(4 : index) : i64
    %50 = llvm.insertvalue %49, %48[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<1 x i64>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %56 = llvm.insertvalue %54, %55[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %57 = llvm.insertvalue %54, %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.insertvalue %58, %57[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %60 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<4 x i64>>
    %61 = llvm.bitcast %60 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %62 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %63 = llvm.insertvalue %61, %62[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.insertvalue %61, %63[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.mlir.constant(4 : index) : i64
    %68 = llvm.insertvalue %67, %66[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.null : !llvm.ptr<f64>
    %77 = llvm.getelementptr %76[%71] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %78 = llvm.ptrtoint %77 : !llvm.ptr<f64> to i64
    %79 = llvm.mlir.constant(16 : index) : i64
    %80 = llvm.add %78, %79  : i64
    %81 = llvm.call @malloc(%80) : (i64) -> !llvm.ptr<i8>
    %82 = llvm.bitcast %81 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %83 = llvm.ptrtoint %82 : !llvm.ptr<f64> to i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.sub %79, %84  : i64
    %86 = llvm.add %83, %85  : i64
    %87 = llvm.urem %86, %79  : i64
    %88 = llvm.sub %86, %87  : i64
    %89 = llvm.inttoptr %88 : i64 to !llvm.ptr<f64>
    %90 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %91 = llvm.insertvalue %82, %90[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.insertvalue %89, %91[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.mlir.constant(0 : index) : i64
    %94 = llvm.insertvalue %93, %92[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %71, %94[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %72, %95[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %73, %96[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %74, %97[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %72, %98[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %73, %99[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %74, %100[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %75, %101[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %123 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.add %106, %111  : i64
    %125 = llvm.add %124, %116  : i64
    %126 = llvm.add %125, %121  : i64
    %127 = llvm.getelementptr %123[%126] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %128 = llvm.load %127 : !llvm.ptr<i32>
    %129 = llvm.sitofp %128 : i32 to f64
    %130 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.add %106, %111  : i64
    %132 = llvm.add %131, %116  : i64
    %133 = llvm.add %132, %121  : i64
    %134 = llvm.getelementptr %130[%133] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %129, %134 : !llvm.ptr<f64>
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
    %139 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %140 = llvm.extractvalue %102[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.insertvalue %140, %139[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.insertvalue %141, %142[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.mlir.constant(0 : index) : i64
    %145 = llvm.insertvalue %144, %143[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.insertvalue %146, %145[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.insertvalue %148, %147[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.insertvalue %150, %149[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.insertvalue %152, %151[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.insertvalue %154, %153[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.insertvalue %156, %155[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.insertvalue %158, %157[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.insertvalue %160, %159[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.mlir.constant(4 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.null : !llvm.ptr<i64>
    %165 = llvm.getelementptr %164[%162] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %166 = llvm.ptrtoint %165 : !llvm.ptr<i64> to i64
    %167 = llvm.mlir.constant(16 : index) : i64
    %168 = llvm.add %166, %167  : i64
    %169 = llvm.call @malloc(%168) : (i64) -> !llvm.ptr<i8>
    %170 = llvm.bitcast %169 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %171 = llvm.ptrtoint %170 : !llvm.ptr<i64> to i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.sub %167, %172  : i64
    %174 = llvm.add %171, %173  : i64
    %175 = llvm.urem %174, %167  : i64
    %176 = llvm.sub %174, %175  : i64
    %177 = llvm.inttoptr %176 : i64 to !llvm.ptr<i64>
    %178 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %179 = llvm.insertvalue %170, %178[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.insertvalue %177, %179[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.mlir.constant(0 : index) : i64
    %182 = llvm.insertvalue %181, %180[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.insertvalue %162, %182[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %184 = llvm.insertvalue %163, %183[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(4 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%185 : i64)
  ^bb13(%188: i64):  // 2 preds: ^bb12, ^bb14
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %190 = llvm.extractvalue %184[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %191 = llvm.getelementptr %190[%188] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %191 : !llvm.ptr<i64>
    %192 = llvm.add %188, %187  : i64
    llvm.br ^bb13(%192 : i64)
  ^bb15:  // pred: ^bb13
    %193 = llvm.mlir.constant(4 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.mlir.null : !llvm.ptr<i64>
    %196 = llvm.getelementptr %195[%193] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %197 = llvm.ptrtoint %196 : !llvm.ptr<i64> to i64
    %198 = llvm.mlir.constant(16 : index) : i64
    %199 = llvm.add %197, %198  : i64
    %200 = llvm.call @malloc(%199) : (i64) -> !llvm.ptr<i8>
    %201 = llvm.bitcast %200 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %202 = llvm.ptrtoint %201 : !llvm.ptr<i64> to i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.sub %198, %203  : i64
    %205 = llvm.add %202, %204  : i64
    %206 = llvm.urem %205, %198  : i64
    %207 = llvm.sub %205, %206  : i64
    %208 = llvm.inttoptr %207 : i64 to !llvm.ptr<i64>
    %209 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %210 = llvm.insertvalue %201, %209[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %211 = llvm.insertvalue %208, %210[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.insertvalue %212, %211[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.insertvalue %193, %213[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %215 = llvm.insertvalue %194, %214[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.mlir.constant(4 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%216 : i64)
  ^bb16(%219: i64):  // 2 preds: ^bb15, ^bb17
    %220 = llvm.icmp "slt" %219, %217 : i64
    llvm.cond_br %220, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %221 = llvm.extractvalue %184[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %222 = llvm.getelementptr %221[%219] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %223 = llvm.load %222 : !llvm.ptr<i64>
    %224 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %225 = llvm.load %224 : !llvm.ptr<i64>
    %226 = llvm.mul %223, %225  : i64
    %227 = llvm.extractvalue %215[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %228 = llvm.getelementptr %227[%219] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %226, %228 : !llvm.ptr<i64>
    %229 = llvm.add %219, %218  : i64
    llvm.br ^bb16(%229 : i64)
  ^bb18:  // pred: ^bb16
    %230 = llvm.mlir.constant(4 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.null : !llvm.ptr<i1>
    %233 = llvm.getelementptr %232[%230] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %234 = llvm.ptrtoint %233 : !llvm.ptr<i1> to i64
    %235 = llvm.mlir.constant(16 : index) : i64
    %236 = llvm.add %234, %235  : i64
    %237 = llvm.call @malloc(%236) : (i64) -> !llvm.ptr<i8>
    %238 = llvm.bitcast %237 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %239 = llvm.ptrtoint %238 : !llvm.ptr<i1> to i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.sub %235, %240  : i64
    %242 = llvm.add %239, %241  : i64
    %243 = llvm.urem %242, %235  : i64
    %244 = llvm.sub %242, %243  : i64
    %245 = llvm.inttoptr %244 : i64 to !llvm.ptr<i1>
    %246 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %247 = llvm.insertvalue %238, %246[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.insertvalue %245, %247[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.insertvalue %249, %248[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.insertvalue %230, %250[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.insertvalue %231, %251[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.mlir.constant(4 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%253 : i64)
  ^bb19(%256: i64):  // 2 preds: ^bb18, ^bb20
    %257 = llvm.icmp "slt" %256, %254 : i64
    llvm.cond_br %257, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %258 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %259 = llvm.getelementptr %258[%256] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %260 = llvm.load %259 : !llvm.ptr<i64>
    %261 = llvm.extractvalue %215[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.getelementptr %261[%256] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %263 = llvm.load %262 : !llvm.ptr<i64>
    %264 = llvm.icmp "eq" %260, %263 : i64
    %265 = llvm.extractvalue %252[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.getelementptr %265[%256] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %264, %266 : !llvm.ptr<i1>
    %267 = llvm.add %256, %255  : i64
    llvm.br ^bb19(%267 : i64)
  ^bb21:  // pred: ^bb19
    %268 = llvm.mlir.constant(4 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.null : !llvm.ptr<i64>
    %271 = llvm.getelementptr %270[%268] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %272 = llvm.ptrtoint %271 : !llvm.ptr<i64> to i64
    %273 = llvm.mlir.constant(16 : index) : i64
    %274 = llvm.add %272, %273  : i64
    %275 = llvm.call @malloc(%274) : (i64) -> !llvm.ptr<i8>
    %276 = llvm.bitcast %275 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %277 = llvm.ptrtoint %276 : !llvm.ptr<i64> to i64
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.sub %273, %278  : i64
    %280 = llvm.add %277, %279  : i64
    %281 = llvm.urem %280, %273  : i64
    %282 = llvm.sub %280, %281  : i64
    %283 = llvm.inttoptr %282 : i64 to !llvm.ptr<i64>
    %284 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %285 = llvm.insertvalue %276, %284[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.insertvalue %283, %285[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.insertvalue %287, %286[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %289 = llvm.insertvalue %268, %288[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.insertvalue %269, %289[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.mlir.constant(0 : index) : i64
    %292 = llvm.mlir.constant(4 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%291 : i64)
  ^bb22(%294: i64):  // 2 preds: ^bb21, ^bb23
    %295 = llvm.icmp "slt" %294, %292 : i64
    llvm.cond_br %295, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %296 = llvm.extractvalue %252[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %297 = llvm.getelementptr %296[%294] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %298 = llvm.load %297 : !llvm.ptr<i1>
    %299 = llvm.extractvalue %184[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %300 = llvm.getelementptr %299[%294] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %301 = llvm.load %300 : !llvm.ptr<i64>
    %302 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.getelementptr %302[%294] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %304 = llvm.load %303 : !llvm.ptr<i64>
    %305 = llvm.select %298, %301, %304 : i1, i64
    %306 = llvm.extractvalue %290[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.getelementptr %306[%294] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %305, %307 : !llvm.ptr<i64>
    %308 = llvm.add %294, %293  : i64
    llvm.br ^bb22(%308 : i64)
  ^bb24:  // pred: ^bb22
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.mlir.null : !llvm.ptr<f64>
    %315 = llvm.getelementptr %314[%309] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %316 = llvm.ptrtoint %315 : !llvm.ptr<f64> to i64
    %317 = llvm.mlir.constant(16 : index) : i64
    %318 = llvm.add %316, %317  : i64
    %319 = llvm.call @malloc(%318) : (i64) -> !llvm.ptr<i8>
    %320 = llvm.bitcast %319 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %321 = llvm.ptrtoint %320 : !llvm.ptr<f64> to i64
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.sub %317, %322  : i64
    %324 = llvm.add %321, %323  : i64
    %325 = llvm.urem %324, %317  : i64
    %326 = llvm.sub %324, %325  : i64
    %327 = llvm.inttoptr %326 : i64 to !llvm.ptr<f64>
    %328 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %329 = llvm.insertvalue %320, %328[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.insertvalue %327, %329[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.mlir.constant(0 : index) : i64
    %332 = llvm.insertvalue %331, %330[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.insertvalue %309, %332[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.insertvalue %310, %333[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.insertvalue %311, %334[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.insertvalue %312, %335[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.insertvalue %310, %336[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.insertvalue %311, %337[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.insertvalue %312, %338[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.insertvalue %313, %339[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.mlir.constant(0 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%341 : i64)
  ^bb25(%344: i64):  // 2 preds: ^bb24, ^bb35
    %345 = llvm.icmp "slt" %344, %342 : i64
    llvm.cond_br %345, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%346 : i64)
  ^bb27(%349: i64):  // 2 preds: ^bb26, ^bb34
    %350 = llvm.icmp "slt" %349, %347 : i64
    llvm.cond_br %350, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %351 = llvm.mlir.constant(0 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%351 : i64)
  ^bb29(%354: i64):  // 2 preds: ^bb28, ^bb33
    %355 = llvm.icmp "slt" %354, %352 : i64
    llvm.cond_br %355, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%356 : i64)
  ^bb31(%359: i64):  // 2 preds: ^bb30, ^bb32
    %360 = llvm.icmp "slt" %359, %357 : i64
    llvm.cond_br %360, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %361 = llvm.extractvalue %161[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.add %13, %13  : i64
    %363 = llvm.add %362, %13  : i64
    %364 = llvm.add %363, %13  : i64
    %365 = llvm.getelementptr %361[%364] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %366 = llvm.load %365 : !llvm.ptr<f64>
    %367 = llvm.extractvalue %340[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.add %344, %349  : i64
    %369 = llvm.add %368, %354  : i64
    %370 = llvm.add %369, %359  : i64
    %371 = llvm.getelementptr %367[%370] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %366, %371 : !llvm.ptr<f64>
    %372 = llvm.add %359, %358  : i64
    llvm.br ^bb31(%372 : i64)
  ^bb33:  // pred: ^bb31
    %373 = llvm.add %354, %353  : i64
    llvm.br ^bb29(%373 : i64)
  ^bb34:  // pred: ^bb29
    %374 = llvm.add %349, %348  : i64
    llvm.br ^bb27(%374 : i64)
  ^bb35:  // pred: ^bb27
    %375 = llvm.add %344, %343  : i64
    llvm.br ^bb25(%375 : i64)
  ^bb36:  // pred: ^bb25
    %376 = llvm.mlir.constant(1 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.mlir.null : !llvm.ptr<f64>
    %382 = llvm.getelementptr %381[%376] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %383 = llvm.ptrtoint %382 : !llvm.ptr<f64> to i64
    %384 = llvm.mlir.constant(16 : index) : i64
    %385 = llvm.add %383, %384  : i64
    %386 = llvm.call @malloc(%385) : (i64) -> !llvm.ptr<i8>
    %387 = llvm.bitcast %386 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %388 = llvm.ptrtoint %387 : !llvm.ptr<f64> to i64
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.sub %384, %389  : i64
    %391 = llvm.add %388, %390  : i64
    %392 = llvm.urem %391, %384  : i64
    %393 = llvm.sub %391, %392  : i64
    %394 = llvm.inttoptr %393 : i64 to !llvm.ptr<f64>
    %395 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %396 = llvm.insertvalue %387, %395[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.insertvalue %394, %396[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.insertvalue %398, %397[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.insertvalue %376, %399[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.insertvalue %377, %400[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.insertvalue %378, %401[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.insertvalue %379, %402[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.insertvalue %377, %403[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.insertvalue %378, %404[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.insertvalue %379, %405[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.insertvalue %380, %406[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.mlir.constant(0 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%408 : i64)
  ^bb37(%411: i64):  // 2 preds: ^bb36, ^bb47
    %412 = llvm.icmp "slt" %411, %409 : i64
    llvm.cond_br %412, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %413 = llvm.mlir.constant(0 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%413 : i64)
  ^bb39(%416: i64):  // 2 preds: ^bb38, ^bb46
    %417 = llvm.icmp "slt" %416, %414 : i64
    llvm.cond_br %417, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %418 = llvm.mlir.constant(0 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%418 : i64)
  ^bb41(%421: i64):  // 2 preds: ^bb40, ^bb45
    %422 = llvm.icmp "slt" %421, %419 : i64
    llvm.cond_br %422, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %423 = llvm.mlir.constant(0 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%423 : i64)
  ^bb43(%426: i64):  // 2 preds: ^bb42, ^bb44
    %427 = llvm.icmp "slt" %426, %424 : i64
    llvm.cond_br %427, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %428 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.add %411, %416  : i64
    %430 = llvm.add %429, %421  : i64
    %431 = llvm.add %430, %426  : i64
    %432 = llvm.getelementptr %428[%431] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %433 = llvm.load %432 : !llvm.ptr<f64>
    %434 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %435 = llvm.load %434 : !llvm.ptr<f64>
    %436 = llvm.fcmp "olt" %433, %435 : f64
    %437 = llvm.select %436, %435, %433 : i1, f64
    %438 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %439 = llvm.load %438 : !llvm.ptr<f64>
    %440 = llvm.fcmp "olt" %437, %439 : f64
    %441 = llvm.select %440, %437, %439 : i1, f64
    %442 = llvm.extractvalue %407[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.add %411, %416  : i64
    %444 = llvm.add %443, %421  : i64
    %445 = llvm.add %444, %426  : i64
    %446 = llvm.getelementptr %442[%445] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %441, %446 : !llvm.ptr<f64>
    %447 = llvm.add %426, %425  : i64
    llvm.br ^bb43(%447 : i64)
  ^bb45:  // pred: ^bb43
    %448 = llvm.add %421, %420  : i64
    llvm.br ^bb41(%448 : i64)
  ^bb46:  // pred: ^bb41
    %449 = llvm.add %416, %415  : i64
    llvm.br ^bb39(%449 : i64)
  ^bb47:  // pred: ^bb39
    %450 = llvm.add %411, %410  : i64
    llvm.br ^bb37(%450 : i64)
  ^bb48:  // pred: ^bb37
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    %456 = llvm.mlir.null : !llvm.ptr<i32>
    %457 = llvm.getelementptr %456[%451] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %458 = llvm.ptrtoint %457 : !llvm.ptr<i32> to i64
    %459 = llvm.mlir.constant(16 : index) : i64
    %460 = llvm.add %458, %459  : i64
    %461 = llvm.call @malloc(%460) : (i64) -> !llvm.ptr<i8>
    %462 = llvm.bitcast %461 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %463 = llvm.ptrtoint %462 : !llvm.ptr<i32> to i64
    %464 = llvm.mlir.constant(1 : index) : i64
    %465 = llvm.sub %459, %464  : i64
    %466 = llvm.add %463, %465  : i64
    %467 = llvm.urem %466, %459  : i64
    %468 = llvm.sub %466, %467  : i64
    %469 = llvm.inttoptr %468 : i64 to !llvm.ptr<i32>
    %470 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %471 = llvm.insertvalue %462, %470[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.insertvalue %469, %471[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.mlir.constant(0 : index) : i64
    %474 = llvm.insertvalue %473, %472[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %451, %474[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %452, %475[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.insertvalue %453, %476[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.insertvalue %454, %477[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.insertvalue %452, %478[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %480 = llvm.insertvalue %453, %479[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.insertvalue %454, %480[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %482 = llvm.insertvalue %455, %481[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %483 = llvm.mlir.constant(0 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%483 : i64)
  ^bb49(%486: i64):  // 2 preds: ^bb48, ^bb59
    %487 = llvm.icmp "slt" %486, %484 : i64
    llvm.cond_br %487, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %488 = llvm.mlir.constant(0 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%488 : i64)
  ^bb51(%491: i64):  // 2 preds: ^bb50, ^bb58
    %492 = llvm.icmp "slt" %491, %489 : i64
    llvm.cond_br %492, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %493 = llvm.mlir.constant(0 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%493 : i64)
  ^bb53(%496: i64):  // 2 preds: ^bb52, ^bb57
    %497 = llvm.icmp "slt" %496, %494 : i64
    llvm.cond_br %497, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %498 = llvm.mlir.constant(0 : index) : i64
    %499 = llvm.mlir.constant(1 : index) : i64
    %500 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%498 : i64)
  ^bb55(%501: i64):  // 2 preds: ^bb54, ^bb56
    %502 = llvm.icmp "slt" %501, %499 : i64
    llvm.cond_br %502, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %503 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.add %486, %491  : i64
    %505 = llvm.add %504, %496  : i64
    %506 = llvm.add %505, %501  : i64
    %507 = llvm.getelementptr %503[%506] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %508 = llvm.load %507 : !llvm.ptr<i32>
    %509 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %510 = llvm.load %509 : !llvm.ptr<i32>
    %511 = llvm.icmp "slt" %508, %510 : i32
    %512 = llvm.select %511, %510, %508 : i1, i32
    %513 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %514 = llvm.load %513 : !llvm.ptr<i32>
    %515 = llvm.icmp "slt" %512, %514 : i32
    %516 = llvm.select %515, %512, %514 : i1, i32
    %517 = llvm.extractvalue %482[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.add %486, %491  : i64
    %519 = llvm.add %518, %496  : i64
    %520 = llvm.add %519, %501  : i64
    %521 = llvm.getelementptr %517[%520] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %516, %521 : !llvm.ptr<i32>
    %522 = llvm.add %501, %500  : i64
    llvm.br ^bb55(%522 : i64)
  ^bb57:  // pred: ^bb55
    %523 = llvm.add %496, %495  : i64
    llvm.br ^bb53(%523 : i64)
  ^bb58:  // pred: ^bb53
    %524 = llvm.add %491, %490  : i64
    llvm.br ^bb51(%524 : i64)
  ^bb59:  // pred: ^bb51
    %525 = llvm.add %486, %485  : i64
    llvm.br ^bb49(%525 : i64)
  ^bb60:  // pred: ^bb49
    %526 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %527 = llvm.insertvalue %340, %526[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %528 = llvm.insertvalue %407, %527[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %529 = llvm.insertvalue %482, %528[2] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %529 : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v3_0", "v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %61[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %51[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(4 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(3 : i64) : i64
    %110 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %92[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<211 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<211 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

