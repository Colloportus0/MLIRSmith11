module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v3_0", "v1_0"]} {
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
    %14 = llvm.mlir.constant(1 : i64) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %18 = llvm.bitcast %17 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %19 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(4 : index) : i64
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
    %35 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(4 : index) : i64
    %43 = llvm.insertvalue %42, %41[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.insertvalue %44, %43[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %47 = llvm.bitcast %46 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.insertvalue %47, %48[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.insertvalue %47, %49[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.insertvalue %51, %50[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(4 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i64>>
    %58 = llvm.bitcast %57 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %60 = llvm.insertvalue %58, %59[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %64 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
    %65 = llvm.bitcast %64 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %66 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %67 = llvm.insertvalue %65, %66[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.insertvalue %65, %67[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.insertvalue %69, %68[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.mlir.constant(4 : index) : i64
    %72 = llvm.insertvalue %71, %70[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.insertvalue %73, %72[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.null : !llvm.ptr<f32>
    %81 = llvm.getelementptr %80[%75] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %82 = llvm.ptrtoint %81 : !llvm.ptr<f32> to i64
    %83 = llvm.mlir.constant(16 : index) : i64
    %84 = llvm.add %82, %83  : i64
    %85 = llvm.call @malloc(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.bitcast %85 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %87 = llvm.ptrtoint %86 : !llvm.ptr<f32> to i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.sub %83, %88  : i64
    %90 = llvm.add %87, %89  : i64
    %91 = llvm.urem %90, %83  : i64
    %92 = llvm.sub %90, %91  : i64
    %93 = llvm.inttoptr %92 : i64 to !llvm.ptr<f32>
    %94 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %95 = llvm.insertvalue %86, %94[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %93, %95[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = llvm.insertvalue %97, %96[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %75, %98[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %76, %99[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %77, %100[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %78, %101[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %76, %102[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %77, %103[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %78, %104[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %79, %105[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%107 : i64)
  ^bb1(%110: i64):  // 2 preds: ^bb0, ^bb11
    %111 = llvm.icmp "slt" %110, %108 : i64
    llvm.cond_br %111, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%112 : i64)
  ^bb3(%115: i64):  // 2 preds: ^bb2, ^bb10
    %116 = llvm.icmp "slt" %115, %113 : i64
    llvm.cond_br %116, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%117 : i64)
  ^bb5(%120: i64):  // 2 preds: ^bb4, ^bb9
    %121 = llvm.icmp "slt" %120, %118 : i64
    llvm.cond_br %121, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %122 = llvm.mlir.constant(0 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%122 : i64)
  ^bb7(%125: i64):  // 2 preds: ^bb6, ^bb8
    %126 = llvm.icmp "slt" %125, %123 : i64
    llvm.cond_br %126, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %127 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.add %110, %115  : i64
    %129 = llvm.add %128, %120  : i64
    %130 = llvm.add %129, %125  : i64
    %131 = llvm.getelementptr %127[%130] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %132 = llvm.load %131 : !llvm.ptr<i32>
    %133 = llvm.sitofp %132 : i32 to f32
    %134 = llvm.extractvalue %106[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.add %110, %115  : i64
    %136 = llvm.add %135, %120  : i64
    %137 = llvm.add %136, %125  : i64
    %138 = llvm.getelementptr %134[%137] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %133, %138 : !llvm.ptr<f32>
    %139 = llvm.add %125, %124  : i64
    llvm.br ^bb7(%139 : i64)
  ^bb9:  // pred: ^bb7
    %140 = llvm.add %120, %119  : i64
    llvm.br ^bb5(%140 : i64)
  ^bb10:  // pred: ^bb5
    %141 = llvm.add %115, %114  : i64
    llvm.br ^bb3(%141 : i64)
  ^bb11:  // pred: ^bb3
    %142 = llvm.add %110, %109  : i64
    llvm.br ^bb1(%142 : i64)
  ^bb12:  // pred: ^bb1
    %143 = llvm.mlir.constant(4 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.null : !llvm.ptr<i64>
    %146 = llvm.getelementptr %145[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %147 = llvm.ptrtoint %146 : !llvm.ptr<i64> to i64
    %148 = llvm.mlir.constant(16 : index) : i64
    %149 = llvm.add %147, %148  : i64
    %150 = llvm.call @malloc(%149) : (i64) -> !llvm.ptr<i8>
    %151 = llvm.bitcast %150 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %152 = llvm.ptrtoint %151 : !llvm.ptr<i64> to i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.sub %148, %153  : i64
    %155 = llvm.add %152, %154  : i64
    %156 = llvm.urem %155, %148  : i64
    %157 = llvm.sub %155, %156  : i64
    %158 = llvm.inttoptr %157 : i64 to !llvm.ptr<i64>
    %159 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %160 = llvm.insertvalue %151, %159[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %161 = llvm.insertvalue %158, %160[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.insertvalue %162, %161[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.insertvalue %143, %163[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.insertvalue %144, %164[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(4 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%166 : i64)
  ^bb13(%169: i64):  // 2 preds: ^bb12, ^bb14
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %171 = llvm.extractvalue %165[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %172 = llvm.getelementptr %171[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %172 : !llvm.ptr<i64>
    %173 = llvm.add %169, %168  : i64
    llvm.br ^bb13(%173 : i64)
  ^bb15:  // pred: ^bb13
    %174 = llvm.mlir.constant(4 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.null : !llvm.ptr<i64>
    %177 = llvm.getelementptr %176[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %178 = llvm.ptrtoint %177 : !llvm.ptr<i64> to i64
    %179 = llvm.mlir.constant(16 : index) : i64
    %180 = llvm.add %178, %179  : i64
    %181 = llvm.call @malloc(%180) : (i64) -> !llvm.ptr<i8>
    %182 = llvm.bitcast %181 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %183 = llvm.ptrtoint %182 : !llvm.ptr<i64> to i64
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.sub %179, %184  : i64
    %186 = llvm.add %183, %185  : i64
    %187 = llvm.urem %186, %179  : i64
    %188 = llvm.sub %186, %187  : i64
    %189 = llvm.inttoptr %188 : i64 to !llvm.ptr<i64>
    %190 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %191 = llvm.insertvalue %182, %190[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.insertvalue %189, %191[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %193 = llvm.mlir.constant(0 : index) : i64
    %194 = llvm.insertvalue %193, %192[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.insertvalue %174, %194[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.insertvalue %175, %195[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(4 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%197 : i64)
  ^bb16(%200: i64):  // 2 preds: ^bb15, ^bb17
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %202 = llvm.extractvalue %165[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.getelementptr %202[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %204 = llvm.load %203 : !llvm.ptr<i64>
    %205 = llvm.extractvalue %63[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %206 = llvm.load %205 : !llvm.ptr<i64>
    %207 = llvm.mul %204, %206  : i64
    %208 = llvm.extractvalue %196[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %209 = llvm.getelementptr %208[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %207, %209 : !llvm.ptr<i64>
    %210 = llvm.add %200, %199  : i64
    llvm.br ^bb16(%210 : i64)
  ^bb18:  // pred: ^bb16
    %211 = llvm.mlir.constant(4 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.null : !llvm.ptr<i1>
    %214 = llvm.getelementptr %213[%211] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %215 = llvm.ptrtoint %214 : !llvm.ptr<i1> to i64
    %216 = llvm.mlir.constant(16 : index) : i64
    %217 = llvm.add %215, %216  : i64
    %218 = llvm.call @malloc(%217) : (i64) -> !llvm.ptr<i8>
    %219 = llvm.bitcast %218 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %220 = llvm.ptrtoint %219 : !llvm.ptr<i1> to i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.sub %216, %221  : i64
    %223 = llvm.add %220, %222  : i64
    %224 = llvm.urem %223, %216  : i64
    %225 = llvm.sub %223, %224  : i64
    %226 = llvm.inttoptr %225 : i64 to !llvm.ptr<i1>
    %227 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %228 = llvm.insertvalue %219, %227[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.insertvalue %226, %228[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.insertvalue %230, %229[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %232 = llvm.insertvalue %211, %231[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.insertvalue %212, %232[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(4 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%234 : i64)
  ^bb19(%237: i64):  // 2 preds: ^bb18, ^bb20
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %239 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.getelementptr %239[%237] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %241 = llvm.load %240 : !llvm.ptr<i64>
    %242 = llvm.extractvalue %196[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %243 = llvm.getelementptr %242[%237] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %244 = llvm.load %243 : !llvm.ptr<i64>
    %245 = llvm.icmp "eq" %241, %244 : i64
    %246 = llvm.extractvalue %233[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %247 = llvm.getelementptr %246[%237] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %245, %247 : !llvm.ptr<i1>
    %248 = llvm.add %237, %236  : i64
    llvm.br ^bb19(%248 : i64)
  ^bb21:  // pred: ^bb19
    %249 = llvm.mlir.constant(4 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.null : !llvm.ptr<i64>
    %252 = llvm.getelementptr %251[%249] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %253 = llvm.ptrtoint %252 : !llvm.ptr<i64> to i64
    %254 = llvm.mlir.constant(16 : index) : i64
    %255 = llvm.add %253, %254  : i64
    %256 = llvm.call @malloc(%255) : (i64) -> !llvm.ptr<i8>
    %257 = llvm.bitcast %256 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %258 = llvm.ptrtoint %257 : !llvm.ptr<i64> to i64
    %259 = llvm.mlir.constant(1 : index) : i64
    %260 = llvm.sub %254, %259  : i64
    %261 = llvm.add %258, %260  : i64
    %262 = llvm.urem %261, %254  : i64
    %263 = llvm.sub %261, %262  : i64
    %264 = llvm.inttoptr %263 : i64 to !llvm.ptr<i64>
    %265 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %266 = llvm.insertvalue %257, %265[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.insertvalue %264, %266[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.insertvalue %268, %267[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.insertvalue %249, %269[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.insertvalue %250, %270[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.mlir.constant(4 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%272 : i64)
  ^bb22(%275: i64):  // 2 preds: ^bb21, ^bb23
    %276 = llvm.icmp "slt" %275, %273 : i64
    llvm.cond_br %276, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %277 = llvm.extractvalue %233[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %278 = llvm.getelementptr %277[%275] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %279 = llvm.load %278 : !llvm.ptr<i1>
    %280 = llvm.extractvalue %165[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %281 = llvm.getelementptr %280[%275] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %282 = llvm.load %281 : !llvm.ptr<i64>
    %283 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %284 = llvm.getelementptr %283[%275] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %285 = llvm.load %284 : !llvm.ptr<i64>
    %286 = llvm.select %279, %282, %285 : i1, i64
    %287 = llvm.extractvalue %271[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %288 = llvm.getelementptr %287[%275] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %286, %288 : !llvm.ptr<i64>
    %289 = llvm.add %275, %274  : i64
    llvm.br ^bb22(%289 : i64)
  ^bb24:  // pred: ^bb22
    %290 = llvm.extractvalue %271[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.getelementptr %290[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %292 = llvm.load %291 : !llvm.ptr<i64>
    %293 = llvm.extractvalue %271[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.getelementptr %293[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %295 = llvm.load %294 : !llvm.ptr<i64>
    %296 = llvm.extractvalue %271[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %297 = llvm.getelementptr %296[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %298 = llvm.load %297 : !llvm.ptr<i64>
    %299 = llvm.extractvalue %271[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %300 = llvm.getelementptr %299[%12] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %301 = llvm.load %300 : !llvm.ptr<i64>
    %302 = llvm.mlir.constant(1 : index) : i64
    %303 = llvm.mul %301, %298  : i64
    %304 = llvm.mul %303, %295  : i64
    %305 = llvm.mul %304, %292  : i64
    %306 = llvm.mlir.null : !llvm.ptr<i32>
    %307 = llvm.getelementptr %306[%305] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %308 = llvm.ptrtoint %307 : !llvm.ptr<i32> to i64
    %309 = llvm.mlir.constant(16 : index) : i64
    %310 = llvm.add %308, %309  : i64
    %311 = llvm.call @malloc(%310) : (i64) -> !llvm.ptr<i8>
    %312 = llvm.bitcast %311 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %313 = llvm.ptrtoint %312 : !llvm.ptr<i32> to i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.sub %309, %314  : i64
    %316 = llvm.add %313, %315  : i64
    %317 = llvm.urem %316, %309  : i64
    %318 = llvm.sub %316, %317  : i64
    %319 = llvm.inttoptr %318 : i64 to !llvm.ptr<i32>
    %320 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %321 = llvm.insertvalue %312, %320[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.insertvalue %319, %321[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.insertvalue %323, %322[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.insertvalue %292, %324[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %295, %325[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.insertvalue %298, %326[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.insertvalue %301, %327[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.insertvalue %304, %328[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.insertvalue %303, %329[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.insertvalue %301, %330[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.insertvalue %302, %331[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.mlir.constant(0 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%333 : i64)
  ^bb25(%335: i64):  // 2 preds: ^bb24, ^bb35
    %336 = llvm.icmp "slt" %335, %292 : i64
    llvm.cond_br %336, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%337 : i64)
  ^bb27(%339: i64):  // 2 preds: ^bb26, ^bb34
    %340 = llvm.icmp "slt" %339, %295 : i64
    llvm.cond_br %340, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %341 = llvm.mlir.constant(0 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%341 : i64)
  ^bb29(%343: i64):  // 2 preds: ^bb28, ^bb33
    %344 = llvm.icmp "slt" %343, %298 : i64
    llvm.cond_br %344, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %345 = llvm.mlir.constant(0 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%345 : i64)
  ^bb31(%347: i64):  // 2 preds: ^bb30, ^bb32
    %348 = llvm.icmp "slt" %347, %301 : i64
    llvm.cond_br %348, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %349 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.add %15, %15  : i64
    %351 = llvm.add %350, %15  : i64
    %352 = llvm.add %351, %15  : i64
    %353 = llvm.getelementptr %349[%352] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %354 = llvm.load %353 : !llvm.ptr<i32>
    %355 = llvm.extractvalue %332[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.extractvalue %332[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.mul %335, %356  : i64
    %358 = llvm.extractvalue %332[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.mul %339, %358  : i64
    %360 = llvm.add %357, %359  : i64
    %361 = llvm.extractvalue %332[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.mul %343, %361  : i64
    %363 = llvm.add %360, %362  : i64
    %364 = llvm.add %363, %347  : i64
    %365 = llvm.getelementptr %355[%364] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %354, %365 : !llvm.ptr<i32>
    %366 = llvm.add %347, %346  : i64
    llvm.br ^bb31(%366 : i64)
  ^bb33:  // pred: ^bb31
    %367 = llvm.add %343, %342  : i64
    llvm.br ^bb29(%367 : i64)
  ^bb34:  // pred: ^bb29
    %368 = llvm.add %339, %338  : i64
    llvm.br ^bb27(%368 : i64)
  ^bb35:  // pred: ^bb27
    %369 = llvm.add %335, %334  : i64
    llvm.br ^bb25(%369 : i64)
  ^bb36:  // pred: ^bb25
    %370 = llvm.mlir.constant(4 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.mlir.null : !llvm.ptr<i64>
    %373 = llvm.getelementptr %372[%370] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %374 = llvm.ptrtoint %373 : !llvm.ptr<i64> to i64
    %375 = llvm.mlir.constant(16 : index) : i64
    %376 = llvm.add %374, %375  : i64
    %377 = llvm.call @malloc(%376) : (i64) -> !llvm.ptr<i8>
    %378 = llvm.bitcast %377 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %379 = llvm.ptrtoint %378 : !llvm.ptr<i64> to i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.sub %375, %380  : i64
    %382 = llvm.add %379, %381  : i64
    %383 = llvm.urem %382, %375  : i64
    %384 = llvm.sub %382, %383  : i64
    %385 = llvm.inttoptr %384 : i64 to !llvm.ptr<i64>
    %386 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %387 = llvm.insertvalue %378, %386[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %388 = llvm.insertvalue %385, %387[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.insertvalue %389, %388[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %391 = llvm.insertvalue %370, %390[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %392 = llvm.insertvalue %371, %391[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %393 = llvm.mlir.constant(0 : index) : i64
    %394 = llvm.mlir.constant(4 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%393 : i64)
  ^bb37(%396: i64):  // 2 preds: ^bb36, ^bb38
    %397 = llvm.icmp "slt" %396, %394 : i64
    llvm.cond_br %397, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %398 = llvm.extractvalue %392[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %399 = llvm.getelementptr %398[%396] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %399 : !llvm.ptr<i64>
    %400 = llvm.add %396, %395  : i64
    llvm.br ^bb37(%400 : i64)
  ^bb39:  // pred: ^bb37
    %401 = llvm.mlir.constant(4 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.mlir.null : !llvm.ptr<i64>
    %404 = llvm.getelementptr %403[%401] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %405 = llvm.ptrtoint %404 : !llvm.ptr<i64> to i64
    %406 = llvm.mlir.constant(16 : index) : i64
    %407 = llvm.add %405, %406  : i64
    %408 = llvm.call @malloc(%407) : (i64) -> !llvm.ptr<i8>
    %409 = llvm.bitcast %408 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %410 = llvm.ptrtoint %409 : !llvm.ptr<i64> to i64
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.sub %406, %411  : i64
    %413 = llvm.add %410, %412  : i64
    %414 = llvm.urem %413, %406  : i64
    %415 = llvm.sub %413, %414  : i64
    %416 = llvm.inttoptr %415 : i64 to !llvm.ptr<i64>
    %417 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %418 = llvm.insertvalue %409, %417[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %419 = llvm.insertvalue %416, %418[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %420 = llvm.mlir.constant(0 : index) : i64
    %421 = llvm.insertvalue %420, %419[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %422 = llvm.insertvalue %401, %421[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %423 = llvm.insertvalue %402, %422[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %424 = llvm.mlir.constant(0 : index) : i64
    %425 = llvm.mlir.constant(4 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%424 : i64)
  ^bb40(%427: i64):  // 2 preds: ^bb39, ^bb41
    %428 = llvm.icmp "slt" %427, %425 : i64
    llvm.cond_br %428, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %429 = llvm.extractvalue %392[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %430 = llvm.getelementptr %429[%427] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %431 = llvm.load %430 : !llvm.ptr<i64>
    %432 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %433 = llvm.load %432 : !llvm.ptr<i64>
    %434 = llvm.mul %431, %433  : i64
    %435 = llvm.extractvalue %423[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %436 = llvm.getelementptr %435[%427] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %434, %436 : !llvm.ptr<i64>
    %437 = llvm.add %427, %426  : i64
    llvm.br ^bb40(%437 : i64)
  ^bb42:  // pred: ^bb40
    %438 = llvm.mlir.constant(4 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    %440 = llvm.mlir.null : !llvm.ptr<i1>
    %441 = llvm.getelementptr %440[%438] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %442 = llvm.ptrtoint %441 : !llvm.ptr<i1> to i64
    %443 = llvm.mlir.constant(16 : index) : i64
    %444 = llvm.add %442, %443  : i64
    %445 = llvm.call @malloc(%444) : (i64) -> !llvm.ptr<i8>
    %446 = llvm.bitcast %445 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %447 = llvm.ptrtoint %446 : !llvm.ptr<i1> to i64
    %448 = llvm.mlir.constant(1 : index) : i64
    %449 = llvm.sub %443, %448  : i64
    %450 = llvm.add %447, %449  : i64
    %451 = llvm.urem %450, %443  : i64
    %452 = llvm.sub %450, %451  : i64
    %453 = llvm.inttoptr %452 : i64 to !llvm.ptr<i1>
    %454 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %455 = llvm.insertvalue %446, %454[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %456 = llvm.insertvalue %453, %455[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %457 = llvm.mlir.constant(0 : index) : i64
    %458 = llvm.insertvalue %457, %456[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %459 = llvm.insertvalue %438, %458[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %460 = llvm.insertvalue %439, %459[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.mlir.constant(4 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%461 : i64)
  ^bb43(%464: i64):  // 2 preds: ^bb42, ^bb44
    %465 = llvm.icmp "slt" %464, %462 : i64
    llvm.cond_br %465, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %466 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %467 = llvm.getelementptr %466[%464] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %468 = llvm.load %467 : !llvm.ptr<i64>
    %469 = llvm.extractvalue %423[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %470 = llvm.getelementptr %469[%464] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %471 = llvm.load %470 : !llvm.ptr<i64>
    %472 = llvm.icmp "eq" %468, %471 : i64
    %473 = llvm.extractvalue %460[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %474 = llvm.getelementptr %473[%464] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %472, %474 : !llvm.ptr<i1>
    %475 = llvm.add %464, %463  : i64
    llvm.br ^bb43(%475 : i64)
  ^bb45:  // pred: ^bb43
    %476 = llvm.mlir.constant(4 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    %478 = llvm.mlir.null : !llvm.ptr<i64>
    %479 = llvm.getelementptr %478[%476] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %480 = llvm.ptrtoint %479 : !llvm.ptr<i64> to i64
    %481 = llvm.mlir.constant(16 : index) : i64
    %482 = llvm.add %480, %481  : i64
    %483 = llvm.call @malloc(%482) : (i64) -> !llvm.ptr<i8>
    %484 = llvm.bitcast %483 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %485 = llvm.ptrtoint %484 : !llvm.ptr<i64> to i64
    %486 = llvm.mlir.constant(1 : index) : i64
    %487 = llvm.sub %481, %486  : i64
    %488 = llvm.add %485, %487  : i64
    %489 = llvm.urem %488, %481  : i64
    %490 = llvm.sub %488, %489  : i64
    %491 = llvm.inttoptr %490 : i64 to !llvm.ptr<i64>
    %492 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %493 = llvm.insertvalue %484, %492[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %494 = llvm.insertvalue %491, %493[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %495 = llvm.mlir.constant(0 : index) : i64
    %496 = llvm.insertvalue %495, %494[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %497 = llvm.insertvalue %476, %496[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %498 = llvm.insertvalue %477, %497[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %499 = llvm.mlir.constant(0 : index) : i64
    %500 = llvm.mlir.constant(4 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%499 : i64)
  ^bb46(%502: i64):  // 2 preds: ^bb45, ^bb47
    %503 = llvm.icmp "slt" %502, %500 : i64
    llvm.cond_br %503, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %504 = llvm.extractvalue %460[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %505 = llvm.getelementptr %504[%502] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %506 = llvm.load %505 : !llvm.ptr<i1>
    %507 = llvm.extractvalue %392[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %508 = llvm.getelementptr %507[%502] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %509 = llvm.load %508 : !llvm.ptr<i64>
    %510 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %511 = llvm.getelementptr %510[%502] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %512 = llvm.load %511 : !llvm.ptr<i64>
    %513 = llvm.select %506, %509, %512 : i1, i64
    %514 = llvm.extractvalue %498[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %515 = llvm.getelementptr %514[%502] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %513, %515 : !llvm.ptr<i64>
    %516 = llvm.add %502, %501  : i64
    llvm.br ^bb46(%516 : i64)
  ^bb48:  // pred: ^bb46
    %517 = llvm.mlir.constant(1 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    %522 = llvm.mlir.null : !llvm.ptr<i32>
    %523 = llvm.getelementptr %522[%517] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %524 = llvm.ptrtoint %523 : !llvm.ptr<i32> to i64
    %525 = llvm.mlir.constant(16 : index) : i64
    %526 = llvm.add %524, %525  : i64
    %527 = llvm.call @malloc(%526) : (i64) -> !llvm.ptr<i8>
    %528 = llvm.bitcast %527 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %529 = llvm.ptrtoint %528 : !llvm.ptr<i32> to i64
    %530 = llvm.mlir.constant(1 : index) : i64
    %531 = llvm.sub %525, %530  : i64
    %532 = llvm.add %529, %531  : i64
    %533 = llvm.urem %532, %525  : i64
    %534 = llvm.sub %532, %533  : i64
    %535 = llvm.inttoptr %534 : i64 to !llvm.ptr<i32>
    %536 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %537 = llvm.insertvalue %528, %536[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %538 = llvm.insertvalue %535, %537[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %539 = llvm.mlir.constant(0 : index) : i64
    %540 = llvm.insertvalue %539, %538[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %541 = llvm.insertvalue %517, %540[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %542 = llvm.insertvalue %518, %541[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %543 = llvm.insertvalue %519, %542[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %544 = llvm.insertvalue %520, %543[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %545 = llvm.insertvalue %518, %544[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.insertvalue %519, %545[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %547 = llvm.insertvalue %520, %546[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %548 = llvm.insertvalue %521, %547[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %549 = llvm.icmp "sgt" %292, %16 : i64
    %550 = llvm.icmp "sgt" %295, %16 : i64
    %551 = llvm.icmp "sgt" %298, %16 : i64
    %552 = llvm.icmp "sgt" %301, %16 : i64
    %553 = llvm.mlir.constant(0 : index) : i64
    %554 = llvm.mlir.constant(1 : index) : i64
    %555 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%553 : i64)
  ^bb49(%556: i64):  // 2 preds: ^bb48, ^bb59
    %557 = llvm.icmp "slt" %556, %554 : i64
    llvm.cond_br %557, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %558 = llvm.mlir.constant(0 : index) : i64
    %559 = llvm.mlir.constant(1 : index) : i64
    %560 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%558 : i64)
  ^bb51(%561: i64):  // 2 preds: ^bb50, ^bb58
    %562 = llvm.icmp "slt" %561, %559 : i64
    llvm.cond_br %562, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %563 = llvm.mlir.constant(0 : index) : i64
    %564 = llvm.mlir.constant(1 : index) : i64
    %565 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%563 : i64)
  ^bb53(%566: i64):  // 2 preds: ^bb52, ^bb57
    %567 = llvm.icmp "slt" %566, %564 : i64
    llvm.cond_br %567, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %568 = llvm.mlir.constant(0 : index) : i64
    %569 = llvm.mlir.constant(1 : index) : i64
    %570 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%568 : i64)
  ^bb55(%571: i64):  // 2 preds: ^bb54, ^bb56
    %572 = llvm.icmp "slt" %571, %569 : i64
    llvm.cond_br %572, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %573 = llvm.select %549, %556, %15 : i1, i64
    %574 = llvm.select %550, %561, %15 : i1, i64
    %575 = llvm.select %551, %566, %15 : i1, i64
    %576 = llvm.select %552, %571, %15 : i1, i64
    %577 = llvm.extractvalue %332[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %578 = llvm.extractvalue %332[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %579 = llvm.mul %573, %578  : i64
    %580 = llvm.extractvalue %332[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %581 = llvm.mul %574, %580  : i64
    %582 = llvm.add %579, %581  : i64
    %583 = llvm.extractvalue %332[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %584 = llvm.mul %575, %583  : i64
    %585 = llvm.add %582, %584  : i64
    %586 = llvm.add %585, %576  : i64
    %587 = llvm.getelementptr %577[%586] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %588 = llvm.load %587 : !llvm.ptr<i32>
    %589 = llvm.extractvalue %548[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %590 = llvm.add %556, %561  : i64
    %591 = llvm.add %590, %566  : i64
    %592 = llvm.add %591, %571  : i64
    %593 = llvm.getelementptr %589[%592] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %588, %593 : !llvm.ptr<i32>
    %594 = llvm.add %571, %570  : i64
    llvm.br ^bb55(%594 : i64)
  ^bb57:  // pred: ^bb55
    %595 = llvm.add %566, %565  : i64
    llvm.br ^bb53(%595 : i64)
  ^bb58:  // pred: ^bb53
    %596 = llvm.add %561, %560  : i64
    llvm.br ^bb51(%596 : i64)
  ^bb59:  // pred: ^bb51
    %597 = llvm.add %556, %555  : i64
    llvm.br ^bb49(%597 : i64)
  ^bb60:  // pred: ^bb49
    %598 = llvm.mlir.constant(1 : index) : i64
    %599 = llvm.mlir.constant(1 : index) : i64
    %600 = llvm.mlir.constant(1 : index) : i64
    %601 = llvm.mlir.constant(1 : index) : i64
    %602 = llvm.mlir.constant(1 : index) : i64
    %603 = llvm.mlir.null : !llvm.ptr<i32>
    %604 = llvm.getelementptr %603[%598] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %605 = llvm.ptrtoint %604 : !llvm.ptr<i32> to i64
    %606 = llvm.mlir.constant(16 : index) : i64
    %607 = llvm.add %605, %606  : i64
    %608 = llvm.call @malloc(%607) : (i64) -> !llvm.ptr<i8>
    %609 = llvm.bitcast %608 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %610 = llvm.ptrtoint %609 : !llvm.ptr<i32> to i64
    %611 = llvm.mlir.constant(1 : index) : i64
    %612 = llvm.sub %606, %611  : i64
    %613 = llvm.add %610, %612  : i64
    %614 = llvm.urem %613, %606  : i64
    %615 = llvm.sub %613, %614  : i64
    %616 = llvm.inttoptr %615 : i64 to !llvm.ptr<i32>
    %617 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %618 = llvm.insertvalue %609, %617[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %619 = llvm.insertvalue %616, %618[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %620 = llvm.mlir.constant(0 : index) : i64
    %621 = llvm.insertvalue %620, %619[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %622 = llvm.insertvalue %598, %621[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %623 = llvm.insertvalue %599, %622[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %624 = llvm.insertvalue %600, %623[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %625 = llvm.insertvalue %601, %624[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %626 = llvm.insertvalue %599, %625[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %627 = llvm.insertvalue %600, %626[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %628 = llvm.insertvalue %601, %627[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %629 = llvm.insertvalue %602, %628[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %630 = llvm.mlir.constant(0 : index) : i64
    %631 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%630 : i64)
  ^bb61(%632: i64):  // 2 preds: ^bb60, ^bb71
    %633 = llvm.icmp "slt" %632, %292 : i64
    llvm.cond_br %633, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %634 = llvm.mlir.constant(0 : index) : i64
    %635 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%634 : i64)
  ^bb63(%636: i64):  // 2 preds: ^bb62, ^bb70
    %637 = llvm.icmp "slt" %636, %295 : i64
    llvm.cond_br %637, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %638 = llvm.mlir.constant(0 : index) : i64
    %639 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%638 : i64)
  ^bb65(%640: i64):  // 2 preds: ^bb64, ^bb69
    %641 = llvm.icmp "slt" %640, %298 : i64
    llvm.cond_br %641, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %642 = llvm.mlir.constant(0 : index) : i64
    %643 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%642 : i64)
  ^bb67(%644: i64):  // 2 preds: ^bb66, ^bb68
    %645 = llvm.icmp "slt" %644, %301 : i64
    llvm.cond_br %645, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %646 = llvm.extractvalue %332[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %647 = llvm.extractvalue %332[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %648 = llvm.mul %632, %647  : i64
    %649 = llvm.extractvalue %332[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %650 = llvm.mul %636, %649  : i64
    %651 = llvm.add %648, %650  : i64
    %652 = llvm.extractvalue %332[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %653 = llvm.mul %640, %652  : i64
    %654 = llvm.add %651, %653  : i64
    %655 = llvm.add %654, %644  : i64
    %656 = llvm.getelementptr %646[%655] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %657 = llvm.load %656 : !llvm.ptr<i32>
    %658 = llvm.mlir.constant(false) : i1
    %659 = "llvm.intr.abs"(%657, %658) : (i32, i1) -> i32
    %660 = llvm.extractvalue %629[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %661 = llvm.add %632, %636  : i64
    %662 = llvm.add %661, %640  : i64
    %663 = llvm.add %662, %644  : i64
    %664 = llvm.getelementptr %660[%663] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %659, %664 : !llvm.ptr<i32>
    %665 = llvm.add %644, %643  : i64
    llvm.br ^bb67(%665 : i64)
  ^bb69:  // pred: ^bb67
    %666 = llvm.add %640, %639  : i64
    llvm.br ^bb65(%666 : i64)
  ^bb70:  // pred: ^bb65
    %667 = llvm.add %636, %635  : i64
    llvm.br ^bb63(%667 : i64)
  ^bb71:  // pred: ^bb63
    %668 = llvm.add %632, %631  : i64
    llvm.br ^bb61(%668 : i64)
  ^bb72:  // pred: ^bb61
    %669 = llvm.mlir.constant(1 : index) : i64
    %670 = llvm.mlir.constant(1 : index) : i64
    %671 = llvm.mlir.constant(1 : index) : i64
    %672 = llvm.mlir.constant(1 : index) : i64
    %673 = llvm.mlir.constant(1 : index) : i64
    %674 = llvm.mlir.null : !llvm.ptr<i1>
    %675 = llvm.getelementptr %674[%669] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %676 = llvm.ptrtoint %675 : !llvm.ptr<i1> to i64
    %677 = llvm.mlir.constant(16 : index) : i64
    %678 = llvm.add %676, %677  : i64
    %679 = llvm.call @malloc(%678) : (i64) -> !llvm.ptr<i8>
    %680 = llvm.bitcast %679 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %681 = llvm.ptrtoint %680 : !llvm.ptr<i1> to i64
    %682 = llvm.mlir.constant(1 : index) : i64
    %683 = llvm.sub %677, %682  : i64
    %684 = llvm.add %681, %683  : i64
    %685 = llvm.urem %684, %677  : i64
    %686 = llvm.sub %684, %685  : i64
    %687 = llvm.inttoptr %686 : i64 to !llvm.ptr<i1>
    %688 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %689 = llvm.insertvalue %680, %688[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %690 = llvm.insertvalue %687, %689[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %691 = llvm.mlir.constant(0 : index) : i64
    %692 = llvm.insertvalue %691, %690[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %693 = llvm.insertvalue %669, %692[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %694 = llvm.insertvalue %670, %693[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %695 = llvm.insertvalue %671, %694[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %696 = llvm.insertvalue %672, %695[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %697 = llvm.insertvalue %670, %696[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %698 = llvm.insertvalue %671, %697[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %699 = llvm.insertvalue %672, %698[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %700 = llvm.insertvalue %673, %699[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %701 = llvm.mlir.constant(0 : index) : i64
    %702 = llvm.mlir.constant(1 : index) : i64
    %703 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%701 : i64)
  ^bb73(%704: i64):  // 2 preds: ^bb72, ^bb83
    %705 = llvm.icmp "slt" %704, %702 : i64
    llvm.cond_br %705, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %706 = llvm.mlir.constant(0 : index) : i64
    %707 = llvm.mlir.constant(1 : index) : i64
    %708 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%706 : i64)
  ^bb75(%709: i64):  // 2 preds: ^bb74, ^bb82
    %710 = llvm.icmp "slt" %709, %707 : i64
    llvm.cond_br %710, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %711 = llvm.mlir.constant(0 : index) : i64
    %712 = llvm.mlir.constant(1 : index) : i64
    %713 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%711 : i64)
  ^bb77(%714: i64):  // 2 preds: ^bb76, ^bb81
    %715 = llvm.icmp "slt" %714, %712 : i64
    llvm.cond_br %715, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %716 = llvm.mlir.constant(0 : index) : i64
    %717 = llvm.mlir.constant(1 : index) : i64
    %718 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%716 : i64)
  ^bb79(%719: i64):  // 2 preds: ^bb78, ^bb80
    %720 = llvm.icmp "slt" %719, %717 : i64
    llvm.cond_br %720, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %721 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %722 = llvm.add %704, %709  : i64
    %723 = llvm.add %722, %714  : i64
    %724 = llvm.add %723, %719  : i64
    %725 = llvm.getelementptr %721[%724] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %726 = llvm.load %725 : !llvm.ptr<i32>
    %727 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %728 = llvm.add %704, %709  : i64
    %729 = llvm.add %728, %714  : i64
    %730 = llvm.add %729, %719  : i64
    %731 = llvm.getelementptr %727[%730] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %732 = llvm.load %731 : !llvm.ptr<i32>
    %733 = llvm.icmp "sgt" %726, %732 : i32
    %734 = llvm.extractvalue %700[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %735 = llvm.add %704, %709  : i64
    %736 = llvm.add %735, %714  : i64
    %737 = llvm.add %736, %719  : i64
    %738 = llvm.getelementptr %734[%737] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %733, %738 : !llvm.ptr<i1>
    %739 = llvm.add %719, %718  : i64
    llvm.br ^bb79(%739 : i64)
  ^bb81:  // pred: ^bb79
    %740 = llvm.add %714, %713  : i64
    llvm.br ^bb77(%740 : i64)
  ^bb82:  // pred: ^bb77
    %741 = llvm.add %709, %708  : i64
    llvm.br ^bb75(%741 : i64)
  ^bb83:  // pred: ^bb75
    %742 = llvm.add %704, %703  : i64
    llvm.br ^bb73(%742 : i64)
  ^bb84:  // pred: ^bb73
    %743 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %744 = llvm.insertvalue %106, %743[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %745 = llvm.insertvalue %548, %744[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %746 = llvm.insertvalue %629, %745[2] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %747 = llvm.insertvalue %700, %746[3] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %747 : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v3_0", "v1_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.extractvalue %44[3] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %49 = llvm.mlir.constant(4 : i64) : i64
    %50 = llvm.mlir.constant(32 : i64) : i64
    %51 = llvm.call @malloc(%50) : (i64) -> !llvm.ptr<i8>
    %52 = llvm.bitcast %51 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %53 = llvm.mlir.constant(4 : i64) : i64
    %54 = llvm.call @omTensorCreateUntyped(%53) : (i64) -> !llvm.ptr<i8>
    %55 = llvm.mlir.constant(1 : i64) : i64
    %56 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %58 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.bitcast %58 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%54, %55, %57, %59) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %60 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%54, %60) : (!llvm.ptr<i8>, i64) -> ()
    %61 = llvm.call @omTensorGetShape(%54) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.call @omTensorGetStrides(%54) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %63 = llvm.mlir.constant(0 : i64) : i64
    %64 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %61[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.getelementptr %62[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %66, %67 : !llvm.ptr<i64>
    %68 = llvm.mlir.constant(1 : i64) : i64
    %69 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %61[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.getelementptr %62[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.mlir.constant(2 : i64) : i64
    %74 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %61[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.getelementptr %62[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %61[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %62[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.mlir.constant(0 : i64) : i64
    %84 = llvm.getelementptr %52[%83] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %54, %84 : !llvm.ptr<ptr<i8>>
    %85 = llvm.mlir.constant(4 : i64) : i64
    %86 = llvm.call @omTensorCreateUntyped(%85) : (i64) -> !llvm.ptr<i8>
    %87 = llvm.mlir.constant(1 : i64) : i64
    %88 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %90 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.bitcast %90 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%86, %87, %89, %91) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %92 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%86, %92) : (!llvm.ptr<i8>, i64) -> ()
    %93 = llvm.call @omTensorGetShape(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.call @omTensorGetStrides(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %95 = llvm.mlir.constant(0 : i64) : i64
    %96 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %93[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.getelementptr %94[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %98, %99 : !llvm.ptr<i64>
    %100 = llvm.mlir.constant(1 : i64) : i64
    %101 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %93[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %94[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(2 : i64) : i64
    %106 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %93[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %94[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(3 : i64) : i64
    %111 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %93[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %94[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(1 : i64) : i64
    %116 = llvm.getelementptr %52[%115] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %86, %116 : !llvm.ptr<ptr<i8>>
    %117 = llvm.mlir.constant(4 : i64) : i64
    %118 = llvm.call @omTensorCreateUntyped(%117) : (i64) -> !llvm.ptr<i8>
    %119 = llvm.mlir.constant(1 : i64) : i64
    %120 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.bitcast %120 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %122 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.bitcast %122 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%118, %119, %121, %123) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %124 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%118, %124) : (!llvm.ptr<i8>, i64) -> ()
    %125 = llvm.call @omTensorGetShape(%118) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.call @omTensorGetStrides(%118) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %127 = llvm.mlir.constant(0 : i64) : i64
    %128 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %125[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.getelementptr %126[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.mlir.constant(1 : i64) : i64
    %133 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.getelementptr %125[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %126[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.mlir.constant(2 : i64) : i64
    %138 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.getelementptr %125[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %126[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.mlir.constant(3 : i64) : i64
    %143 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.getelementptr %125[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %143, %144 : !llvm.ptr<i64>
    %145 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %126[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.mlir.constant(2 : i64) : i64
    %148 = llvm.getelementptr %52[%147] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %118, %148 : !llvm.ptr<ptr<i8>>
    %149 = llvm.mlir.constant(4 : i64) : i64
    %150 = llvm.call @omTensorCreateUntyped(%149) : (i64) -> !llvm.ptr<i8>
    %151 = llvm.mlir.constant(1 : i64) : i64
    %152 = llvm.extractvalue %48[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.bitcast %152 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %154 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.bitcast %154 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%150, %151, %153, %155) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %156 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%150, %156) : (!llvm.ptr<i8>, i64) -> ()
    %157 = llvm.call @omTensorGetShape(%150) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %158 = llvm.call @omTensorGetStrides(%150) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %159 = llvm.mlir.constant(0 : i64) : i64
    %160 = llvm.extractvalue %48[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.getelementptr %157[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %160, %161 : !llvm.ptr<i64>
    %162 = llvm.extractvalue %48[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.getelementptr %158[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %162, %163 : !llvm.ptr<i64>
    %164 = llvm.mlir.constant(1 : i64) : i64
    %165 = llvm.extractvalue %48[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.getelementptr %157[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %165, %166 : !llvm.ptr<i64>
    %167 = llvm.extractvalue %48[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.getelementptr %158[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %167, %168 : !llvm.ptr<i64>
    %169 = llvm.mlir.constant(2 : i64) : i64
    %170 = llvm.extractvalue %48[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.getelementptr %157[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %170, %171 : !llvm.ptr<i64>
    %172 = llvm.extractvalue %48[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.getelementptr %158[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %172, %173 : !llvm.ptr<i64>
    %174 = llvm.mlir.constant(3 : i64) : i64
    %175 = llvm.extractvalue %48[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.getelementptr %157[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %175, %176 : !llvm.ptr<i64>
    %177 = llvm.extractvalue %48[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.getelementptr %158[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %177, %178 : !llvm.ptr<i64>
    %179 = llvm.mlir.constant(3 : i64) : i64
    %180 = llvm.getelementptr %52[%179] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %150, %180 : !llvm.ptr<ptr<i8>>
    %181 = llvm.call @omTensorListCreate(%52, %49, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %181 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<280 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<280 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

