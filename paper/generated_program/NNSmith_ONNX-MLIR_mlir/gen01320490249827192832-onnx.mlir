module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v1_0", "v0_0"]} {
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
    %15 = llvm.mlir.constant(0 : i32) : i32
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.constant(2147483647 : i32) : i32
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
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %48 = llvm.extractvalue %13[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %49 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %50 = llvm.insertvalue %48, %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %51 = llvm.insertvalue %49, %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.insertvalue %62, %61[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.insertvalue %70, %69[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.insertvalue %72, %71[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.null : !llvm.ptr<i32>
    %80 = llvm.getelementptr %79[%74] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %81 = llvm.ptrtoint %80 : !llvm.ptr<i32> to i64
    %82 = llvm.mlir.constant(16 : index) : i64
    %83 = llvm.add %81, %82  : i64
    %84 = llvm.call @malloc(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.bitcast %84 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %86 = llvm.ptrtoint %85 : !llvm.ptr<i32> to i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.sub %82, %87  : i64
    %89 = llvm.add %86, %88  : i64
    %90 = llvm.urem %89, %82  : i64
    %91 = llvm.sub %89, %90  : i64
    %92 = llvm.inttoptr %91 : i64 to !llvm.ptr<i32>
    %93 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %94 = llvm.insertvalue %85, %93[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %92, %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.insertvalue %96, %95[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %74, %97[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %75, %98[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %76, %99[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %77, %100[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %75, %101[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %76, %102[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %77, %103[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %78, %104[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%106 : i64)
  ^bb1(%109: i64):  // 2 preds: ^bb0, ^bb11
    %110 = llvm.icmp "slt" %109, %107 : i64
    llvm.cond_br %110, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%111 : i64)
  ^bb3(%114: i64):  // 2 preds: ^bb2, ^bb10
    %115 = llvm.icmp "slt" %114, %112 : i64
    llvm.cond_br %115, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %116 = llvm.mlir.constant(0 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%116 : i64)
  ^bb5(%119: i64):  // 2 preds: ^bb4, ^bb9
    %120 = llvm.icmp "slt" %119, %117 : i64
    llvm.cond_br %120, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %121 = llvm.mlir.constant(0 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%121 : i64)
  ^bb7(%124: i64):  // 2 preds: ^bb6, ^bb8
    %125 = llvm.icmp "slt" %124, %122 : i64
    llvm.cond_br %125, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %126 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.add %109, %114  : i64
    %128 = llvm.add %127, %119  : i64
    %129 = llvm.add %128, %124  : i64
    %130 = llvm.getelementptr %126[%129] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %17, %130 : !llvm.ptr<i32>
    %131 = llvm.add %124, %123  : i64
    llvm.br ^bb7(%131 : i64)
  ^bb9:  // pred: ^bb7
    %132 = llvm.add %119, %118  : i64
    llvm.br ^bb5(%132 : i64)
  ^bb10:  // pred: ^bb5
    %133 = llvm.add %114, %113  : i64
    llvm.br ^bb3(%133 : i64)
  ^bb11:  // pred: ^bb3
    %134 = llvm.add %109, %108  : i64
    llvm.br ^bb1(%134 : i64)
  ^bb12:  // pred: ^bb1
    %135 = llvm.mlir.constant(0 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%135 : i64)
  ^bb13(%138: i64):  // 2 preds: ^bb12, ^bb26
    %139 = llvm.icmp "slt" %138, %136 : i64
    llvm.cond_br %139, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %140 = llvm.mlir.constant(0 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%140 : i64)
  ^bb15(%143: i64):  // 2 preds: ^bb14, ^bb25
    %144 = llvm.icmp "slt" %143, %141 : i64
    llvm.cond_br %144, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%145 : i64)
  ^bb17(%148: i64):  // 2 preds: ^bb16, ^bb24
    %149 = llvm.icmp "slt" %148, %146 : i64
    llvm.cond_br %149, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %150 = llvm.mlir.constant(0 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%150 : i64)
  ^bb19(%153: i64):  // 2 preds: ^bb18, ^bb23
    %154 = llvm.icmp "slt" %153, %151 : i64
    llvm.cond_br %154, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %155 = llvm.mlir.constant(0 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%155 : i64)
  ^bb21(%158: i64):  // 2 preds: ^bb20, ^bb22
    %159 = llvm.icmp "slt" %158, %156 : i64
    llvm.cond_br %159, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %160 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %161 = llvm.add %138, %143  : i64
    %162 = llvm.add %161, %148  : i64
    %163 = llvm.add %162, %153  : i64
    %164 = llvm.add %163, %158  : i64
    %165 = llvm.getelementptr %160[%164] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %166 = llvm.load %165 : !llvm.ptr<i32>
    %167 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.add %138, %148  : i64
    %169 = llvm.add %168, %153  : i64
    %170 = llvm.add %169, %158  : i64
    %171 = llvm.getelementptr %167[%170] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %172 = llvm.load %171 : !llvm.ptr<i32>
    %173 = llvm.icmp "slt" %172, %166 : i32
    %174 = llvm.select %173, %172, %166 : i1, i32
    %175 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.add %138, %148  : i64
    %177 = llvm.add %176, %153  : i64
    %178 = llvm.add %177, %158  : i64
    %179 = llvm.getelementptr %175[%178] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %174, %179 : !llvm.ptr<i32>
    %180 = llvm.add %158, %157  : i64
    llvm.br ^bb21(%180 : i64)
  ^bb23:  // pred: ^bb21
    %181 = llvm.add %153, %152  : i64
    llvm.br ^bb19(%181 : i64)
  ^bb24:  // pred: ^bb19
    %182 = llvm.add %148, %147  : i64
    llvm.br ^bb17(%182 : i64)
  ^bb25:  // pred: ^bb17
    %183 = llvm.add %143, %142  : i64
    llvm.br ^bb15(%183 : i64)
  ^bb26:  // pred: ^bb15
    %184 = llvm.add %138, %137  : i64
    llvm.br ^bb13(%184 : i64)
  ^bb27:  // pred: ^bb13
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.mlir.null : !llvm.ptr<i32>
    %191 = llvm.getelementptr %190[%185] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %192 = llvm.ptrtoint %191 : !llvm.ptr<i32> to i64
    %193 = llvm.mlir.constant(16 : index) : i64
    %194 = llvm.add %192, %193  : i64
    %195 = llvm.call @malloc(%194) : (i64) -> !llvm.ptr<i8>
    %196 = llvm.bitcast %195 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %197 = llvm.ptrtoint %196 : !llvm.ptr<i32> to i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.sub %193, %198  : i64
    %200 = llvm.add %197, %199  : i64
    %201 = llvm.urem %200, %193  : i64
    %202 = llvm.sub %200, %201  : i64
    %203 = llvm.inttoptr %202 : i64 to !llvm.ptr<i32>
    %204 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %205 = llvm.insertvalue %196, %204[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.insertvalue %203, %205[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.insertvalue %207, %206[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.insertvalue %185, %208[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.insertvalue %186, %209[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.insertvalue %187, %210[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.insertvalue %188, %211[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %186, %212[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %187, %213[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.insertvalue %188, %214[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %189, %215[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%217 : i64)
  ^bb28(%220: i64):  // 2 preds: ^bb27, ^bb38
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %222 = llvm.mlir.constant(0 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%222 : i64)
  ^bb30(%225: i64):  // 2 preds: ^bb29, ^bb37
    %226 = llvm.icmp "slt" %225, %223 : i64
    llvm.cond_br %226, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %227 = llvm.mlir.constant(0 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%227 : i64)
  ^bb32(%230: i64):  // 2 preds: ^bb31, ^bb36
    %231 = llvm.icmp "slt" %230, %228 : i64
    llvm.cond_br %231, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%232 : i64)
  ^bb34(%235: i64):  // 2 preds: ^bb33, ^bb35
    %236 = llvm.icmp "slt" %235, %233 : i64
    llvm.cond_br %236, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %237 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.add %220, %225  : i64
    %239 = llvm.add %238, %230  : i64
    %240 = llvm.add %239, %235  : i64
    %241 = llvm.getelementptr %237[%240] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %242 = llvm.load %241 : !llvm.ptr<i32>
    %243 = llvm.sub %15, %242  : i32
    %244 = llvm.extractvalue %216[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.add %220, %225  : i64
    %246 = llvm.add %245, %230  : i64
    %247 = llvm.add %246, %235  : i64
    %248 = llvm.getelementptr %244[%247] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %243, %248 : !llvm.ptr<i32>
    %249 = llvm.add %235, %234  : i64
    llvm.br ^bb34(%249 : i64)
  ^bb36:  // pred: ^bb34
    %250 = llvm.add %230, %229  : i64
    llvm.br ^bb32(%250 : i64)
  ^bb37:  // pred: ^bb32
    %251 = llvm.add %225, %224  : i64
    llvm.br ^bb30(%251 : i64)
  ^bb38:  // pred: ^bb30
    %252 = llvm.add %220, %219  : i64
    llvm.br ^bb28(%252 : i64)
  ^bb39:  // pred: ^bb28
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.null : !llvm.ptr<i64>
    %259 = llvm.getelementptr %258[%253] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %260 = llvm.ptrtoint %259 : !llvm.ptr<i64> to i64
    %261 = llvm.mlir.constant(16 : index) : i64
    %262 = llvm.add %260, %261  : i64
    %263 = llvm.call @malloc(%262) : (i64) -> !llvm.ptr<i8>
    %264 = llvm.bitcast %263 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %265 = llvm.ptrtoint %264 : !llvm.ptr<i64> to i64
    %266 = llvm.mlir.constant(1 : index) : i64
    %267 = llvm.sub %261, %266  : i64
    %268 = llvm.add %265, %267  : i64
    %269 = llvm.urem %268, %261  : i64
    %270 = llvm.sub %268, %269  : i64
    %271 = llvm.inttoptr %270 : i64 to !llvm.ptr<i64>
    %272 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %273 = llvm.insertvalue %264, %272[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %271, %273[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.mlir.constant(0 : index) : i64
    %276 = llvm.insertvalue %275, %274[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %253, %276[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %254, %277[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %255, %278[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.insertvalue %256, %279[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %254, %280[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.insertvalue %255, %281[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.insertvalue %256, %282[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.insertvalue %257, %283[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%285 : i64)
  ^bb40(%288: i64):  // 2 preds: ^bb39, ^bb50
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%290 : i64)
  ^bb42(%293: i64):  // 2 preds: ^bb41, ^bb49
    %294 = llvm.icmp "slt" %293, %291 : i64
    llvm.cond_br %294, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%295 : i64)
  ^bb44(%298: i64):  // 2 preds: ^bb43, ^bb48
    %299 = llvm.icmp "slt" %298, %296 : i64
    llvm.cond_br %299, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %300 = llvm.mlir.constant(0 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%300 : i64)
  ^bb46(%303: i64):  // 2 preds: ^bb45, ^bb47
    %304 = llvm.icmp "slt" %303, %301 : i64
    llvm.cond_br %304, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %305 = llvm.extractvalue %216[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.add %288, %293  : i64
    %307 = llvm.add %306, %298  : i64
    %308 = llvm.add %307, %303  : i64
    %309 = llvm.getelementptr %305[%308] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %310 = llvm.load %309 : !llvm.ptr<i32>
    %311 = llvm.sext %310 : i32 to i64
    %312 = llvm.extractvalue %284[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.add %288, %293  : i64
    %314 = llvm.add %313, %298  : i64
    %315 = llvm.add %314, %303  : i64
    %316 = llvm.getelementptr %312[%315] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %311, %316 : !llvm.ptr<i64>
    %317 = llvm.add %303, %302  : i64
    llvm.br ^bb46(%317 : i64)
  ^bb48:  // pred: ^bb46
    %318 = llvm.add %298, %297  : i64
    llvm.br ^bb44(%318 : i64)
  ^bb49:  // pred: ^bb44
    %319 = llvm.add %293, %292  : i64
    llvm.br ^bb42(%319 : i64)
  ^bb50:  // pred: ^bb42
    %320 = llvm.add %288, %287  : i64
    llvm.br ^bb40(%320 : i64)
  ^bb51:  // pred: ^bb40
    %321 = llvm.mlir.constant(4 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.mlir.null : !llvm.ptr<i64>
    %324 = llvm.getelementptr %323[%321] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %325 = llvm.ptrtoint %324 : !llvm.ptr<i64> to i64
    %326 = llvm.mlir.constant(16 : index) : i64
    %327 = llvm.add %325, %326  : i64
    %328 = llvm.call @malloc(%327) : (i64) -> !llvm.ptr<i8>
    %329 = llvm.bitcast %328 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %330 = llvm.ptrtoint %329 : !llvm.ptr<i64> to i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.sub %326, %331  : i64
    %333 = llvm.add %330, %332  : i64
    %334 = llvm.urem %333, %326  : i64
    %335 = llvm.sub %333, %334  : i64
    %336 = llvm.inttoptr %335 : i64 to !llvm.ptr<i64>
    %337 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %338 = llvm.insertvalue %329, %337[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %339 = llvm.insertvalue %336, %338[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.insertvalue %340, %339[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %342 = llvm.insertvalue %321, %341[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %343 = llvm.insertvalue %322, %342[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %344 = llvm.mlir.constant(0 : index) : i64
    %345 = llvm.mlir.constant(4 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%344 : i64)
  ^bb52(%347: i64):  // 2 preds: ^bb51, ^bb53
    %348 = llvm.icmp "slt" %347, %345 : i64
    llvm.cond_br %348, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %349 = llvm.extractvalue %343[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %350 = llvm.getelementptr %349[%347] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %350 : !llvm.ptr<i64>
    %351 = llvm.add %347, %346  : i64
    llvm.br ^bb52(%351 : i64)
  ^bb54:  // pred: ^bb52
    %352 = llvm.mlir.constant(4 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.mlir.null : !llvm.ptr<i64>
    %355 = llvm.getelementptr %354[%352] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %356 = llvm.ptrtoint %355 : !llvm.ptr<i64> to i64
    %357 = llvm.mlir.constant(16 : index) : i64
    %358 = llvm.add %356, %357  : i64
    %359 = llvm.call @malloc(%358) : (i64) -> !llvm.ptr<i8>
    %360 = llvm.bitcast %359 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %361 = llvm.ptrtoint %360 : !llvm.ptr<i64> to i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.sub %357, %362  : i64
    %364 = llvm.add %361, %363  : i64
    %365 = llvm.urem %364, %357  : i64
    %366 = llvm.sub %364, %365  : i64
    %367 = llvm.inttoptr %366 : i64 to !llvm.ptr<i64>
    %368 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %369 = llvm.insertvalue %360, %368[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %370 = llvm.insertvalue %367, %369[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %371 = llvm.mlir.constant(0 : index) : i64
    %372 = llvm.insertvalue %371, %370[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %373 = llvm.insertvalue %352, %372[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %374 = llvm.insertvalue %353, %373[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %375 = llvm.mlir.constant(0 : index) : i64
    %376 = llvm.mlir.constant(4 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%375 : i64)
  ^bb55(%378: i64):  // 2 preds: ^bb54, ^bb56
    %379 = llvm.icmp "slt" %378, %376 : i64
    llvm.cond_br %379, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %380 = llvm.extractvalue %343[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %381 = llvm.getelementptr %380[%378] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %382 = llvm.load %381 : !llvm.ptr<i64>
    %383 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %384 = llvm.load %383 : !llvm.ptr<i64>
    %385 = llvm.mul %382, %384  : i64
    %386 = llvm.extractvalue %374[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %387 = llvm.getelementptr %386[%378] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %385, %387 : !llvm.ptr<i64>
    %388 = llvm.add %378, %377  : i64
    llvm.br ^bb55(%388 : i64)
  ^bb57:  // pred: ^bb55
    %389 = llvm.mlir.constant(4 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    %391 = llvm.mlir.null : !llvm.ptr<i1>
    %392 = llvm.getelementptr %391[%389] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %393 = llvm.ptrtoint %392 : !llvm.ptr<i1> to i64
    %394 = llvm.mlir.constant(16 : index) : i64
    %395 = llvm.add %393, %394  : i64
    %396 = llvm.call @malloc(%395) : (i64) -> !llvm.ptr<i8>
    %397 = llvm.bitcast %396 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %398 = llvm.ptrtoint %397 : !llvm.ptr<i1> to i64
    %399 = llvm.mlir.constant(1 : index) : i64
    %400 = llvm.sub %394, %399  : i64
    %401 = llvm.add %398, %400  : i64
    %402 = llvm.urem %401, %394  : i64
    %403 = llvm.sub %401, %402  : i64
    %404 = llvm.inttoptr %403 : i64 to !llvm.ptr<i1>
    %405 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %406 = llvm.insertvalue %397, %405[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %407 = llvm.insertvalue %404, %406[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %408 = llvm.mlir.constant(0 : index) : i64
    %409 = llvm.insertvalue %408, %407[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %410 = llvm.insertvalue %389, %409[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %411 = llvm.insertvalue %390, %410[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %412 = llvm.mlir.constant(0 : index) : i64
    %413 = llvm.mlir.constant(4 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%412 : i64)
  ^bb58(%415: i64):  // 2 preds: ^bb57, ^bb59
    %416 = llvm.icmp "slt" %415, %413 : i64
    llvm.cond_br %416, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %417 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %418 = llvm.getelementptr %417[%415] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %419 = llvm.load %418 : !llvm.ptr<i64>
    %420 = llvm.extractvalue %374[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %421 = llvm.getelementptr %420[%415] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %422 = llvm.load %421 : !llvm.ptr<i64>
    %423 = llvm.icmp "eq" %419, %422 : i64
    %424 = llvm.extractvalue %411[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %425 = llvm.getelementptr %424[%415] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %423, %425 : !llvm.ptr<i1>
    %426 = llvm.add %415, %414  : i64
    llvm.br ^bb58(%426 : i64)
  ^bb60:  // pred: ^bb58
    %427 = llvm.mlir.constant(4 : index) : i64
    %428 = llvm.mlir.constant(1 : index) : i64
    %429 = llvm.mlir.null : !llvm.ptr<i64>
    %430 = llvm.getelementptr %429[%427] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %431 = llvm.ptrtoint %430 : !llvm.ptr<i64> to i64
    %432 = llvm.mlir.constant(16 : index) : i64
    %433 = llvm.add %431, %432  : i64
    %434 = llvm.call @malloc(%433) : (i64) -> !llvm.ptr<i8>
    %435 = llvm.bitcast %434 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %436 = llvm.ptrtoint %435 : !llvm.ptr<i64> to i64
    %437 = llvm.mlir.constant(1 : index) : i64
    %438 = llvm.sub %432, %437  : i64
    %439 = llvm.add %436, %438  : i64
    %440 = llvm.urem %439, %432  : i64
    %441 = llvm.sub %439, %440  : i64
    %442 = llvm.inttoptr %441 : i64 to !llvm.ptr<i64>
    %443 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %444 = llvm.insertvalue %435, %443[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %445 = llvm.insertvalue %442, %444[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.insertvalue %446, %445[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %448 = llvm.insertvalue %427, %447[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %449 = llvm.insertvalue %428, %448[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.mlir.constant(4 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%450 : i64)
  ^bb61(%453: i64):  // 2 preds: ^bb60, ^bb62
    %454 = llvm.icmp "slt" %453, %451 : i64
    llvm.cond_br %454, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %455 = llvm.extractvalue %411[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %456 = llvm.getelementptr %455[%453] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %457 = llvm.load %456 : !llvm.ptr<i1>
    %458 = llvm.extractvalue %343[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %459 = llvm.getelementptr %458[%453] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %460 = llvm.load %459 : !llvm.ptr<i64>
    %461 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %462 = llvm.getelementptr %461[%453] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %463 = llvm.load %462 : !llvm.ptr<i64>
    %464 = llvm.select %457, %460, %463 : i1, i64
    %465 = llvm.extractvalue %449[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %466 = llvm.getelementptr %465[%453] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %464, %466 : !llvm.ptr<i64>
    %467 = llvm.add %453, %452  : i64
    llvm.br ^bb61(%467 : i64)
  ^bb63:  // pred: ^bb61
    %468 = llvm.mlir.constant(1 : index) : i64
    %469 = llvm.mlir.constant(1 : index) : i64
    %470 = llvm.mlir.constant(1 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    %473 = llvm.mlir.null : !llvm.ptr<i32>
    %474 = llvm.getelementptr %473[%468] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %475 = llvm.ptrtoint %474 : !llvm.ptr<i32> to i64
    %476 = llvm.mlir.constant(16 : index) : i64
    %477 = llvm.add %475, %476  : i64
    %478 = llvm.call @malloc(%477) : (i64) -> !llvm.ptr<i8>
    %479 = llvm.bitcast %478 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %480 = llvm.ptrtoint %479 : !llvm.ptr<i32> to i64
    %481 = llvm.mlir.constant(1 : index) : i64
    %482 = llvm.sub %476, %481  : i64
    %483 = llvm.add %480, %482  : i64
    %484 = llvm.urem %483, %476  : i64
    %485 = llvm.sub %483, %484  : i64
    %486 = llvm.inttoptr %485 : i64 to !llvm.ptr<i32>
    %487 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %488 = llvm.insertvalue %479, %487[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %489 = llvm.insertvalue %486, %488[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.mlir.constant(0 : index) : i64
    %491 = llvm.insertvalue %490, %489[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %492 = llvm.insertvalue %468, %491[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.insertvalue %469, %492[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.insertvalue %470, %493[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %495 = llvm.insertvalue %471, %494[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %496 = llvm.insertvalue %469, %495[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.insertvalue %470, %496[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.insertvalue %471, %497[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.insertvalue %472, %498[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %500 = llvm.mlir.constant(0 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    %502 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%500 : i64)
  ^bb64(%503: i64):  // 2 preds: ^bb63, ^bb74
    %504 = llvm.icmp "slt" %503, %501 : i64
    llvm.cond_br %504, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %505 = llvm.mlir.constant(0 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%505 : i64)
  ^bb66(%508: i64):  // 2 preds: ^bb65, ^bb73
    %509 = llvm.icmp "slt" %508, %506 : i64
    llvm.cond_br %509, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %510 = llvm.mlir.constant(0 : index) : i64
    %511 = llvm.mlir.constant(1 : index) : i64
    %512 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%510 : i64)
  ^bb68(%513: i64):  // 2 preds: ^bb67, ^bb72
    %514 = llvm.icmp "slt" %513, %511 : i64
    llvm.cond_br %514, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %515 = llvm.mlir.constant(0 : index) : i64
    %516 = llvm.mlir.constant(1 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%515 : i64)
  ^bb70(%518: i64):  // 2 preds: ^bb69, ^bb71
    %519 = llvm.icmp "slt" %518, %516 : i64
    llvm.cond_br %519, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %520 = llvm.extractvalue %216[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %521 = llvm.add %16, %16  : i64
    %522 = llvm.add %521, %16  : i64
    %523 = llvm.add %522, %16  : i64
    %524 = llvm.getelementptr %520[%523] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %525 = llvm.load %524 : !llvm.ptr<i32>
    %526 = llvm.extractvalue %499[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %527 = llvm.add %503, %508  : i64
    %528 = llvm.add %527, %513  : i64
    %529 = llvm.add %528, %518  : i64
    %530 = llvm.getelementptr %526[%529] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %525, %530 : !llvm.ptr<i32>
    %531 = llvm.add %518, %517  : i64
    llvm.br ^bb70(%531 : i64)
  ^bb72:  // pred: ^bb70
    %532 = llvm.add %513, %512  : i64
    llvm.br ^bb68(%532 : i64)
  ^bb73:  // pred: ^bb68
    %533 = llvm.add %508, %507  : i64
    llvm.br ^bb66(%533 : i64)
  ^bb74:  // pred: ^bb66
    %534 = llvm.add %503, %502  : i64
    llvm.br ^bb64(%534 : i64)
  ^bb75:  // pred: ^bb64
    %535 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %536 = llvm.insertvalue %284, %535[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %537 = llvm.insertvalue %499, %536[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %537 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v1_0", "v0_0"]} {
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
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %52 = llvm.extractvalue %51[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %53 = llvm.extractvalue %51[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %54 = llvm.mlir.constant(2 : i64) : i64
    %55 = llvm.mlir.constant(16 : i64) : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %58 = llvm.mlir.constant(4 : i64) : i64
    %59 = llvm.call @omTensorCreateUntyped(%58) : (i64) -> !llvm.ptr<i8>
    %60 = llvm.mlir.constant(1 : i64) : i64
    %61 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %63 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.bitcast %63 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%59, %60, %62, %64) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %65 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%59, %65) : (!llvm.ptr<i8>, i64) -> ()
    %66 = llvm.call @omTensorGetShape(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %67 = llvm.call @omTensorGetStrides(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.mlir.constant(0 : i64) : i64
    %69 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %66[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.getelementptr %67[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %66[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.getelementptr %67[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %66[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %67[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.mlir.constant(3 : i64) : i64
    %84 = llvm.extractvalue %52[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %66[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.extractvalue %52[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.getelementptr %67[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.getelementptr %57[%88] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %59, %89 : !llvm.ptr<ptr<i8>>
    %90 = llvm.mlir.constant(4 : i64) : i64
    %91 = llvm.call @omTensorCreateUntyped(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.mlir.constant(1 : i64) : i64
    %93 = llvm.extractvalue %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.bitcast %93 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %95 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%91, %92, %94, %96) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %97 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%91, %97) : (!llvm.ptr<i8>, i64) -> ()
    %98 = llvm.call @omTensorGetShape(%91) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %99 = llvm.call @omTensorGetStrides(%91) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %100 = llvm.mlir.constant(0 : i64) : i64
    %101 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %98[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %99[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %98[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %99[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(2 : i64) : i64
    %111 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %98[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %99[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(3 : i64) : i64
    %116 = llvm.extractvalue %53[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %98[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.extractvalue %53[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %99[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.mlir.constant(1 : i64) : i64
    %121 = llvm.getelementptr %57[%120] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %91, %121 : !llvm.ptr<ptr<i8>>
    %122 = llvm.call @omTensorListCreate(%57, %54, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %122 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

