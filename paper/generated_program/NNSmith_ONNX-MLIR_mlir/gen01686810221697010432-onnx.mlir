module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<5> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v3_0", "v0_0", "v1_0"]} {
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
    %13 = llvm.mlir.constant(-2147483648 : i32) : i32
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %17 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.insertvalue %16, %17[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.constant(4 : index) : i64
    %23 = llvm.insertvalue %22, %21[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.insertvalue %24, %23[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %27 = llvm.bitcast %26 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %28 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %29 = llvm.insertvalue %27, %28[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %35 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %36 = llvm.insertvalue %34, %35[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %34, %36[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(4 : index) : i64
    %41 = llvm.insertvalue %40, %39[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.insertvalue %42, %41[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %45 = llvm.bitcast %44 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %47 = llvm.insertvalue %45, %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.insertvalue %65, %64[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.mlir.constant(2 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(2 : index) : i64
    %73 = llvm.mlir.null : !llvm.ptr<i32>
    %74 = llvm.getelementptr %73[%72] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %75 = llvm.ptrtoint %74 : !llvm.ptr<i32> to i64
    %76 = llvm.mlir.constant(16 : index) : i64
    %77 = llvm.add %75, %76  : i64
    %78 = llvm.call @malloc(%77) : (i64) -> !llvm.ptr<i8>
    %79 = llvm.bitcast %78 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %80 = llvm.ptrtoint %79 : !llvm.ptr<i32> to i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.sub %76, %81  : i64
    %83 = llvm.add %80, %82  : i64
    %84 = llvm.urem %83, %76  : i64
    %85 = llvm.sub %83, %84  : i64
    %86 = llvm.inttoptr %85 : i64 to !llvm.ptr<i32>
    %87 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %88 = llvm.insertvalue %79, %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.insertvalue %86, %88[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.insertvalue %90, %89[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.insertvalue %67, %91[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %68, %92[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %69, %93[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %70, %94[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %68, %95[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %69, %96[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %70, %97[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %71, %98[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%100 : i64)
  ^bb1(%103: i64):  // 2 preds: ^bb0, ^bb11
    %104 = llvm.icmp "slt" %103, %101 : i64
    llvm.cond_br %104, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%105 : i64)
  ^bb3(%108: i64):  // 2 preds: ^bb2, ^bb10
    %109 = llvm.icmp "slt" %108, %106 : i64
    llvm.cond_br %109, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%110 : i64)
  ^bb5(%113: i64):  // 2 preds: ^bb4, ^bb9
    %114 = llvm.icmp "slt" %113, %111 : i64
    llvm.cond_br %114, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%115 : i64)
  ^bb7(%118: i64):  // 2 preds: ^bb6, ^bb8
    %119 = llvm.icmp "slt" %118, %116 : i64
    llvm.cond_br %119, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %120 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.add %103, %108  : i64
    %122 = llvm.add %121, %113  : i64
    %123 = llvm.add %122, %118  : i64
    %124 = llvm.getelementptr %120[%123] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %125 = llvm.load %124 : !llvm.ptr<i32>
    %126 = llvm.extractvalue %99[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(2 : index) : i64
    %128 = llvm.mul %103, %127  : i64
    %129 = llvm.add %128, %108  : i64
    %130 = llvm.add %129, %113  : i64
    %131 = llvm.add %130, %118  : i64
    %132 = llvm.getelementptr %126[%131] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %125, %132 : !llvm.ptr<i32>
    %133 = llvm.add %118, %117  : i64
    llvm.br ^bb7(%133 : i64)
  ^bb9:  // pred: ^bb7
    %134 = llvm.add %113, %112  : i64
    llvm.br ^bb5(%134 : i64)
  ^bb10:  // pred: ^bb5
    %135 = llvm.add %108, %107  : i64
    llvm.br ^bb3(%135 : i64)
  ^bb11:  // pred: ^bb3
    %136 = llvm.add %103, %102  : i64
    llvm.br ^bb1(%136 : i64)
  ^bb12:  // pred: ^bb1
    %137 = llvm.mlir.constant(0 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%137 : i64)
  ^bb13(%140: i64):  // 2 preds: ^bb12, ^bb23
    %141 = llvm.icmp "slt" %140, %138 : i64
    llvm.cond_br %141, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%142 : i64)
  ^bb15(%145: i64):  // 2 preds: ^bb14, ^bb22
    %146 = llvm.icmp "slt" %145, %143 : i64
    llvm.cond_br %146, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %147 = llvm.mlir.constant(0 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%147 : i64)
  ^bb17(%150: i64):  // 2 preds: ^bb16, ^bb21
    %151 = llvm.icmp "slt" %150, %148 : i64
    llvm.cond_br %151, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%152 : i64)
  ^bb19(%155: i64):  // 2 preds: ^bb18, ^bb20
    %156 = llvm.icmp "slt" %155, %153 : i64
    llvm.cond_br %156, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.add %145, %157  : i64
    %159 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.add %140, %145  : i64
    %161 = llvm.add %160, %150  : i64
    %162 = llvm.add %161, %155  : i64
    %163 = llvm.getelementptr %159[%162] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %164 = llvm.load %163 : !llvm.ptr<i32>
    %165 = llvm.extractvalue %99[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mul %140, %166  : i64
    %168 = llvm.add %167, %158  : i64
    %169 = llvm.add %168, %150  : i64
    %170 = llvm.add %169, %155  : i64
    %171 = llvm.getelementptr %165[%170] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %164, %171 : !llvm.ptr<i32>
    %172 = llvm.add %155, %154  : i64
    llvm.br ^bb19(%172 : i64)
  ^bb21:  // pred: ^bb19
    %173 = llvm.add %150, %149  : i64
    llvm.br ^bb17(%173 : i64)
  ^bb22:  // pred: ^bb17
    %174 = llvm.add %145, %144  : i64
    llvm.br ^bb15(%174 : i64)
  ^bb23:  // pred: ^bb15
    %175 = llvm.add %140, %139  : i64
    llvm.br ^bb13(%175 : i64)
  ^bb24:  // pred: ^bb13
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(2 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(2 : index) : i64
    %182 = llvm.mlir.null : !llvm.ptr<i1>
    %183 = llvm.getelementptr %182[%181] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %184 = llvm.ptrtoint %183 : !llvm.ptr<i1> to i64
    %185 = llvm.mlir.constant(16 : index) : i64
    %186 = llvm.add %184, %185  : i64
    %187 = llvm.call @malloc(%186) : (i64) -> !llvm.ptr<i8>
    %188 = llvm.bitcast %187 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %189 = llvm.ptrtoint %188 : !llvm.ptr<i1> to i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.sub %185, %190  : i64
    %192 = llvm.add %189, %191  : i64
    %193 = llvm.urem %192, %185  : i64
    %194 = llvm.sub %192, %193  : i64
    %195 = llvm.inttoptr %194 : i64 to !llvm.ptr<i1>
    %196 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %197 = llvm.insertvalue %188, %196[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %195, %197[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.mlir.constant(0 : index) : i64
    %200 = llvm.insertvalue %199, %198[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.insertvalue %176, %200[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.insertvalue %177, %201[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.insertvalue %178, %202[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.insertvalue %179, %203[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.insertvalue %177, %204[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.insertvalue %178, %205[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.insertvalue %179, %206[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.insertvalue %180, %207[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%209 : i64)
  ^bb25(%212: i64):  // 2 preds: ^bb24, ^bb35
    %213 = llvm.icmp "slt" %212, %210 : i64
    llvm.cond_br %213, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.mlir.constant(2 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%214 : i64)
  ^bb27(%217: i64):  // 2 preds: ^bb26, ^bb34
    %218 = llvm.icmp "slt" %217, %215 : i64
    llvm.cond_br %218, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%219 : i64)
  ^bb29(%222: i64):  // 2 preds: ^bb28, ^bb33
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%224 : i64)
  ^bb31(%227: i64):  // 2 preds: ^bb30, ^bb32
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %229 = llvm.extractvalue %99[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.mlir.constant(2 : index) : i64
    %231 = llvm.mul %212, %230  : i64
    %232 = llvm.add %231, %217  : i64
    %233 = llvm.add %232, %222  : i64
    %234 = llvm.add %233, %227  : i64
    %235 = llvm.getelementptr %229[%234] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %236 = llvm.load %235 : !llvm.ptr<i32>
    %237 = llvm.extractvalue %99[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.mul %212, %238  : i64
    %240 = llvm.add %239, %217  : i64
    %241 = llvm.add %240, %222  : i64
    %242 = llvm.add %241, %227  : i64
    %243 = llvm.getelementptr %237[%242] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %244 = llvm.load %243 : !llvm.ptr<i32>
    %245 = llvm.icmp "sgt" %236, %244 : i32
    %246 = llvm.extractvalue %208[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.mlir.constant(2 : index) : i64
    %248 = llvm.mul %212, %247  : i64
    %249 = llvm.add %248, %217  : i64
    %250 = llvm.add %249, %222  : i64
    %251 = llvm.add %250, %227  : i64
    %252 = llvm.getelementptr %246[%251] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %245, %252 : !llvm.ptr<i1>
    %253 = llvm.add %227, %226  : i64
    llvm.br ^bb31(%253 : i64)
  ^bb33:  // pred: ^bb31
    %254 = llvm.add %222, %221  : i64
    llvm.br ^bb29(%254 : i64)
  ^bb34:  // pred: ^bb29
    %255 = llvm.add %217, %216  : i64
    llvm.br ^bb27(%255 : i64)
  ^bb35:  // pred: ^bb27
    %256 = llvm.add %212, %211  : i64
    llvm.br ^bb25(%256 : i64)
  ^bb36:  // pred: ^bb25
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.null : !llvm.ptr<i32>
    %262 = llvm.getelementptr %261[%257] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %263 = llvm.ptrtoint %262 : !llvm.ptr<i32> to i64
    %264 = llvm.mlir.constant(16 : index) : i64
    %265 = llvm.add %263, %264  : i64
    %266 = llvm.call @malloc(%265) : (i64) -> !llvm.ptr<i8>
    %267 = llvm.bitcast %266 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %268 = llvm.ptrtoint %267 : !llvm.ptr<i32> to i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.sub %264, %269  : i64
    %271 = llvm.add %268, %270  : i64
    %272 = llvm.urem %271, %264  : i64
    %273 = llvm.sub %271, %272  : i64
    %274 = llvm.inttoptr %273 : i64 to !llvm.ptr<i32>
    %275 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %276 = llvm.insertvalue %267, %275[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %277 = llvm.insertvalue %274, %276[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.insertvalue %278, %277[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %280 = llvm.insertvalue %257, %279[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %281 = llvm.insertvalue %258, %280[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %282 = llvm.insertvalue %259, %281[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %283 = llvm.insertvalue %258, %282[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %284 = llvm.insertvalue %259, %283[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %285 = llvm.insertvalue %260, %284[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %286 = llvm.mlir.constant(0 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%286 : i64)
  ^bb37(%289: i64):  // 2 preds: ^bb36, ^bb44
    %290 = llvm.icmp "slt" %289, %287 : i64
    llvm.cond_br %290, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %291 = llvm.mlir.constant(0 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%291 : i64)
  ^bb39(%294: i64):  // 2 preds: ^bb38, ^bb43
    %295 = llvm.icmp "slt" %294, %292 : i64
    llvm.cond_br %295, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %296 = llvm.mlir.constant(0 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%296 : i64)
  ^bb41(%299: i64):  // 2 preds: ^bb40, ^bb42
    %300 = llvm.icmp "slt" %299, %297 : i64
    llvm.cond_br %300, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %301 = llvm.extractvalue %285[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %302 = llvm.add %289, %294  : i64
    %303 = llvm.add %302, %299  : i64
    %304 = llvm.getelementptr %301[%303] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %13, %304 : !llvm.ptr<i32>
    %305 = llvm.add %299, %298  : i64
    llvm.br ^bb41(%305 : i64)
  ^bb43:  // pred: ^bb41
    %306 = llvm.add %294, %293  : i64
    llvm.br ^bb39(%306 : i64)
  ^bb44:  // pred: ^bb39
    %307 = llvm.add %289, %288  : i64
    llvm.br ^bb37(%307 : i64)
  ^bb45:  // pred: ^bb37
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%308 : i64)
  ^bb46(%311: i64):  // 2 preds: ^bb45, ^bb56
    %312 = llvm.icmp "slt" %311, %309 : i64
    llvm.cond_br %312, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %313 = llvm.mlir.constant(0 : index) : i64
    %314 = llvm.mlir.constant(2 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%313 : i64)
  ^bb48(%316: i64):  // 2 preds: ^bb47, ^bb55
    %317 = llvm.icmp "slt" %316, %314 : i64
    llvm.cond_br %317, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %318 = llvm.mlir.constant(0 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%318 : i64)
  ^bb50(%321: i64):  // 2 preds: ^bb49, ^bb54
    %322 = llvm.icmp "slt" %321, %319 : i64
    llvm.cond_br %322, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%323 : i64)
  ^bb52(%326: i64):  // 2 preds: ^bb51, ^bb53
    %327 = llvm.icmp "slt" %326, %324 : i64
    llvm.cond_br %327, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %328 = llvm.extractvalue %99[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.mlir.constant(2 : index) : i64
    %330 = llvm.mul %311, %329  : i64
    %331 = llvm.add %330, %316  : i64
    %332 = llvm.add %331, %321  : i64
    %333 = llvm.add %332, %326  : i64
    %334 = llvm.getelementptr %328[%333] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %335 = llvm.load %334 : !llvm.ptr<i32>
    %336 = llvm.extractvalue %285[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %337 = llvm.add %311, %321  : i64
    %338 = llvm.add %337, %326  : i64
    %339 = llvm.getelementptr %336[%338] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %340 = llvm.load %339 : !llvm.ptr<i32>
    %341 = llvm.icmp "sgt" %340, %335 : i32
    %342 = llvm.select %341, %340, %335 : i1, i32
    %343 = llvm.extractvalue %285[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %344 = llvm.add %311, %321  : i64
    %345 = llvm.add %344, %326  : i64
    %346 = llvm.getelementptr %343[%345] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %342, %346 : !llvm.ptr<i32>
    %347 = llvm.add %326, %325  : i64
    llvm.br ^bb52(%347 : i64)
  ^bb54:  // pred: ^bb52
    %348 = llvm.add %321, %320  : i64
    llvm.br ^bb50(%348 : i64)
  ^bb55:  // pred: ^bb50
    %349 = llvm.add %316, %315  : i64
    llvm.br ^bb48(%349 : i64)
  ^bb56:  // pred: ^bb48
    %350 = llvm.add %311, %310  : i64
    llvm.br ^bb46(%350 : i64)
  ^bb57:  // pred: ^bb46
    %351 = llvm.mlir.constant(4 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.mlir.null : !llvm.ptr<i64>
    %354 = llvm.getelementptr %353[%351] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %355 = llvm.ptrtoint %354 : !llvm.ptr<i64> to i64
    %356 = llvm.mlir.constant(16 : index) : i64
    %357 = llvm.add %355, %356  : i64
    %358 = llvm.call @malloc(%357) : (i64) -> !llvm.ptr<i8>
    %359 = llvm.bitcast %358 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %360 = llvm.ptrtoint %359 : !llvm.ptr<i64> to i64
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.sub %356, %361  : i64
    %363 = llvm.add %360, %362  : i64
    %364 = llvm.urem %363, %356  : i64
    %365 = llvm.sub %363, %364  : i64
    %366 = llvm.inttoptr %365 : i64 to !llvm.ptr<i64>
    %367 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %368 = llvm.insertvalue %359, %367[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %369 = llvm.insertvalue %366, %368[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %370 = llvm.mlir.constant(0 : index) : i64
    %371 = llvm.insertvalue %370, %369[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %372 = llvm.insertvalue %351, %371[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %373 = llvm.insertvalue %352, %372[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %374 = llvm.mlir.constant(0 : index) : i64
    %375 = llvm.mlir.constant(4 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%374 : i64)
  ^bb58(%377: i64):  // 2 preds: ^bb57, ^bb59
    %378 = llvm.icmp "slt" %377, %375 : i64
    llvm.cond_br %378, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %379 = llvm.extractvalue %373[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %380 = llvm.getelementptr %379[%377] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %380 : !llvm.ptr<i64>
    %381 = llvm.add %377, %376  : i64
    llvm.br ^bb58(%381 : i64)
  ^bb60:  // pred: ^bb58
    %382 = llvm.mlir.constant(4 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.mlir.null : !llvm.ptr<i64>
    %385 = llvm.getelementptr %384[%382] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %386 = llvm.ptrtoint %385 : !llvm.ptr<i64> to i64
    %387 = llvm.mlir.constant(16 : index) : i64
    %388 = llvm.add %386, %387  : i64
    %389 = llvm.call @malloc(%388) : (i64) -> !llvm.ptr<i8>
    %390 = llvm.bitcast %389 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %391 = llvm.ptrtoint %390 : !llvm.ptr<i64> to i64
    %392 = llvm.mlir.constant(1 : index) : i64
    %393 = llvm.sub %387, %392  : i64
    %394 = llvm.add %391, %393  : i64
    %395 = llvm.urem %394, %387  : i64
    %396 = llvm.sub %394, %395  : i64
    %397 = llvm.inttoptr %396 : i64 to !llvm.ptr<i64>
    %398 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %399 = llvm.insertvalue %390, %398[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %400 = llvm.insertvalue %397, %399[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %401 = llvm.mlir.constant(0 : index) : i64
    %402 = llvm.insertvalue %401, %400[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %403 = llvm.insertvalue %382, %402[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %404 = llvm.insertvalue %383, %403[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.mlir.constant(4 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%405 : i64)
  ^bb61(%408: i64):  // 2 preds: ^bb60, ^bb62
    %409 = llvm.icmp "slt" %408, %406 : i64
    llvm.cond_br %409, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %410 = llvm.extractvalue %373[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %411 = llvm.getelementptr %410[%408] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %412 = llvm.load %411 : !llvm.ptr<i64>
    %413 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %414 = llvm.load %413 : !llvm.ptr<i64>
    %415 = llvm.mul %412, %414  : i64
    %416 = llvm.extractvalue %404[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %417 = llvm.getelementptr %416[%408] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %415, %417 : !llvm.ptr<i64>
    %418 = llvm.add %408, %407  : i64
    llvm.br ^bb61(%418 : i64)
  ^bb63:  // pred: ^bb61
    %419 = llvm.mlir.constant(4 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.mlir.null : !llvm.ptr<i1>
    %422 = llvm.getelementptr %421[%419] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %423 = llvm.ptrtoint %422 : !llvm.ptr<i1> to i64
    %424 = llvm.mlir.constant(16 : index) : i64
    %425 = llvm.add %423, %424  : i64
    %426 = llvm.call @malloc(%425) : (i64) -> !llvm.ptr<i8>
    %427 = llvm.bitcast %426 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %428 = llvm.ptrtoint %427 : !llvm.ptr<i1> to i64
    %429 = llvm.mlir.constant(1 : index) : i64
    %430 = llvm.sub %424, %429  : i64
    %431 = llvm.add %428, %430  : i64
    %432 = llvm.urem %431, %424  : i64
    %433 = llvm.sub %431, %432  : i64
    %434 = llvm.inttoptr %433 : i64 to !llvm.ptr<i1>
    %435 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %436 = llvm.insertvalue %427, %435[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %437 = llvm.insertvalue %434, %436[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %438 = llvm.mlir.constant(0 : index) : i64
    %439 = llvm.insertvalue %438, %437[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %440 = llvm.insertvalue %419, %439[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %441 = llvm.insertvalue %420, %440[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %442 = llvm.mlir.constant(0 : index) : i64
    %443 = llvm.mlir.constant(4 : index) : i64
    %444 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%442 : i64)
  ^bb64(%445: i64):  // 2 preds: ^bb63, ^bb65
    %446 = llvm.icmp "slt" %445, %443 : i64
    llvm.cond_br %446, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %447 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %448 = llvm.getelementptr %447[%445] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %449 = llvm.load %448 : !llvm.ptr<i64>
    %450 = llvm.extractvalue %404[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %451 = llvm.getelementptr %450[%445] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %452 = llvm.load %451 : !llvm.ptr<i64>
    %453 = llvm.icmp "eq" %449, %452 : i64
    %454 = llvm.extractvalue %441[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %455 = llvm.getelementptr %454[%445] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %453, %455 : !llvm.ptr<i1>
    %456 = llvm.add %445, %444  : i64
    llvm.br ^bb64(%456 : i64)
  ^bb66:  // pred: ^bb64
    %457 = llvm.mlir.constant(4 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    %459 = llvm.mlir.null : !llvm.ptr<i64>
    %460 = llvm.getelementptr %459[%457] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %461 = llvm.ptrtoint %460 : !llvm.ptr<i64> to i64
    %462 = llvm.mlir.constant(16 : index) : i64
    %463 = llvm.add %461, %462  : i64
    %464 = llvm.call @malloc(%463) : (i64) -> !llvm.ptr<i8>
    %465 = llvm.bitcast %464 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %466 = llvm.ptrtoint %465 : !llvm.ptr<i64> to i64
    %467 = llvm.mlir.constant(1 : index) : i64
    %468 = llvm.sub %462, %467  : i64
    %469 = llvm.add %466, %468  : i64
    %470 = llvm.urem %469, %462  : i64
    %471 = llvm.sub %469, %470  : i64
    %472 = llvm.inttoptr %471 : i64 to !llvm.ptr<i64>
    %473 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %474 = llvm.insertvalue %465, %473[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %475 = llvm.insertvalue %472, %474[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %476 = llvm.mlir.constant(0 : index) : i64
    %477 = llvm.insertvalue %476, %475[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %478 = llvm.insertvalue %457, %477[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %479 = llvm.insertvalue %458, %478[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %480 = llvm.mlir.constant(0 : index) : i64
    %481 = llvm.mlir.constant(4 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%480 : i64)
  ^bb67(%483: i64):  // 2 preds: ^bb66, ^bb68
    %484 = llvm.icmp "slt" %483, %481 : i64
    llvm.cond_br %484, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %485 = llvm.extractvalue %441[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %486 = llvm.getelementptr %485[%483] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %487 = llvm.load %486 : !llvm.ptr<i1>
    %488 = llvm.extractvalue %373[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %489 = llvm.getelementptr %488[%483] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %490 = llvm.load %489 : !llvm.ptr<i64>
    %491 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %492 = llvm.getelementptr %491[%483] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %493 = llvm.load %492 : !llvm.ptr<i64>
    %494 = llvm.select %487, %490, %493 : i1, i64
    %495 = llvm.extractvalue %479[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %496 = llvm.getelementptr %495[%483] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %494, %496 : !llvm.ptr<i64>
    %497 = llvm.add %483, %482  : i64
    llvm.br ^bb67(%497 : i64)
  ^bb69:  // pred: ^bb67
    %498 = llvm.mlir.constant(1 : index) : i64
    %499 = llvm.mlir.constant(1 : index) : i64
    %500 = llvm.mlir.constant(1 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    %502 = llvm.mlir.constant(1 : index) : i64
    %503 = llvm.mlir.null : !llvm.ptr<i32>
    %504 = llvm.getelementptr %503[%498] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %505 = llvm.ptrtoint %504 : !llvm.ptr<i32> to i64
    %506 = llvm.mlir.constant(16 : index) : i64
    %507 = llvm.add %505, %506  : i64
    %508 = llvm.call @malloc(%507) : (i64) -> !llvm.ptr<i8>
    %509 = llvm.bitcast %508 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %510 = llvm.ptrtoint %509 : !llvm.ptr<i32> to i64
    %511 = llvm.mlir.constant(1 : index) : i64
    %512 = llvm.sub %506, %511  : i64
    %513 = llvm.add %510, %512  : i64
    %514 = llvm.urem %513, %506  : i64
    %515 = llvm.sub %513, %514  : i64
    %516 = llvm.inttoptr %515 : i64 to !llvm.ptr<i32>
    %517 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %518 = llvm.insertvalue %509, %517[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %519 = llvm.insertvalue %516, %518[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %520 = llvm.mlir.constant(0 : index) : i64
    %521 = llvm.insertvalue %520, %519[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.insertvalue %498, %521[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %523 = llvm.insertvalue %499, %522[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %524 = llvm.insertvalue %500, %523[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %525 = llvm.insertvalue %501, %524[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %526 = llvm.insertvalue %499, %525[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %527 = llvm.insertvalue %500, %526[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %528 = llvm.insertvalue %501, %527[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %529 = llvm.insertvalue %502, %528[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %530 = llvm.mlir.constant(0 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%530 : i64)
  ^bb70(%533: i64):  // 2 preds: ^bb69, ^bb80
    %534 = llvm.icmp "slt" %533, %531 : i64
    llvm.cond_br %534, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %535 = llvm.mlir.constant(0 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    %537 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%535 : i64)
  ^bb72(%538: i64):  // 2 preds: ^bb71, ^bb79
    %539 = llvm.icmp "slt" %538, %536 : i64
    llvm.cond_br %539, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %540 = llvm.mlir.constant(0 : index) : i64
    %541 = llvm.mlir.constant(1 : index) : i64
    %542 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%540 : i64)
  ^bb74(%543: i64):  // 2 preds: ^bb73, ^bb78
    %544 = llvm.icmp "slt" %543, %541 : i64
    llvm.cond_br %544, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %545 = llvm.mlir.constant(0 : index) : i64
    %546 = llvm.mlir.constant(1 : index) : i64
    %547 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%545 : i64)
  ^bb76(%548: i64):  // 2 preds: ^bb75, ^bb77
    %549 = llvm.icmp "slt" %548, %546 : i64
    llvm.cond_br %549, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %550 = llvm.extractvalue %285[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %551 = llvm.add %14, %14  : i64
    %552 = llvm.add %551, %14  : i64
    %553 = llvm.getelementptr %550[%552] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %554 = llvm.load %553 : !llvm.ptr<i32>
    %555 = llvm.extractvalue %529[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %556 = llvm.add %533, %538  : i64
    %557 = llvm.add %556, %543  : i64
    %558 = llvm.add %557, %548  : i64
    %559 = llvm.getelementptr %555[%558] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %554, %559 : !llvm.ptr<i32>
    %560 = llvm.add %548, %547  : i64
    llvm.br ^bb76(%560 : i64)
  ^bb78:  // pred: ^bb76
    %561 = llvm.add %543, %542  : i64
    llvm.br ^bb74(%561 : i64)
  ^bb79:  // pred: ^bb74
    %562 = llvm.add %538, %537  : i64
    llvm.br ^bb72(%562 : i64)
  ^bb80:  // pred: ^bb72
    %563 = llvm.add %533, %532  : i64
    llvm.br ^bb70(%563 : i64)
  ^bb81:  // pred: ^bb70
    %564 = llvm.mlir.constant(1 : index) : i64
    %565 = llvm.mlir.constant(2 : index) : i64
    %566 = llvm.mlir.constant(1 : index) : i64
    %567 = llvm.mlir.constant(1 : index) : i64
    %568 = llvm.mlir.constant(1 : index) : i64
    %569 = llvm.mlir.constant(2 : index) : i64
    %570 = llvm.mlir.null : !llvm.ptr<i32>
    %571 = llvm.getelementptr %570[%569] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %572 = llvm.ptrtoint %571 : !llvm.ptr<i32> to i64
    %573 = llvm.mlir.constant(16 : index) : i64
    %574 = llvm.add %572, %573  : i64
    %575 = llvm.call @malloc(%574) : (i64) -> !llvm.ptr<i8>
    %576 = llvm.bitcast %575 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %577 = llvm.ptrtoint %576 : !llvm.ptr<i32> to i64
    %578 = llvm.mlir.constant(1 : index) : i64
    %579 = llvm.sub %573, %578  : i64
    %580 = llvm.add %577, %579  : i64
    %581 = llvm.urem %580, %573  : i64
    %582 = llvm.sub %580, %581  : i64
    %583 = llvm.inttoptr %582 : i64 to !llvm.ptr<i32>
    %584 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %585 = llvm.insertvalue %576, %584[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %586 = llvm.insertvalue %583, %585[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %587 = llvm.mlir.constant(0 : index) : i64
    %588 = llvm.insertvalue %587, %586[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %589 = llvm.insertvalue %564, %588[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %590 = llvm.insertvalue %565, %589[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %591 = llvm.insertvalue %566, %590[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %592 = llvm.insertvalue %567, %591[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %593 = llvm.insertvalue %565, %592[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %594 = llvm.insertvalue %566, %593[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %595 = llvm.insertvalue %567, %594[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %596 = llvm.insertvalue %568, %595[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %597 = llvm.mlir.constant(0 : index) : i64
    %598 = llvm.mlir.constant(1 : index) : i64
    %599 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%597 : i64)
  ^bb82(%600: i64):  // 2 preds: ^bb81, ^bb92
    %601 = llvm.icmp "slt" %600, %598 : i64
    llvm.cond_br %601, ^bb83, ^bb93
  ^bb83:  // pred: ^bb82
    %602 = llvm.mlir.constant(0 : index) : i64
    %603 = llvm.mlir.constant(2 : index) : i64
    %604 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb84(%602 : i64)
  ^bb84(%605: i64):  // 2 preds: ^bb83, ^bb91
    %606 = llvm.icmp "slt" %605, %603 : i64
    llvm.cond_br %606, ^bb85, ^bb92
  ^bb85:  // pred: ^bb84
    %607 = llvm.mlir.constant(0 : index) : i64
    %608 = llvm.mlir.constant(1 : index) : i64
    %609 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb86(%607 : i64)
  ^bb86(%610: i64):  // 2 preds: ^bb85, ^bb90
    %611 = llvm.icmp "slt" %610, %608 : i64
    llvm.cond_br %611, ^bb87, ^bb91
  ^bb87:  // pred: ^bb86
    %612 = llvm.mlir.constant(0 : index) : i64
    %613 = llvm.mlir.constant(1 : index) : i64
    %614 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%612 : i64)
  ^bb88(%615: i64):  // 2 preds: ^bb87, ^bb89
    %616 = llvm.icmp "slt" %615, %613 : i64
    llvm.cond_br %616, ^bb89, ^bb90
  ^bb89:  // pred: ^bb88
    %617 = llvm.extractvalue %99[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %618 = llvm.mlir.constant(2 : index) : i64
    %619 = llvm.mul %600, %618  : i64
    %620 = llvm.add %619, %605  : i64
    %621 = llvm.add %620, %610  : i64
    %622 = llvm.add %621, %615  : i64
    %623 = llvm.getelementptr %617[%622] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %624 = llvm.load %623 : !llvm.ptr<i32>
    %625 = llvm.extractvalue %99[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %626 = llvm.mlir.constant(2 : index) : i64
    %627 = llvm.mul %600, %626  : i64
    %628 = llvm.add %627, %605  : i64
    %629 = llvm.add %628, %610  : i64
    %630 = llvm.add %629, %615  : i64
    %631 = llvm.getelementptr %625[%630] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %632 = llvm.load %631 : !llvm.ptr<i32>
    %633 = llvm.icmp "slt" %624, %632 : i32
    %634 = llvm.select %633, %624, %632 : i1, i32
    %635 = llvm.extractvalue %596[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %636 = llvm.mlir.constant(2 : index) : i64
    %637 = llvm.mul %600, %636  : i64
    %638 = llvm.add %637, %605  : i64
    %639 = llvm.add %638, %610  : i64
    %640 = llvm.add %639, %615  : i64
    %641 = llvm.getelementptr %635[%640] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %634, %641 : !llvm.ptr<i32>
    %642 = llvm.add %615, %614  : i64
    llvm.br ^bb88(%642 : i64)
  ^bb90:  // pred: ^bb88
    %643 = llvm.add %610, %609  : i64
    llvm.br ^bb86(%643 : i64)
  ^bb91:  // pred: ^bb86
    %644 = llvm.add %605, %604  : i64
    llvm.br ^bb84(%644 : i64)
  ^bb92:  // pred: ^bb84
    %645 = llvm.add %600, %599  : i64
    llvm.br ^bb82(%645 : i64)
  ^bb93:  // pred: ^bb82
    %646 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %647 = llvm.insertvalue %208, %646[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %648 = llvm.insertvalue %529, %647[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %649 = llvm.insertvalue %596, %648[2] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %649 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v3_0", "v0_0", "v1_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %61[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %51[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(4 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(3 : i64) : i64
    %110 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %92[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<210 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<210 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

