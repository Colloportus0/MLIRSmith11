module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<1> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.mlir.global internal constant @constant_5(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v4_0", "v5_0", "v3_0", "v2_0"]} {
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
    %16 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<3 x i64>>
    %17 = llvm.bitcast %16 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(3 : index) : i64
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
    %34 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<3 x i64>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.insertvalue %35, %36[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(3 : index) : i64
    %42 = llvm.insertvalue %41, %40[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<3 x i64>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.insertvalue %46, %48[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.insertvalue %50, %49[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.constant(3 : index) : i64
    %53 = llvm.insertvalue %52, %51[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i64>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %58 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %59 = llvm.insertvalue %57, %58[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %60 = llvm.insertvalue %57, %59[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.insertvalue %61, %60[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %63 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<3 x i64>>
    %64 = llvm.bitcast %63 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %65 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %66 = llvm.insertvalue %64, %65[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.insertvalue %64, %66[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.insertvalue %68, %67[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.mlir.constant(3 : index) : i64
    %71 = llvm.insertvalue %70, %69[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.insertvalue %72, %71[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.null : !llvm.ptr<i64>
    %79 = llvm.getelementptr %78[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
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
    %92 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %93 = llvm.insertvalue %84, %92[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %94 = llvm.insertvalue %91, %93[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.insertvalue %95, %94[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.insertvalue %74, %96[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.insertvalue %75, %97[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %99 = llvm.insertvalue %76, %98[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.insertvalue %75, %99[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %101 = llvm.insertvalue %76, %100[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.insertvalue %77, %101[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%103 : i64)
  ^bb1(%106: i64):  // 2 preds: ^bb0, ^bb8
    %107 = llvm.icmp "slt" %106, %104 : i64
    llvm.cond_br %107, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%108 : i64)
  ^bb3(%111: i64):  // 2 preds: ^bb2, ^bb7
    %112 = llvm.icmp "slt" %111, %109 : i64
    llvm.cond_br %112, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%113 : i64)
  ^bb5(%116: i64):  // 2 preds: ^bb4, ^bb6
    %117 = llvm.icmp "slt" %116, %114 : i64
    llvm.cond_br %117, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %118 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %119 = llvm.add %106, %111  : i64
    %120 = llvm.add %119, %116  : i64
    %121 = llvm.getelementptr %118[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %15, %121 : !llvm.ptr<i64>
    %122 = llvm.add %116, %115  : i64
    llvm.br ^bb5(%122 : i64)
  ^bb7:  // pred: ^bb5
    %123 = llvm.add %111, %110  : i64
    llvm.br ^bb3(%123 : i64)
  ^bb8:  // pred: ^bb3
    %124 = llvm.add %106, %105  : i64
    llvm.br ^bb1(%124 : i64)
  ^bb9:  // pred: ^bb1
    %125 = llvm.mlir.constant(0 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%125 : i64)
  ^bb10(%128: i64):  // 2 preds: ^bb9, ^bb20
    %129 = llvm.icmp "slt" %128, %126 : i64
    llvm.cond_br %129, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %130 = llvm.mlir.constant(0 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%130 : i64)
  ^bb12(%133: i64):  // 2 preds: ^bb11, ^bb19
    %134 = llvm.icmp "slt" %133, %131 : i64
    llvm.cond_br %134, ^bb13, ^bb20
  ^bb13:  // pred: ^bb12
    %135 = llvm.mlir.constant(0 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%135 : i64)
  ^bb14(%138: i64):  // 2 preds: ^bb13, ^bb18
    %139 = llvm.icmp "slt" %138, %136 : i64
    llvm.cond_br %139, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %140 = llvm.mlir.constant(0 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%140 : i64)
  ^bb16(%143: i64):  // 2 preds: ^bb15, ^bb17
    %144 = llvm.icmp "slt" %143, %141 : i64
    llvm.cond_br %144, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %145 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.add %128, %133  : i64
    %147 = llvm.add %146, %138  : i64
    %148 = llvm.add %147, %143  : i64
    %149 = llvm.getelementptr %145[%148] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %150 = llvm.load %149 : !llvm.ptr<i32>
    %151 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %152 = llvm.add %128, %133  : i64
    %153 = llvm.add %152, %138  : i64
    %154 = llvm.getelementptr %151[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %155 = llvm.load %154 : !llvm.ptr<i64>
    %156 = llvm.icmp "slt" %155, %14 : i64
    %157 = llvm.select %156, %14, %155 : i1, i64
    %158 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.add %128, %133  : i64
    %160 = llvm.add %159, %138  : i64
    %161 = llvm.add %160, %157  : i64
    %162 = llvm.getelementptr %158[%161] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %163 = llvm.load %162 : !llvm.ptr<i32>
    %164 = llvm.icmp "slt" %150, %163 : i32
    %165 = llvm.select %164, %143, %157 : i1, i64
    %166 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %167 = llvm.add %128, %133  : i64
    %168 = llvm.add %167, %138  : i64
    %169 = llvm.getelementptr %166[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %165, %169 : !llvm.ptr<i64>
    %170 = llvm.add %143, %142  : i64
    llvm.br ^bb16(%170 : i64)
  ^bb18:  // pred: ^bb16
    %171 = llvm.add %138, %137  : i64
    llvm.br ^bb14(%171 : i64)
  ^bb19:  // pred: ^bb14
    %172 = llvm.add %133, %132  : i64
    llvm.br ^bb12(%172 : i64)
  ^bb20:  // pred: ^bb12
    %173 = llvm.add %128, %127  : i64
    llvm.br ^bb10(%173 : i64)
  ^bb21:  // pred: ^bb10
    %174 = llvm.mlir.constant(3 : index) : i64
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
    %198 = llvm.mlir.constant(3 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%197 : i64)
  ^bb22(%200: i64):  // 2 preds: ^bb21, ^bb23
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %202 = llvm.extractvalue %196[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.getelementptr %202[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %203 : !llvm.ptr<i64>
    %204 = llvm.add %200, %199  : i64
    llvm.br ^bb22(%204 : i64)
  ^bb24:  // pred: ^bb22
    %205 = llvm.mlir.constant(3 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.null : !llvm.ptr<i64>
    %208 = llvm.getelementptr %207[%205] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %209 = llvm.ptrtoint %208 : !llvm.ptr<i64> to i64
    %210 = llvm.mlir.constant(16 : index) : i64
    %211 = llvm.add %209, %210  : i64
    %212 = llvm.call @malloc(%211) : (i64) -> !llvm.ptr<i8>
    %213 = llvm.bitcast %212 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %214 = llvm.ptrtoint %213 : !llvm.ptr<i64> to i64
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.sub %210, %215  : i64
    %217 = llvm.add %214, %216  : i64
    %218 = llvm.urem %217, %210  : i64
    %219 = llvm.sub %217, %218  : i64
    %220 = llvm.inttoptr %219 : i64 to !llvm.ptr<i64>
    %221 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %222 = llvm.insertvalue %213, %221[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %223 = llvm.insertvalue %220, %222[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.insertvalue %224, %223[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %226 = llvm.insertvalue %205, %225[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %227 = llvm.insertvalue %206, %226[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %228 = llvm.mlir.constant(0 : index) : i64
    %229 = llvm.mlir.constant(3 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%228 : i64)
  ^bb25(%231: i64):  // 2 preds: ^bb24, ^bb26
    %232 = llvm.icmp "slt" %231, %229 : i64
    llvm.cond_br %232, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %233 = llvm.extractvalue %196[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %234 = llvm.getelementptr %233[%231] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %235 = llvm.load %234 : !llvm.ptr<i64>
    %236 = llvm.extractvalue %62[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %237 = llvm.load %236 : !llvm.ptr<i64>
    %238 = llvm.mul %235, %237  : i64
    %239 = llvm.extractvalue %227[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.getelementptr %239[%231] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %238, %240 : !llvm.ptr<i64>
    %241 = llvm.add %231, %230  : i64
    llvm.br ^bb25(%241 : i64)
  ^bb27:  // pred: ^bb25
    %242 = llvm.mlir.constant(3 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.null : !llvm.ptr<i1>
    %245 = llvm.getelementptr %244[%242] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %246 = llvm.ptrtoint %245 : !llvm.ptr<i1> to i64
    %247 = llvm.mlir.constant(16 : index) : i64
    %248 = llvm.add %246, %247  : i64
    %249 = llvm.call @malloc(%248) : (i64) -> !llvm.ptr<i8>
    %250 = llvm.bitcast %249 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %251 = llvm.ptrtoint %250 : !llvm.ptr<i1> to i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.sub %247, %252  : i64
    %254 = llvm.add %251, %253  : i64
    %255 = llvm.urem %254, %247  : i64
    %256 = llvm.sub %254, %255  : i64
    %257 = llvm.inttoptr %256 : i64 to !llvm.ptr<i1>
    %258 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %259 = llvm.insertvalue %250, %258[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %260 = llvm.insertvalue %257, %259[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.mlir.constant(0 : index) : i64
    %262 = llvm.insertvalue %261, %260[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.insertvalue %242, %262[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.insertvalue %243, %263[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.mlir.constant(0 : index) : i64
    %266 = llvm.mlir.constant(3 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%265 : i64)
  ^bb28(%268: i64):  // 2 preds: ^bb27, ^bb29
    %269 = llvm.icmp "slt" %268, %266 : i64
    llvm.cond_br %269, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %270 = llvm.extractvalue %55[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.getelementptr %270[%268] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %272 = llvm.load %271 : !llvm.ptr<i64>
    %273 = llvm.extractvalue %227[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %274 = llvm.getelementptr %273[%268] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %275 = llvm.load %274 : !llvm.ptr<i64>
    %276 = llvm.icmp "eq" %272, %275 : i64
    %277 = llvm.extractvalue %264[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %278 = llvm.getelementptr %277[%268] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %276, %278 : !llvm.ptr<i1>
    %279 = llvm.add %268, %267  : i64
    llvm.br ^bb28(%279 : i64)
  ^bb30:  // pred: ^bb28
    %280 = llvm.mlir.constant(3 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.null : !llvm.ptr<i64>
    %283 = llvm.getelementptr %282[%280] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %284 = llvm.ptrtoint %283 : !llvm.ptr<i64> to i64
    %285 = llvm.mlir.constant(16 : index) : i64
    %286 = llvm.add %284, %285  : i64
    %287 = llvm.call @malloc(%286) : (i64) -> !llvm.ptr<i8>
    %288 = llvm.bitcast %287 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %289 = llvm.ptrtoint %288 : !llvm.ptr<i64> to i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.sub %285, %290  : i64
    %292 = llvm.add %289, %291  : i64
    %293 = llvm.urem %292, %285  : i64
    %294 = llvm.sub %292, %293  : i64
    %295 = llvm.inttoptr %294 : i64 to !llvm.ptr<i64>
    %296 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %297 = llvm.insertvalue %288, %296[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %298 = llvm.insertvalue %295, %297[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %299 = llvm.mlir.constant(0 : index) : i64
    %300 = llvm.insertvalue %299, %298[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %301 = llvm.insertvalue %280, %300[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %302 = llvm.insertvalue %281, %301[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.mlir.constant(3 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%303 : i64)
  ^bb31(%306: i64):  // 2 preds: ^bb30, ^bb32
    %307 = llvm.icmp "slt" %306, %304 : i64
    llvm.cond_br %307, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %308 = llvm.extractvalue %264[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %309 = llvm.getelementptr %308[%306] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %310 = llvm.load %309 : !llvm.ptr<i1>
    %311 = llvm.extractvalue %196[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %312 = llvm.getelementptr %311[%306] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %313 = llvm.load %312 : !llvm.ptr<i64>
    %314 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %315 = llvm.getelementptr %314[%306] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %316 = llvm.load %315 : !llvm.ptr<i64>
    %317 = llvm.select %310, %313, %316 : i1, i64
    %318 = llvm.extractvalue %302[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %319 = llvm.getelementptr %318[%306] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %317, %319 : !llvm.ptr<i64>
    %320 = llvm.add %306, %305  : i64
    llvm.br ^bb31(%320 : i64)
  ^bb33:  // pred: ^bb31
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.null : !llvm.ptr<i64>
    %326 = llvm.getelementptr %325[%321] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %327 = llvm.ptrtoint %326 : !llvm.ptr<i64> to i64
    %328 = llvm.mlir.constant(16 : index) : i64
    %329 = llvm.add %327, %328  : i64
    %330 = llvm.call @malloc(%329) : (i64) -> !llvm.ptr<i8>
    %331 = llvm.bitcast %330 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %332 = llvm.ptrtoint %331 : !llvm.ptr<i64> to i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.sub %328, %333  : i64
    %335 = llvm.add %332, %334  : i64
    %336 = llvm.urem %335, %328  : i64
    %337 = llvm.sub %335, %336  : i64
    %338 = llvm.inttoptr %337 : i64 to !llvm.ptr<i64>
    %339 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %340 = llvm.insertvalue %331, %339[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %341 = llvm.insertvalue %338, %340[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.insertvalue %342, %341[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %344 = llvm.insertvalue %321, %343[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %345 = llvm.insertvalue %322, %344[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %346 = llvm.insertvalue %323, %345[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %347 = llvm.insertvalue %322, %346[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %348 = llvm.insertvalue %323, %347[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %349 = llvm.insertvalue %324, %348[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %350 = llvm.mlir.constant(0 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%350 : i64)
  ^bb34(%353: i64):  // 2 preds: ^bb33, ^bb41
    %354 = llvm.icmp "slt" %353, %351 : i64
    llvm.cond_br %354, ^bb35, ^bb42
  ^bb35:  // pred: ^bb34
    %355 = llvm.mlir.constant(0 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%355 : i64)
  ^bb36(%358: i64):  // 2 preds: ^bb35, ^bb40
    %359 = llvm.icmp "slt" %358, %356 : i64
    llvm.cond_br %359, ^bb37, ^bb41
  ^bb37:  // pred: ^bb36
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%360 : i64)
  ^bb38(%363: i64):  // 2 preds: ^bb37, ^bb39
    %364 = llvm.icmp "slt" %363, %361 : i64
    llvm.cond_br %364, ^bb39, ^bb40
  ^bb39:  // pred: ^bb38
    %365 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %366 = llvm.add %13, %13  : i64
    %367 = llvm.add %366, %13  : i64
    %368 = llvm.getelementptr %365[%367] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %369 = llvm.load %368 : !llvm.ptr<i64>
    %370 = llvm.extractvalue %349[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %371 = llvm.add %353, %358  : i64
    %372 = llvm.add %371, %363  : i64
    %373 = llvm.getelementptr %370[%372] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %369, %373 : !llvm.ptr<i64>
    %374 = llvm.add %363, %362  : i64
    llvm.br ^bb38(%374 : i64)
  ^bb40:  // pred: ^bb38
    %375 = llvm.add %358, %357  : i64
    llvm.br ^bb36(%375 : i64)
  ^bb41:  // pred: ^bb36
    %376 = llvm.add %353, %352  : i64
    llvm.br ^bb34(%376 : i64)
  ^bb42:  // pred: ^bb34
    %377 = llvm.mlir.constant(1 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.mlir.null : !llvm.ptr<i64>
    %382 = llvm.getelementptr %381[%377] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %383 = llvm.ptrtoint %382 : !llvm.ptr<i64> to i64
    %384 = llvm.mlir.constant(16 : index) : i64
    %385 = llvm.add %383, %384  : i64
    %386 = llvm.call @malloc(%385) : (i64) -> !llvm.ptr<i8>
    %387 = llvm.bitcast %386 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %388 = llvm.ptrtoint %387 : !llvm.ptr<i64> to i64
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.sub %384, %389  : i64
    %391 = llvm.add %388, %390  : i64
    %392 = llvm.urem %391, %384  : i64
    %393 = llvm.sub %391, %392  : i64
    %394 = llvm.inttoptr %393 : i64 to !llvm.ptr<i64>
    %395 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %396 = llvm.insertvalue %387, %395[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %397 = llvm.insertvalue %394, %396[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.insertvalue %398, %397[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %400 = llvm.insertvalue %377, %399[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %401 = llvm.insertvalue %378, %400[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %402 = llvm.insertvalue %379, %401[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %403 = llvm.insertvalue %378, %402[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %404 = llvm.insertvalue %379, %403[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %405 = llvm.insertvalue %380, %404[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %406 = llvm.mlir.constant(0 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%406 : i64)
  ^bb43(%409: i64):  // 2 preds: ^bb42, ^bb50
    %410 = llvm.icmp "slt" %409, %407 : i64
    llvm.cond_br %410, ^bb44, ^bb51
  ^bb44:  // pred: ^bb43
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%411 : i64)
  ^bb45(%414: i64):  // 2 preds: ^bb44, ^bb49
    %415 = llvm.icmp "slt" %414, %412 : i64
    llvm.cond_br %415, ^bb46, ^bb50
  ^bb46:  // pred: ^bb45
    %416 = llvm.mlir.constant(0 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%416 : i64)
  ^bb47(%419: i64):  // 2 preds: ^bb46, ^bb48
    %420 = llvm.icmp "slt" %419, %417 : i64
    llvm.cond_br %420, ^bb48, ^bb49
  ^bb48:  // pred: ^bb47
    %421 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %422 = llvm.add %409, %414  : i64
    %423 = llvm.add %422, %419  : i64
    %424 = llvm.getelementptr %421[%423] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %425 = llvm.load %424 : !llvm.ptr<i64>
    %426 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %427 = llvm.add %409, %414  : i64
    %428 = llvm.add %427, %419  : i64
    %429 = llvm.getelementptr %426[%428] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %430 = llvm.load %429 : !llvm.ptr<i64>
    %431 = llvm.icmp "slt" %425, %430 : i64
    %432 = llvm.select %431, %425, %430 : i1, i64
    %433 = llvm.extractvalue %405[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %434 = llvm.add %409, %414  : i64
    %435 = llvm.add %434, %419  : i64
    %436 = llvm.getelementptr %433[%435] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %432, %436 : !llvm.ptr<i64>
    %437 = llvm.add %419, %418  : i64
    llvm.br ^bb47(%437 : i64)
  ^bb49:  // pred: ^bb47
    %438 = llvm.add %414, %413  : i64
    llvm.br ^bb45(%438 : i64)
  ^bb50:  // pred: ^bb45
    %439 = llvm.add %409, %408  : i64
    llvm.br ^bb43(%439 : i64)
  ^bb51:  // pred: ^bb43
    %440 = llvm.mlir.constant(3 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.mlir.null : !llvm.ptr<i64>
    %443 = llvm.getelementptr %442[%440] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %444 = llvm.ptrtoint %443 : !llvm.ptr<i64> to i64
    %445 = llvm.mlir.constant(16 : index) : i64
    %446 = llvm.add %444, %445  : i64
    %447 = llvm.call @malloc(%446) : (i64) -> !llvm.ptr<i8>
    %448 = llvm.bitcast %447 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %449 = llvm.ptrtoint %448 : !llvm.ptr<i64> to i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.sub %445, %450  : i64
    %452 = llvm.add %449, %451  : i64
    %453 = llvm.urem %452, %445  : i64
    %454 = llvm.sub %452, %453  : i64
    %455 = llvm.inttoptr %454 : i64 to !llvm.ptr<i64>
    %456 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %457 = llvm.insertvalue %448, %456[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %458 = llvm.insertvalue %455, %457[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %459 = llvm.mlir.constant(0 : index) : i64
    %460 = llvm.insertvalue %459, %458[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %461 = llvm.insertvalue %440, %460[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %462 = llvm.insertvalue %441, %461[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %463 = llvm.mlir.constant(0 : index) : i64
    %464 = llvm.mlir.constant(3 : index) : i64
    %465 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%463 : i64)
  ^bb52(%466: i64):  // 2 preds: ^bb51, ^bb53
    %467 = llvm.icmp "slt" %466, %464 : i64
    llvm.cond_br %467, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %468 = llvm.extractvalue %462[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %469 = llvm.getelementptr %468[%466] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %469 : !llvm.ptr<i64>
    %470 = llvm.add %466, %465  : i64
    llvm.br ^bb52(%470 : i64)
  ^bb54:  // pred: ^bb52
    %471 = llvm.mlir.constant(3 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    %473 = llvm.mlir.null : !llvm.ptr<i64>
    %474 = llvm.getelementptr %473[%471] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %475 = llvm.ptrtoint %474 : !llvm.ptr<i64> to i64
    %476 = llvm.mlir.constant(16 : index) : i64
    %477 = llvm.add %475, %476  : i64
    %478 = llvm.call @malloc(%477) : (i64) -> !llvm.ptr<i8>
    %479 = llvm.bitcast %478 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %480 = llvm.ptrtoint %479 : !llvm.ptr<i64> to i64
    %481 = llvm.mlir.constant(1 : index) : i64
    %482 = llvm.sub %476, %481  : i64
    %483 = llvm.add %480, %482  : i64
    %484 = llvm.urem %483, %476  : i64
    %485 = llvm.sub %483, %484  : i64
    %486 = llvm.inttoptr %485 : i64 to !llvm.ptr<i64>
    %487 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %488 = llvm.insertvalue %479, %487[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %489 = llvm.insertvalue %486, %488[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %490 = llvm.mlir.constant(0 : index) : i64
    %491 = llvm.insertvalue %490, %489[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %492 = llvm.insertvalue %471, %491[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %493 = llvm.insertvalue %472, %492[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %494 = llvm.mlir.constant(0 : index) : i64
    %495 = llvm.mlir.constant(3 : index) : i64
    %496 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%494 : i64)
  ^bb55(%497: i64):  // 2 preds: ^bb54, ^bb56
    %498 = llvm.icmp "slt" %497, %495 : i64
    llvm.cond_br %498, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %499 = llvm.extractvalue %462[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %500 = llvm.getelementptr %499[%497] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %501 = llvm.load %500 : !llvm.ptr<i64>
    %502 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %503 = llvm.load %502 : !llvm.ptr<i64>
    %504 = llvm.mul %501, %503  : i64
    %505 = llvm.extractvalue %493[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %506 = llvm.getelementptr %505[%497] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %504, %506 : !llvm.ptr<i64>
    %507 = llvm.add %497, %496  : i64
    llvm.br ^bb55(%507 : i64)
  ^bb57:  // pred: ^bb55
    %508 = llvm.mlir.constant(3 : index) : i64
    %509 = llvm.mlir.constant(1 : index) : i64
    %510 = llvm.mlir.null : !llvm.ptr<i1>
    %511 = llvm.getelementptr %510[%508] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %512 = llvm.ptrtoint %511 : !llvm.ptr<i1> to i64
    %513 = llvm.mlir.constant(16 : index) : i64
    %514 = llvm.add %512, %513  : i64
    %515 = llvm.call @malloc(%514) : (i64) -> !llvm.ptr<i8>
    %516 = llvm.bitcast %515 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %517 = llvm.ptrtoint %516 : !llvm.ptr<i1> to i64
    %518 = llvm.mlir.constant(1 : index) : i64
    %519 = llvm.sub %513, %518  : i64
    %520 = llvm.add %517, %519  : i64
    %521 = llvm.urem %520, %513  : i64
    %522 = llvm.sub %520, %521  : i64
    %523 = llvm.inttoptr %522 : i64 to !llvm.ptr<i1>
    %524 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %525 = llvm.insertvalue %516, %524[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %526 = llvm.insertvalue %523, %525[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %527 = llvm.mlir.constant(0 : index) : i64
    %528 = llvm.insertvalue %527, %526[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %529 = llvm.insertvalue %508, %528[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %530 = llvm.insertvalue %509, %529[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %531 = llvm.mlir.constant(0 : index) : i64
    %532 = llvm.mlir.constant(3 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%531 : i64)
  ^bb58(%534: i64):  // 2 preds: ^bb57, ^bb59
    %535 = llvm.icmp "slt" %534, %532 : i64
    llvm.cond_br %535, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %536 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %537 = llvm.getelementptr %536[%534] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %538 = llvm.load %537 : !llvm.ptr<i64>
    %539 = llvm.extractvalue %493[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %540 = llvm.getelementptr %539[%534] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %541 = llvm.load %540 : !llvm.ptr<i64>
    %542 = llvm.icmp "eq" %538, %541 : i64
    %543 = llvm.extractvalue %530[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %544 = llvm.getelementptr %543[%534] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %542, %544 : !llvm.ptr<i1>
    %545 = llvm.add %534, %533  : i64
    llvm.br ^bb58(%545 : i64)
  ^bb60:  // pred: ^bb58
    %546 = llvm.mlir.constant(3 : index) : i64
    %547 = llvm.mlir.constant(1 : index) : i64
    %548 = llvm.mlir.null : !llvm.ptr<i64>
    %549 = llvm.getelementptr %548[%546] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %550 = llvm.ptrtoint %549 : !llvm.ptr<i64> to i64
    %551 = llvm.mlir.constant(16 : index) : i64
    %552 = llvm.add %550, %551  : i64
    %553 = llvm.call @malloc(%552) : (i64) -> !llvm.ptr<i8>
    %554 = llvm.bitcast %553 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %555 = llvm.ptrtoint %554 : !llvm.ptr<i64> to i64
    %556 = llvm.mlir.constant(1 : index) : i64
    %557 = llvm.sub %551, %556  : i64
    %558 = llvm.add %555, %557  : i64
    %559 = llvm.urem %558, %551  : i64
    %560 = llvm.sub %558, %559  : i64
    %561 = llvm.inttoptr %560 : i64 to !llvm.ptr<i64>
    %562 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %563 = llvm.insertvalue %554, %562[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %564 = llvm.insertvalue %561, %563[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %565 = llvm.mlir.constant(0 : index) : i64
    %566 = llvm.insertvalue %565, %564[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %567 = llvm.insertvalue %546, %566[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %568 = llvm.insertvalue %547, %567[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %569 = llvm.mlir.constant(0 : index) : i64
    %570 = llvm.mlir.constant(3 : index) : i64
    %571 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%569 : i64)
  ^bb61(%572: i64):  // 2 preds: ^bb60, ^bb62
    %573 = llvm.icmp "slt" %572, %570 : i64
    llvm.cond_br %573, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %574 = llvm.extractvalue %530[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %575 = llvm.getelementptr %574[%572] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %576 = llvm.load %575 : !llvm.ptr<i1>
    %577 = llvm.extractvalue %462[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %578 = llvm.getelementptr %577[%572] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %579 = llvm.load %578 : !llvm.ptr<i64>
    %580 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %581 = llvm.getelementptr %580[%572] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %582 = llvm.load %581 : !llvm.ptr<i64>
    %583 = llvm.select %576, %579, %582 : i1, i64
    %584 = llvm.extractvalue %568[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %585 = llvm.getelementptr %584[%572] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %583, %585 : !llvm.ptr<i64>
    %586 = llvm.add %572, %571  : i64
    llvm.br ^bb61(%586 : i64)
  ^bb63:  // pred: ^bb61
    %587 = llvm.mlir.constant(1 : index) : i64
    %588 = llvm.mlir.constant(1 : index) : i64
    %589 = llvm.mlir.constant(1 : index) : i64
    %590 = llvm.mlir.constant(1 : index) : i64
    %591 = llvm.mlir.null : !llvm.ptr<i64>
    %592 = llvm.getelementptr %591[%587] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %593 = llvm.ptrtoint %592 : !llvm.ptr<i64> to i64
    %594 = llvm.mlir.constant(16 : index) : i64
    %595 = llvm.add %593, %594  : i64
    %596 = llvm.call @malloc(%595) : (i64) -> !llvm.ptr<i8>
    %597 = llvm.bitcast %596 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %598 = llvm.ptrtoint %597 : !llvm.ptr<i64> to i64
    %599 = llvm.mlir.constant(1 : index) : i64
    %600 = llvm.sub %594, %599  : i64
    %601 = llvm.add %598, %600  : i64
    %602 = llvm.urem %601, %594  : i64
    %603 = llvm.sub %601, %602  : i64
    %604 = llvm.inttoptr %603 : i64 to !llvm.ptr<i64>
    %605 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %606 = llvm.insertvalue %597, %605[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %607 = llvm.insertvalue %604, %606[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %608 = llvm.mlir.constant(0 : index) : i64
    %609 = llvm.insertvalue %608, %607[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %610 = llvm.insertvalue %587, %609[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %611 = llvm.insertvalue %588, %610[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %612 = llvm.insertvalue %589, %611[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %613 = llvm.insertvalue %588, %612[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %614 = llvm.insertvalue %589, %613[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %615 = llvm.insertvalue %590, %614[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %616 = llvm.mlir.constant(0 : index) : i64
    %617 = llvm.mlir.constant(1 : index) : i64
    %618 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%616 : i64)
  ^bb64(%619: i64):  // 2 preds: ^bb63, ^bb71
    %620 = llvm.icmp "slt" %619, %617 : i64
    llvm.cond_br %620, ^bb65, ^bb72
  ^bb65:  // pred: ^bb64
    %621 = llvm.mlir.constant(0 : index) : i64
    %622 = llvm.mlir.constant(1 : index) : i64
    %623 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%621 : i64)
  ^bb66(%624: i64):  // 2 preds: ^bb65, ^bb70
    %625 = llvm.icmp "slt" %624, %622 : i64
    llvm.cond_br %625, ^bb67, ^bb71
  ^bb67:  // pred: ^bb66
    %626 = llvm.mlir.constant(0 : index) : i64
    %627 = llvm.mlir.constant(1 : index) : i64
    %628 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%626 : i64)
  ^bb68(%629: i64):  // 2 preds: ^bb67, ^bb69
    %630 = llvm.icmp "slt" %629, %627 : i64
    llvm.cond_br %630, ^bb69, ^bb70
  ^bb69:  // pred: ^bb68
    %631 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %632 = llvm.add %13, %13  : i64
    %633 = llvm.add %632, %13  : i64
    %634 = llvm.getelementptr %631[%633] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %635 = llvm.load %634 : !llvm.ptr<i64>
    %636 = llvm.extractvalue %615[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %637 = llvm.add %619, %624  : i64
    %638 = llvm.add %637, %629  : i64
    %639 = llvm.getelementptr %636[%638] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %635, %639 : !llvm.ptr<i64>
    %640 = llvm.add %629, %628  : i64
    llvm.br ^bb68(%640 : i64)
  ^bb70:  // pred: ^bb68
    %641 = llvm.add %624, %623  : i64
    llvm.br ^bb66(%641 : i64)
  ^bb71:  // pred: ^bb66
    %642 = llvm.add %619, %618  : i64
    llvm.br ^bb64(%642 : i64)
  ^bb72:  // pred: ^bb64
    %643 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    %644 = llvm.insertvalue %11, %643[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %645 = llvm.insertvalue %349, %644[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %646 = llvm.insertvalue %405, %645[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %647 = llvm.insertvalue %615, %646[3] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %647 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v4_0", "v5_0", "v3_0", "v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %48 = llvm.extractvalue %44[3] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %49 = llvm.mlir.constant(4 : i64) : i64
    %50 = llvm.mlir.constant(32 : i64) : i64
    %51 = llvm.call @malloc(%50) : (i64) -> !llvm.ptr<i8>
    %52 = llvm.bitcast %51 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %53 = llvm.mlir.constant(4 : i64) : i64
    %54 = llvm.call @omTensorCreateUntyped(%53) : (i64) -> !llvm.ptr<i8>
    %55 = llvm.mlir.constant(0 : i64) : i64
    %56 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %58 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.bitcast %58 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%54, %55, %57, %59) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %60 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%54, %60) : (!llvm.ptr<i8>, i64) -> ()
    %61 = llvm.call @omTensorGetShape(%54) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.call @omTensorGetStrides(%54) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %63 = llvm.mlir.constant(0 : i64) : i64
    %64 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %61[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.getelementptr %62[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %66, %67 : !llvm.ptr<i64>
    %68 = llvm.mlir.constant(1 : i64) : i64
    %69 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %61[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.getelementptr %62[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.mlir.constant(2 : i64) : i64
    %74 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %61[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.getelementptr %62[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %61[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %62[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.mlir.constant(0 : i64) : i64
    %84 = llvm.getelementptr %52[%83] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %54, %84 : !llvm.ptr<ptr<i8>>
    %85 = llvm.mlir.constant(3 : i64) : i64
    %86 = llvm.call @omTensorCreateUntyped(%85) : (i64) -> !llvm.ptr<i8>
    %87 = llvm.mlir.constant(1 : i64) : i64
    %88 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %90 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %91 = llvm.bitcast %90 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%86, %87, %89, %91) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %92 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%86, %92) : (!llvm.ptr<i8>, i64) -> ()
    %93 = llvm.call @omTensorGetShape(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.call @omTensorGetStrides(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %95 = llvm.mlir.constant(0 : i64) : i64
    %96 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %93[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %99 = llvm.getelementptr %94[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %98, %99 : !llvm.ptr<i64>
    %100 = llvm.mlir.constant(1 : i64) : i64
    %101 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %93[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %104 = llvm.getelementptr %94[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(2 : i64) : i64
    %106 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.getelementptr %93[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.getelementptr %94[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(1 : i64) : i64
    %111 = llvm.getelementptr %52[%110] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %86, %111 : !llvm.ptr<ptr<i8>>
    %112 = llvm.mlir.constant(3 : i64) : i64
    %113 = llvm.call @omTensorCreateUntyped(%112) : (i64) -> !llvm.ptr<i8>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %116 = llvm.bitcast %115 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %117 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %118 = llvm.bitcast %117 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%113, %114, %116, %118) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %119 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%113, %119) : (!llvm.ptr<i8>, i64) -> ()
    %120 = llvm.call @omTensorGetShape(%113) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %121 = llvm.call @omTensorGetStrides(%113) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %122 = llvm.mlir.constant(0 : i64) : i64
    %123 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %124 = llvm.getelementptr %120[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %126 = llvm.getelementptr %121[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %125, %126 : !llvm.ptr<i64>
    %127 = llvm.mlir.constant(1 : i64) : i64
    %128 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %129 = llvm.getelementptr %120[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %131 = llvm.getelementptr %121[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.mlir.constant(2 : i64) : i64
    %133 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %134 = llvm.getelementptr %120[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %136 = llvm.getelementptr %121[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.mlir.constant(2 : i64) : i64
    %138 = llvm.getelementptr %52[%137] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %113, %138 : !llvm.ptr<ptr<i8>>
    %139 = llvm.mlir.constant(3 : i64) : i64
    %140 = llvm.call @omTensorCreateUntyped(%139) : (i64) -> !llvm.ptr<i8>
    %141 = llvm.mlir.constant(1 : i64) : i64
    %142 = llvm.extractvalue %48[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %143 = llvm.bitcast %142 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %144 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %145 = llvm.bitcast %144 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%140, %141, %143, %145) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %146 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%140, %146) : (!llvm.ptr<i8>, i64) -> ()
    %147 = llvm.call @omTensorGetShape(%140) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %148 = llvm.call @omTensorGetStrides(%140) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %149 = llvm.mlir.constant(0 : i64) : i64
    %150 = llvm.extractvalue %48[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %151 = llvm.getelementptr %147[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.extractvalue %48[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %153 = llvm.getelementptr %148[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.mlir.constant(1 : i64) : i64
    %155 = llvm.extractvalue %48[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %156 = llvm.getelementptr %147[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %155, %156 : !llvm.ptr<i64>
    %157 = llvm.extractvalue %48[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %158 = llvm.getelementptr %148[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %157, %158 : !llvm.ptr<i64>
    %159 = llvm.mlir.constant(2 : i64) : i64
    %160 = llvm.extractvalue %48[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %161 = llvm.getelementptr %147[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %160, %161 : !llvm.ptr<i64>
    %162 = llvm.extractvalue %48[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %163 = llvm.getelementptr %148[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %162, %163 : !llvm.ptr<i64>
    %164 = llvm.mlir.constant(3 : i64) : i64
    %165 = llvm.getelementptr %52[%164] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %140, %165 : !llvm.ptr<ptr<i8>>
    %166 = llvm.call @omTensorListCreate(%52, %49, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %166 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<269 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<269 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

