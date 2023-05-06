module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v3_0", "v4_0"]} {
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
    %15 = llvm.mlir.constant(0 : i32) : i32
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %19 = llvm.bitcast %18 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.insertvalue %19, %20[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %19, %21[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(0 : index) : i64
    %24 = llvm.insertvalue %23, %22[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(4 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %30 = llvm.bitcast %29 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %31 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %32 = llvm.insertvalue %30, %31[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %36 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %37 = llvm.bitcast %36 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(4 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %48 = llvm.extractvalue %11[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %48, %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %49, %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.insertvalue %62, %61[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.null : !llvm.ptr<i32>
    %76 = llvm.getelementptr %75[%70] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %77 = llvm.ptrtoint %76 : !llvm.ptr<i32> to i64
    %78 = llvm.mlir.constant(16 : index) : i64
    %79 = llvm.add %77, %78  : i64
    %80 = llvm.call @malloc(%79) : (i64) -> !llvm.ptr<i8>
    %81 = llvm.bitcast %80 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %82 = llvm.ptrtoint %81 : !llvm.ptr<i32> to i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.sub %78, %83  : i64
    %85 = llvm.add %82, %84  : i64
    %86 = llvm.urem %85, %78  : i64
    %87 = llvm.sub %85, %86  : i64
    %88 = llvm.inttoptr %87 : i64 to !llvm.ptr<i32>
    %89 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %90 = llvm.insertvalue %81, %89[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.insertvalue %88, %90[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.mlir.constant(0 : index) : i64
    %93 = llvm.insertvalue %92, %91[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %70, %93[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %71, %94[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %72, %95[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %73, %96[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %71, %97[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %72, %98[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %73, %99[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %74, %100[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%102 : i64)
  ^bb1(%105: i64):  // 2 preds: ^bb0, ^bb11
    %106 = llvm.icmp "slt" %105, %103 : i64
    llvm.cond_br %106, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%107 : i64)
  ^bb3(%110: i64):  // 2 preds: ^bb2, ^bb10
    %111 = llvm.icmp "slt" %110, %108 : i64
    llvm.cond_br %111, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%112 : i64)
  ^bb5(%115: i64):  // 2 preds: ^bb4, ^bb9
    %116 = llvm.icmp "slt" %115, %113 : i64
    llvm.cond_br %116, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%117 : i64)
  ^bb7(%120: i64):  // 2 preds: ^bb6, ^bb8
    %121 = llvm.icmp "slt" %120, %118 : i64
    llvm.cond_br %121, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %122 = llvm.extractvalue %69[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.add %105, %110  : i64
    %124 = llvm.add %123, %115  : i64
    %125 = llvm.add %124, %120  : i64
    %126 = llvm.getelementptr %122[%125] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %127 = llvm.load %126 : !llvm.ptr<i32>
    %128 = llvm.sub %15, %127  : i32
    %129 = llvm.extractvalue %101[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.add %105, %110  : i64
    %131 = llvm.add %130, %115  : i64
    %132 = llvm.add %131, %120  : i64
    %133 = llvm.getelementptr %129[%132] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %128, %133 : !llvm.ptr<i32>
    %134 = llvm.add %120, %119  : i64
    llvm.br ^bb7(%134 : i64)
  ^bb9:  // pred: ^bb7
    %135 = llvm.add %115, %114  : i64
    llvm.br ^bb5(%135 : i64)
  ^bb10:  // pred: ^bb5
    %136 = llvm.add %110, %109  : i64
    llvm.br ^bb3(%136 : i64)
  ^bb11:  // pred: ^bb3
    %137 = llvm.add %105, %104  : i64
    llvm.br ^bb1(%137 : i64)
  ^bb12:  // pred: ^bb1
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.null : !llvm.ptr<i32>
    %144 = llvm.getelementptr %143[%138] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %145 = llvm.ptrtoint %144 : !llvm.ptr<i32> to i64
    %146 = llvm.mlir.constant(16 : index) : i64
    %147 = llvm.add %145, %146  : i64
    %148 = llvm.call @malloc(%147) : (i64) -> !llvm.ptr<i8>
    %149 = llvm.bitcast %148 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %150 = llvm.ptrtoint %149 : !llvm.ptr<i32> to i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.sub %146, %151  : i64
    %153 = llvm.add %150, %152  : i64
    %154 = llvm.urem %153, %146  : i64
    %155 = llvm.sub %153, %154  : i64
    %156 = llvm.inttoptr %155 : i64 to !llvm.ptr<i32>
    %157 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %158 = llvm.insertvalue %149, %157[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %156, %158[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.insertvalue %160, %159[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %138, %161[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.insertvalue %139, %162[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.insertvalue %140, %163[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.insertvalue %141, %164[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.insertvalue %139, %165[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.insertvalue %140, %166[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.insertvalue %141, %167[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.insertvalue %142, %168[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%170 : i64)
  ^bb13(%173: i64):  // 2 preds: ^bb12, ^bb23
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%175 : i64)
  ^bb15(%178: i64):  // 2 preds: ^bb14, ^bb22
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%180 : i64)
  ^bb17(%183: i64):  // 2 preds: ^bb16, ^bb21
    %184 = llvm.icmp "slt" %183, %181 : i64
    llvm.cond_br %184, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%185 : i64)
  ^bb19(%188: i64):  // 2 preds: ^bb18, ^bb20
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %190 = llvm.extractvalue %69[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.add %173, %178  : i64
    %192 = llvm.add %191, %183  : i64
    %193 = llvm.add %192, %188  : i64
    %194 = llvm.getelementptr %190[%193] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %195 = llvm.load %194 : !llvm.ptr<i32>
    %196 = llvm.mlir.constant(false) : i1
    %197 = "llvm.intr.abs"(%195, %196) : (i32, i1) -> i32
    %198 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.add %173, %178  : i64
    %200 = llvm.add %199, %183  : i64
    %201 = llvm.add %200, %188  : i64
    %202 = llvm.getelementptr %198[%201] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %197, %202 : !llvm.ptr<i32>
    %203 = llvm.add %188, %187  : i64
    llvm.br ^bb19(%203 : i64)
  ^bb21:  // pred: ^bb19
    %204 = llvm.add %183, %182  : i64
    llvm.br ^bb17(%204 : i64)
  ^bb22:  // pred: ^bb17
    %205 = llvm.add %178, %177  : i64
    llvm.br ^bb15(%205 : i64)
  ^bb23:  // pred: ^bb15
    %206 = llvm.add %173, %172  : i64
    llvm.br ^bb13(%206 : i64)
  ^bb24:  // pred: ^bb13
    %207 = llvm.mlir.constant(4 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.null : !llvm.ptr<i64>
    %210 = llvm.getelementptr %209[%207] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %211 = llvm.ptrtoint %210 : !llvm.ptr<i64> to i64
    %212 = llvm.mlir.constant(16 : index) : i64
    %213 = llvm.add %211, %212  : i64
    %214 = llvm.call @malloc(%213) : (i64) -> !llvm.ptr<i8>
    %215 = llvm.bitcast %214 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %216 = llvm.ptrtoint %215 : !llvm.ptr<i64> to i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.sub %212, %217  : i64
    %219 = llvm.add %216, %218  : i64
    %220 = llvm.urem %219, %212  : i64
    %221 = llvm.sub %219, %220  : i64
    %222 = llvm.inttoptr %221 : i64 to !llvm.ptr<i64>
    %223 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %224 = llvm.insertvalue %215, %223[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.insertvalue %222, %224[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %226 = llvm.mlir.constant(0 : index) : i64
    %227 = llvm.insertvalue %226, %225[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %228 = llvm.insertvalue %207, %227[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.insertvalue %208, %228[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.mlir.constant(4 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%230 : i64)
  ^bb25(%233: i64):  // 2 preds: ^bb24, ^bb26
    %234 = llvm.icmp "slt" %233, %231 : i64
    llvm.cond_br %234, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %235 = llvm.extractvalue %229[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %236 = llvm.getelementptr %235[%233] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %236 : !llvm.ptr<i64>
    %237 = llvm.add %233, %232  : i64
    llvm.br ^bb25(%237 : i64)
  ^bb27:  // pred: ^bb25
    %238 = llvm.mlir.constant(4 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.null : !llvm.ptr<i64>
    %241 = llvm.getelementptr %240[%238] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %242 = llvm.ptrtoint %241 : !llvm.ptr<i64> to i64
    %243 = llvm.mlir.constant(16 : index) : i64
    %244 = llvm.add %242, %243  : i64
    %245 = llvm.call @malloc(%244) : (i64) -> !llvm.ptr<i8>
    %246 = llvm.bitcast %245 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %247 = llvm.ptrtoint %246 : !llvm.ptr<i64> to i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.sub %243, %248  : i64
    %250 = llvm.add %247, %249  : i64
    %251 = llvm.urem %250, %243  : i64
    %252 = llvm.sub %250, %251  : i64
    %253 = llvm.inttoptr %252 : i64 to !llvm.ptr<i64>
    %254 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %255 = llvm.insertvalue %246, %254[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.insertvalue %253, %255[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %257 = llvm.mlir.constant(0 : index) : i64
    %258 = llvm.insertvalue %257, %256[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %259 = llvm.insertvalue %238, %258[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %260 = llvm.insertvalue %239, %259[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.mlir.constant(0 : index) : i64
    %262 = llvm.mlir.constant(4 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%261 : i64)
  ^bb28(%264: i64):  // 2 preds: ^bb27, ^bb29
    %265 = llvm.icmp "slt" %264, %262 : i64
    llvm.cond_br %265, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %266 = llvm.extractvalue %229[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.getelementptr %266[%264] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %268 = llvm.load %267 : !llvm.ptr<i64>
    %269 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %270 = llvm.load %269 : !llvm.ptr<i64>
    %271 = llvm.mul %268, %270  : i64
    %272 = llvm.extractvalue %260[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %273 = llvm.getelementptr %272[%264] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %271, %273 : !llvm.ptr<i64>
    %274 = llvm.add %264, %263  : i64
    llvm.br ^bb28(%274 : i64)
  ^bb30:  // pred: ^bb28
    %275 = llvm.mlir.constant(4 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.null : !llvm.ptr<i1>
    %278 = llvm.getelementptr %277[%275] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %279 = llvm.ptrtoint %278 : !llvm.ptr<i1> to i64
    %280 = llvm.mlir.constant(16 : index) : i64
    %281 = llvm.add %279, %280  : i64
    %282 = llvm.call @malloc(%281) : (i64) -> !llvm.ptr<i8>
    %283 = llvm.bitcast %282 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %284 = llvm.ptrtoint %283 : !llvm.ptr<i1> to i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.sub %280, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.urem %287, %280  : i64
    %289 = llvm.sub %287, %288  : i64
    %290 = llvm.inttoptr %289 : i64 to !llvm.ptr<i1>
    %291 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %292 = llvm.insertvalue %283, %291[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %293 = llvm.insertvalue %290, %292[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.insertvalue %294, %293[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %296 = llvm.insertvalue %275, %295[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %297 = llvm.insertvalue %276, %296[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.mlir.constant(4 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%298 : i64)
  ^bb31(%301: i64):  // 2 preds: ^bb30, ^bb32
    %302 = llvm.icmp "slt" %301, %299 : i64
    llvm.cond_br %302, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %303 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.getelementptr %303[%301] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %305 = llvm.load %304 : !llvm.ptr<i64>
    %306 = llvm.extractvalue %260[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.getelementptr %306[%301] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %308 = llvm.load %307 : !llvm.ptr<i64>
    %309 = llvm.icmp "eq" %305, %308 : i64
    %310 = llvm.extractvalue %297[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %311 = llvm.getelementptr %310[%301] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %309, %311 : !llvm.ptr<i1>
    %312 = llvm.add %301, %300  : i64
    llvm.br ^bb31(%312 : i64)
  ^bb33:  // pred: ^bb31
    %313 = llvm.mlir.constant(4 : index) : i64
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
    %337 = llvm.mlir.constant(4 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%336 : i64)
  ^bb34(%339: i64):  // 2 preds: ^bb33, ^bb35
    %340 = llvm.icmp "slt" %339, %337 : i64
    llvm.cond_br %340, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %341 = llvm.extractvalue %297[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %342 = llvm.getelementptr %341[%339] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %343 = llvm.load %342 : !llvm.ptr<i1>
    %344 = llvm.extractvalue %229[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %345 = llvm.getelementptr %344[%339] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %346 = llvm.load %345 : !llvm.ptr<i64>
    %347 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %348 = llvm.getelementptr %347[%339] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %349 = llvm.load %348 : !llvm.ptr<i64>
    %350 = llvm.select %343, %346, %349 : i1, i64
    %351 = llvm.extractvalue %335[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %352 = llvm.getelementptr %351[%339] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %350, %352 : !llvm.ptr<i64>
    %353 = llvm.add %339, %338  : i64
    llvm.br ^bb34(%353 : i64)
  ^bb36:  // pred: ^bb34
    %354 = llvm.extractvalue %335[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %355 = llvm.getelementptr %354[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %356 = llvm.load %355 : !llvm.ptr<i64>
    %357 = llvm.extractvalue %335[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %358 = llvm.getelementptr %357[%17] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %359 = llvm.load %358 : !llvm.ptr<i64>
    %360 = llvm.extractvalue %335[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %361 = llvm.getelementptr %360[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %362 = llvm.load %361 : !llvm.ptr<i64>
    %363 = llvm.extractvalue %335[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %364 = llvm.getelementptr %363[%12] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %365 = llvm.load %364 : !llvm.ptr<i64>
    %366 = llvm.mlir.constant(1 : index) : i64
    %367 = llvm.mul %365, %362  : i64
    %368 = llvm.mul %367, %359  : i64
    %369 = llvm.mul %368, %356  : i64
    %370 = llvm.mlir.null : !llvm.ptr<i32>
    %371 = llvm.getelementptr %370[%369] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %372 = llvm.ptrtoint %371 : !llvm.ptr<i32> to i64
    %373 = llvm.mlir.constant(16 : index) : i64
    %374 = llvm.add %372, %373  : i64
    %375 = llvm.call @malloc(%374) : (i64) -> !llvm.ptr<i8>
    %376 = llvm.bitcast %375 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %377 = llvm.ptrtoint %376 : !llvm.ptr<i32> to i64
    %378 = llvm.mlir.constant(1 : index) : i64
    %379 = llvm.sub %373, %378  : i64
    %380 = llvm.add %377, %379  : i64
    %381 = llvm.urem %380, %373  : i64
    %382 = llvm.sub %380, %381  : i64
    %383 = llvm.inttoptr %382 : i64 to !llvm.ptr<i32>
    %384 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %385 = llvm.insertvalue %376, %384[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.insertvalue %383, %385[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.mlir.constant(0 : index) : i64
    %388 = llvm.insertvalue %387, %386[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.insertvalue %356, %388[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.insertvalue %359, %389[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.insertvalue %362, %390[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.insertvalue %365, %391[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.insertvalue %368, %392[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.insertvalue %367, %393[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.insertvalue %365, %394[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.insertvalue %366, %395[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%397 : i64)
  ^bb37(%399: i64):  // 2 preds: ^bb36, ^bb47
    %400 = llvm.icmp "slt" %399, %356 : i64
    llvm.cond_br %400, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %401 = llvm.mlir.constant(0 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%401 : i64)
  ^bb39(%403: i64):  // 2 preds: ^bb38, ^bb46
    %404 = llvm.icmp "slt" %403, %359 : i64
    llvm.cond_br %404, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%405 : i64)
  ^bb41(%407: i64):  // 2 preds: ^bb40, ^bb45
    %408 = llvm.icmp "slt" %407, %362 : i64
    llvm.cond_br %408, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %409 = llvm.mlir.constant(0 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%409 : i64)
  ^bb43(%411: i64):  // 2 preds: ^bb42, ^bb44
    %412 = llvm.icmp "slt" %411, %365 : i64
    llvm.cond_br %412, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %413 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.add %16, %16  : i64
    %415 = llvm.add %414, %16  : i64
    %416 = llvm.add %415, %16  : i64
    %417 = llvm.getelementptr %413[%416] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %418 = llvm.load %417 : !llvm.ptr<i32>
    %419 = llvm.extractvalue %396[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.extractvalue %396[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.mul %399, %420  : i64
    %422 = llvm.extractvalue %396[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.mul %403, %422  : i64
    %424 = llvm.add %421, %423  : i64
    %425 = llvm.extractvalue %396[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.mul %407, %425  : i64
    %427 = llvm.add %424, %426  : i64
    %428 = llvm.add %427, %411  : i64
    %429 = llvm.getelementptr %419[%428] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %418, %429 : !llvm.ptr<i32>
    %430 = llvm.add %411, %410  : i64
    llvm.br ^bb43(%430 : i64)
  ^bb45:  // pred: ^bb43
    %431 = llvm.add %407, %406  : i64
    llvm.br ^bb41(%431 : i64)
  ^bb46:  // pred: ^bb41
    %432 = llvm.add %403, %402  : i64
    llvm.br ^bb39(%432 : i64)
  ^bb47:  // pred: ^bb39
    %433 = llvm.add %399, %398  : i64
    llvm.br ^bb37(%433 : i64)
  ^bb48:  // pred: ^bb37
    %434 = llvm.mlir.constant(1 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    %437 = llvm.mlir.constant(1 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    %439 = llvm.mlir.null : !llvm.ptr<f32>
    %440 = llvm.getelementptr %439[%434] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %441 = llvm.ptrtoint %440 : !llvm.ptr<f32> to i64
    %442 = llvm.mlir.constant(16 : index) : i64
    %443 = llvm.add %441, %442  : i64
    %444 = llvm.call @malloc(%443) : (i64) -> !llvm.ptr<i8>
    %445 = llvm.bitcast %444 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %446 = llvm.ptrtoint %445 : !llvm.ptr<f32> to i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.sub %442, %447  : i64
    %449 = llvm.add %446, %448  : i64
    %450 = llvm.urem %449, %442  : i64
    %451 = llvm.sub %449, %450  : i64
    %452 = llvm.inttoptr %451 : i64 to !llvm.ptr<f32>
    %453 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %454 = llvm.insertvalue %445, %453[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.insertvalue %452, %454[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.insertvalue %456, %455[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %458 = llvm.insertvalue %434, %457[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.insertvalue %435, %458[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %460 = llvm.insertvalue %436, %459[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.insertvalue %437, %460[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.insertvalue %435, %461[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.insertvalue %436, %462[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %464 = llvm.insertvalue %437, %463[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.insertvalue %438, %464[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.mlir.constant(0 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%466 : i64)
  ^bb49(%468: i64):  // 2 preds: ^bb48, ^bb59
    %469 = llvm.icmp "slt" %468, %356 : i64
    llvm.cond_br %469, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %470 = llvm.mlir.constant(0 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%470 : i64)
  ^bb51(%472: i64):  // 2 preds: ^bb50, ^bb58
    %473 = llvm.icmp "slt" %472, %359 : i64
    llvm.cond_br %473, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %474 = llvm.mlir.constant(0 : index) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%474 : i64)
  ^bb53(%476: i64):  // 2 preds: ^bb52, ^bb57
    %477 = llvm.icmp "slt" %476, %362 : i64
    llvm.cond_br %477, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %478 = llvm.mlir.constant(0 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%478 : i64)
  ^bb55(%480: i64):  // 2 preds: ^bb54, ^bb56
    %481 = llvm.icmp "slt" %480, %365 : i64
    llvm.cond_br %481, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %482 = llvm.extractvalue %396[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %483 = llvm.extractvalue %396[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %484 = llvm.mul %468, %483  : i64
    %485 = llvm.extractvalue %396[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %486 = llvm.mul %472, %485  : i64
    %487 = llvm.add %484, %486  : i64
    %488 = llvm.extractvalue %396[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %489 = llvm.mul %476, %488  : i64
    %490 = llvm.add %487, %489  : i64
    %491 = llvm.add %490, %480  : i64
    %492 = llvm.getelementptr %482[%491] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %493 = llvm.load %492 : !llvm.ptr<i32>
    %494 = llvm.sitofp %493 : i32 to f32
    %495 = llvm.extractvalue %465[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %496 = llvm.add %468, %472  : i64
    %497 = llvm.add %496, %476  : i64
    %498 = llvm.add %497, %480  : i64
    %499 = llvm.getelementptr %495[%498] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %494, %499 : !llvm.ptr<f32>
    %500 = llvm.add %480, %479  : i64
    llvm.br ^bb55(%500 : i64)
  ^bb57:  // pred: ^bb55
    %501 = llvm.add %476, %475  : i64
    llvm.br ^bb53(%501 : i64)
  ^bb58:  // pred: ^bb53
    %502 = llvm.add %472, %471  : i64
    llvm.br ^bb51(%502 : i64)
  ^bb59:  // pred: ^bb51
    %503 = llvm.add %468, %467  : i64
    llvm.br ^bb49(%503 : i64)
  ^bb60:  // pred: ^bb49
    %504 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %505 = llvm.insertvalue %101, %504[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %506 = llvm.insertvalue %465, %505[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %506 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v3_0", "v4_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
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

