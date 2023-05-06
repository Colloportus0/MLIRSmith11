module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<6> : tensor<1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_4(dense<6> : tensor<1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x i32>>
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i1>, %arg1: !llvm.ptr<i1>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(1 : i64) : i64
    %13 = llvm.mlir.constant(0 : i32) : i32
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %17 = llvm.bitcast %16 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(4 : index) : i64
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
    %34 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.insertvalue %35, %36[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.insertvalue %41, %40[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x array<1 x i32>>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<1 x array<1 x i32>>> to !llvm.ptr<i32>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.insertvalue %46, %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.insertvalue %50, %49[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i32>>
    %61 = llvm.bitcast %60 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %62 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %63 = llvm.insertvalue %61, %62[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.insertvalue %61, %63[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(2 : index) : i64
    %74 = llvm.mlir.constant(2 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(4 : index) : i64
    %77 = llvm.mlir.constant(4 : index) : i64
    %78 = llvm.mlir.constant(4 : index) : i64
    %79 = llvm.mlir.null : !llvm.ptr<i32>
    %80 = llvm.getelementptr %79[%78] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %98 = llvm.insertvalue %71, %97[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %72, %98[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %73, %99[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %74, %100[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %77, %101[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %76, %102[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %74, %103[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %75, %104[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %117 = llvm.mlir.constant(2 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%116 : i64)
  ^bb5(%119: i64):  // 2 preds: ^bb4, ^bb9
    %120 = llvm.icmp "slt" %119, %117 : i64
    llvm.cond_br %120, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %121 = llvm.mlir.constant(0 : index) : i64
    %122 = llvm.mlir.constant(2 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%121 : i64)
  ^bb7(%124: i64):  // 2 preds: ^bb6, ^bb8
    %125 = llvm.icmp "slt" %124, %122 : i64
    llvm.cond_br %125, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %126 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(4 : index) : i64
    %128 = llvm.mul %109, %127  : i64
    %129 = llvm.mlir.constant(4 : index) : i64
    %130 = llvm.mul %114, %129  : i64
    %131 = llvm.add %128, %130  : i64
    %132 = llvm.mlir.constant(2 : index) : i64
    %133 = llvm.mul %119, %132  : i64
    %134 = llvm.add %131, %133  : i64
    %135 = llvm.add %134, %124  : i64
    %136 = llvm.getelementptr %126[%135] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %137 = llvm.load %136 : !llvm.ptr<i1>
    %138 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %139 = llvm.getelementptr %138[%14] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %140 = llvm.load %139 : !llvm.ptr<i32>
    %141 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %142 = llvm.add %14, %14  : i64
    %143 = llvm.getelementptr %141[%142] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %144 = llvm.load %143 : !llvm.ptr<i32>
    %145 = llvm.select %137, %140, %144 : i1, i32
    %146 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.mlir.constant(4 : index) : i64
    %148 = llvm.mul %109, %147  : i64
    %149 = llvm.mlir.constant(4 : index) : i64
    %150 = llvm.mul %114, %149  : i64
    %151 = llvm.add %148, %150  : i64
    %152 = llvm.mlir.constant(2 : index) : i64
    %153 = llvm.mul %119, %152  : i64
    %154 = llvm.add %151, %153  : i64
    %155 = llvm.add %154, %124  : i64
    %156 = llvm.getelementptr %146[%155] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %145, %156 : !llvm.ptr<i32>
    %157 = llvm.add %124, %123  : i64
    llvm.br ^bb7(%157 : i64)
  ^bb9:  // pred: ^bb7
    %158 = llvm.add %119, %118  : i64
    llvm.br ^bb5(%158 : i64)
  ^bb10:  // pred: ^bb5
    %159 = llvm.add %114, %113  : i64
    llvm.br ^bb3(%159 : i64)
  ^bb11:  // pred: ^bb3
    %160 = llvm.add %109, %108  : i64
    llvm.br ^bb1(%160 : i64)
  ^bb12:  // pred: ^bb1
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.constant(2 : index) : i64
    %164 = llvm.mlir.constant(2 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(4 : index) : i64
    %167 = llvm.mlir.constant(4 : index) : i64
    %168 = llvm.mlir.constant(4 : index) : i64
    %169 = llvm.mlir.null : !llvm.ptr<i1>
    %170 = llvm.getelementptr %169[%168] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %171 = llvm.ptrtoint %170 : !llvm.ptr<i1> to i64
    %172 = llvm.mlir.constant(16 : index) : i64
    %173 = llvm.add %171, %172  : i64
    %174 = llvm.call @malloc(%173) : (i64) -> !llvm.ptr<i8>
    %175 = llvm.bitcast %174 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %176 = llvm.ptrtoint %175 : !llvm.ptr<i1> to i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.sub %172, %177  : i64
    %179 = llvm.add %176, %178  : i64
    %180 = llvm.urem %179, %172  : i64
    %181 = llvm.sub %179, %180  : i64
    %182 = llvm.inttoptr %181 : i64 to !llvm.ptr<i1>
    %183 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %184 = llvm.insertvalue %175, %183[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.insertvalue %182, %184[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.mlir.constant(0 : index) : i64
    %187 = llvm.insertvalue %186, %185[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.insertvalue %161, %187[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.insertvalue %162, %188[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.insertvalue %163, %189[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %164, %190[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %167, %191[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %166, %192[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %164, %193[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %165, %194[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.mlir.constant(0 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%196 : i64)
  ^bb13(%199: i64):  // 2 preds: ^bb12, ^bb23
    %200 = llvm.icmp "slt" %199, %197 : i64
    llvm.cond_br %200, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%201 : i64)
  ^bb15(%204: i64):  // 2 preds: ^bb14, ^bb22
    %205 = llvm.icmp "slt" %204, %202 : i64
    llvm.cond_br %205, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %206 = llvm.mlir.constant(0 : index) : i64
    %207 = llvm.mlir.constant(2 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%206 : i64)
  ^bb17(%209: i64):  // 2 preds: ^bb16, ^bb21
    %210 = llvm.icmp "slt" %209, %207 : i64
    llvm.cond_br %210, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.mlir.constant(2 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%211 : i64)
  ^bb19(%214: i64):  // 2 preds: ^bb18, ^bb20
    %215 = llvm.icmp "slt" %214, %212 : i64
    llvm.cond_br %215, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %216 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.getelementptr %216[%14] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %218 = llvm.load %217 : !llvm.ptr<i32>
    %219 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.mlir.constant(4 : index) : i64
    %221 = llvm.mul %199, %220  : i64
    %222 = llvm.mlir.constant(4 : index) : i64
    %223 = llvm.mul %204, %222  : i64
    %224 = llvm.add %221, %223  : i64
    %225 = llvm.mlir.constant(2 : index) : i64
    %226 = llvm.mul %209, %225  : i64
    %227 = llvm.add %224, %226  : i64
    %228 = llvm.add %227, %214  : i64
    %229 = llvm.getelementptr %219[%228] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %230 = llvm.load %229 : !llvm.ptr<i32>
    %231 = llvm.icmp "sgt" %218, %230 : i32
    %232 = llvm.extractvalue %195[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.mlir.constant(4 : index) : i64
    %234 = llvm.mul %199, %233  : i64
    %235 = llvm.mlir.constant(4 : index) : i64
    %236 = llvm.mul %204, %235  : i64
    %237 = llvm.add %234, %236  : i64
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.mul %209, %238  : i64
    %240 = llvm.add %237, %239  : i64
    %241 = llvm.add %240, %214  : i64
    %242 = llvm.getelementptr %232[%241] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %231, %242 : !llvm.ptr<i1>
    %243 = llvm.add %214, %213  : i64
    llvm.br ^bb19(%243 : i64)
  ^bb21:  // pred: ^bb19
    %244 = llvm.add %209, %208  : i64
    llvm.br ^bb17(%244 : i64)
  ^bb22:  // pred: ^bb17
    %245 = llvm.add %204, %203  : i64
    llvm.br ^bb15(%245 : i64)
  ^bb23:  // pred: ^bb15
    %246 = llvm.add %199, %198  : i64
    llvm.br ^bb13(%246 : i64)
  ^bb24:  // pred: ^bb13
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.constant(2 : index) : i64
    %250 = llvm.mlir.constant(2 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.constant(4 : index) : i64
    %253 = llvm.mlir.constant(4 : index) : i64
    %254 = llvm.mlir.constant(4 : index) : i64
    %255 = llvm.mlir.null : !llvm.ptr<i32>
    %256 = llvm.getelementptr %255[%254] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %257 = llvm.ptrtoint %256 : !llvm.ptr<i32> to i64
    %258 = llvm.mlir.constant(16 : index) : i64
    %259 = llvm.add %257, %258  : i64
    %260 = llvm.call @malloc(%259) : (i64) -> !llvm.ptr<i8>
    %261 = llvm.bitcast %260 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %262 = llvm.ptrtoint %261 : !llvm.ptr<i32> to i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.sub %258, %263  : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.urem %265, %258  : i64
    %267 = llvm.sub %265, %266  : i64
    %268 = llvm.inttoptr %267 : i64 to !llvm.ptr<i32>
    %269 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %270 = llvm.insertvalue %261, %269[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.insertvalue %268, %270[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.insertvalue %272, %271[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %247, %273[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.insertvalue %248, %274[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %249, %275[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %250, %276[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %253, %277[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %252, %278[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.insertvalue %250, %279[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %251, %280[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.mlir.constant(0 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%282 : i64)
  ^bb25(%285: i64):  // 2 preds: ^bb24, ^bb35
    %286 = llvm.icmp "slt" %285, %283 : i64
    llvm.cond_br %286, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%287 : i64)
  ^bb27(%290: i64):  // 2 preds: ^bb26, ^bb34
    %291 = llvm.icmp "slt" %290, %288 : i64
    llvm.cond_br %291, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.mlir.constant(2 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%292 : i64)
  ^bb29(%295: i64):  // 2 preds: ^bb28, ^bb33
    %296 = llvm.icmp "slt" %295, %293 : i64
    llvm.cond_br %296, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %297 = llvm.mlir.constant(0 : index) : i64
    %298 = llvm.mlir.constant(2 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%297 : i64)
  ^bb31(%300: i64):  // 2 preds: ^bb30, ^bb32
    %301 = llvm.icmp "slt" %300, %298 : i64
    llvm.cond_br %301, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %302 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.mlir.constant(4 : index) : i64
    %304 = llvm.mul %285, %303  : i64
    %305 = llvm.mlir.constant(4 : index) : i64
    %306 = llvm.mul %290, %305  : i64
    %307 = llvm.add %304, %306  : i64
    %308 = llvm.mlir.constant(2 : index) : i64
    %309 = llvm.mul %295, %308  : i64
    %310 = llvm.add %307, %309  : i64
    %311 = llvm.add %310, %300  : i64
    %312 = llvm.getelementptr %302[%311] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %313 = llvm.load %312 : !llvm.ptr<i32>
    %314 = llvm.sub %13, %313  : i32
    %315 = llvm.extractvalue %281[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.mlir.constant(4 : index) : i64
    %317 = llvm.mul %285, %316  : i64
    %318 = llvm.mlir.constant(4 : index) : i64
    %319 = llvm.mul %290, %318  : i64
    %320 = llvm.add %317, %319  : i64
    %321 = llvm.mlir.constant(2 : index) : i64
    %322 = llvm.mul %295, %321  : i64
    %323 = llvm.add %320, %322  : i64
    %324 = llvm.add %323, %300  : i64
    %325 = llvm.getelementptr %315[%324] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %314, %325 : !llvm.ptr<i32>
    %326 = llvm.add %300, %299  : i64
    llvm.br ^bb31(%326 : i64)
  ^bb33:  // pred: ^bb31
    %327 = llvm.add %295, %294  : i64
    llvm.br ^bb29(%327 : i64)
  ^bb34:  // pred: ^bb29
    %328 = llvm.add %290, %289  : i64
    llvm.br ^bb27(%328 : i64)
  ^bb35:  // pred: ^bb27
    %329 = llvm.add %285, %284  : i64
    llvm.br ^bb25(%329 : i64)
  ^bb36:  // pred: ^bb25
    %330 = llvm.mlir.constant(4 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.mlir.null : !llvm.ptr<i64>
    %333 = llvm.getelementptr %332[%330] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %334 = llvm.ptrtoint %333 : !llvm.ptr<i64> to i64
    %335 = llvm.mlir.constant(16 : index) : i64
    %336 = llvm.add %334, %335  : i64
    %337 = llvm.call @malloc(%336) : (i64) -> !llvm.ptr<i8>
    %338 = llvm.bitcast %337 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %339 = llvm.ptrtoint %338 : !llvm.ptr<i64> to i64
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.sub %335, %340  : i64
    %342 = llvm.add %339, %341  : i64
    %343 = llvm.urem %342, %335  : i64
    %344 = llvm.sub %342, %343  : i64
    %345 = llvm.inttoptr %344 : i64 to !llvm.ptr<i64>
    %346 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %347 = llvm.insertvalue %338, %346[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %348 = llvm.insertvalue %345, %347[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %349 = llvm.mlir.constant(0 : index) : i64
    %350 = llvm.insertvalue %349, %348[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %351 = llvm.insertvalue %330, %350[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %352 = llvm.insertvalue %331, %351[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.mlir.constant(4 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%353 : i64)
  ^bb37(%356: i64):  // 2 preds: ^bb36, ^bb38
    %357 = llvm.icmp "slt" %356, %354 : i64
    llvm.cond_br %357, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %358 = llvm.extractvalue %352[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %359 = llvm.getelementptr %358[%356] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %359 : !llvm.ptr<i64>
    %360 = llvm.add %356, %355  : i64
    llvm.br ^bb37(%360 : i64)
  ^bb39:  // pred: ^bb37
    %361 = llvm.mlir.constant(4 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.mlir.null : !llvm.ptr<i64>
    %364 = llvm.getelementptr %363[%361] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %365 = llvm.ptrtoint %364 : !llvm.ptr<i64> to i64
    %366 = llvm.mlir.constant(16 : index) : i64
    %367 = llvm.add %365, %366  : i64
    %368 = llvm.call @malloc(%367) : (i64) -> !llvm.ptr<i8>
    %369 = llvm.bitcast %368 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %370 = llvm.ptrtoint %369 : !llvm.ptr<i64> to i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.sub %366, %371  : i64
    %373 = llvm.add %370, %372  : i64
    %374 = llvm.urem %373, %366  : i64
    %375 = llvm.sub %373, %374  : i64
    %376 = llvm.inttoptr %375 : i64 to !llvm.ptr<i64>
    %377 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %378 = llvm.insertvalue %369, %377[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %379 = llvm.insertvalue %376, %378[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %380 = llvm.mlir.constant(0 : index) : i64
    %381 = llvm.insertvalue %380, %379[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %382 = llvm.insertvalue %361, %381[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %383 = llvm.insertvalue %362, %382[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %384 = llvm.mlir.constant(0 : index) : i64
    %385 = llvm.mlir.constant(4 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%384 : i64)
  ^bb40(%387: i64):  // 2 preds: ^bb39, ^bb41
    %388 = llvm.icmp "slt" %387, %385 : i64
    llvm.cond_br %388, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %389 = llvm.extractvalue %352[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %390 = llvm.getelementptr %389[%387] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %391 = llvm.load %390 : !llvm.ptr<i64>
    %392 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %393 = llvm.load %392 : !llvm.ptr<i64>
    %394 = llvm.mul %391, %393  : i64
    %395 = llvm.extractvalue %383[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %396 = llvm.getelementptr %395[%387] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %394, %396 : !llvm.ptr<i64>
    %397 = llvm.add %387, %386  : i64
    llvm.br ^bb40(%397 : i64)
  ^bb42:  // pred: ^bb40
    %398 = llvm.mlir.constant(4 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    %400 = llvm.mlir.null : !llvm.ptr<i1>
    %401 = llvm.getelementptr %400[%398] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %402 = llvm.ptrtoint %401 : !llvm.ptr<i1> to i64
    %403 = llvm.mlir.constant(16 : index) : i64
    %404 = llvm.add %402, %403  : i64
    %405 = llvm.call @malloc(%404) : (i64) -> !llvm.ptr<i8>
    %406 = llvm.bitcast %405 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %407 = llvm.ptrtoint %406 : !llvm.ptr<i1> to i64
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.sub %403, %408  : i64
    %410 = llvm.add %407, %409  : i64
    %411 = llvm.urem %410, %403  : i64
    %412 = llvm.sub %410, %411  : i64
    %413 = llvm.inttoptr %412 : i64 to !llvm.ptr<i1>
    %414 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %415 = llvm.insertvalue %406, %414[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %416 = llvm.insertvalue %413, %415[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.insertvalue %417, %416[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %419 = llvm.insertvalue %398, %418[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %420 = llvm.insertvalue %399, %419[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %421 = llvm.mlir.constant(0 : index) : i64
    %422 = llvm.mlir.constant(4 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%421 : i64)
  ^bb43(%424: i64):  // 2 preds: ^bb42, ^bb44
    %425 = llvm.icmp "slt" %424, %422 : i64
    llvm.cond_br %425, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %426 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %427 = llvm.getelementptr %426[%424] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %428 = llvm.load %427 : !llvm.ptr<i64>
    %429 = llvm.extractvalue %383[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %430 = llvm.getelementptr %429[%424] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %431 = llvm.load %430 : !llvm.ptr<i64>
    %432 = llvm.icmp "eq" %428, %431 : i64
    %433 = llvm.extractvalue %420[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %434 = llvm.getelementptr %433[%424] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %432, %434 : !llvm.ptr<i1>
    %435 = llvm.add %424, %423  : i64
    llvm.br ^bb43(%435 : i64)
  ^bb45:  // pred: ^bb43
    %436 = llvm.mlir.constant(4 : index) : i64
    %437 = llvm.mlir.constant(1 : index) : i64
    %438 = llvm.mlir.null : !llvm.ptr<i64>
    %439 = llvm.getelementptr %438[%436] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %440 = llvm.ptrtoint %439 : !llvm.ptr<i64> to i64
    %441 = llvm.mlir.constant(16 : index) : i64
    %442 = llvm.add %440, %441  : i64
    %443 = llvm.call @malloc(%442) : (i64) -> !llvm.ptr<i8>
    %444 = llvm.bitcast %443 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %445 = llvm.ptrtoint %444 : !llvm.ptr<i64> to i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.sub %441, %446  : i64
    %448 = llvm.add %445, %447  : i64
    %449 = llvm.urem %448, %441  : i64
    %450 = llvm.sub %448, %449  : i64
    %451 = llvm.inttoptr %450 : i64 to !llvm.ptr<i64>
    %452 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %453 = llvm.insertvalue %444, %452[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %454 = llvm.insertvalue %451, %453[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.insertvalue %455, %454[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %457 = llvm.insertvalue %436, %456[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %458 = llvm.insertvalue %437, %457[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %459 = llvm.mlir.constant(0 : index) : i64
    %460 = llvm.mlir.constant(4 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%459 : i64)
  ^bb46(%462: i64):  // 2 preds: ^bb45, ^bb47
    %463 = llvm.icmp "slt" %462, %460 : i64
    llvm.cond_br %463, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %464 = llvm.extractvalue %420[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %465 = llvm.getelementptr %464[%462] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %466 = llvm.load %465 : !llvm.ptr<i1>
    %467 = llvm.extractvalue %352[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %468 = llvm.getelementptr %467[%462] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %469 = llvm.load %468 : !llvm.ptr<i64>
    %470 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %471 = llvm.getelementptr %470[%462] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %472 = llvm.load %471 : !llvm.ptr<i64>
    %473 = llvm.select %466, %469, %472 : i1, i64
    %474 = llvm.extractvalue %458[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %475 = llvm.getelementptr %474[%462] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %473, %475 : !llvm.ptr<i64>
    %476 = llvm.add %462, %461  : i64
    llvm.br ^bb46(%476 : i64)
  ^bb48:  // pred: ^bb46
    %477 = llvm.extractvalue %458[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %478 = llvm.getelementptr %477[%14] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %479 = llvm.load %478 : !llvm.ptr<i64>
    %480 = llvm.extractvalue %458[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %481 = llvm.getelementptr %480[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %482 = llvm.load %481 : !llvm.ptr<i64>
    %483 = llvm.mlir.constant(2 : index) : i64
    %484 = llvm.mlir.constant(2 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    %486 = llvm.mlir.constant(4 : index) : i64
    %487 = llvm.mul %486, %482  : i64
    %488 = llvm.mul %487, %479  : i64
    %489 = llvm.mlir.null : !llvm.ptr<i32>
    %490 = llvm.getelementptr %489[%488] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %491 = llvm.ptrtoint %490 : !llvm.ptr<i32> to i64
    %492 = llvm.mlir.constant(16 : index) : i64
    %493 = llvm.add %491, %492  : i64
    %494 = llvm.call @malloc(%493) : (i64) -> !llvm.ptr<i8>
    %495 = llvm.bitcast %494 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %496 = llvm.ptrtoint %495 : !llvm.ptr<i32> to i64
    %497 = llvm.mlir.constant(1 : index) : i64
    %498 = llvm.sub %492, %497  : i64
    %499 = llvm.add %496, %498  : i64
    %500 = llvm.urem %499, %492  : i64
    %501 = llvm.sub %499, %500  : i64
    %502 = llvm.inttoptr %501 : i64 to !llvm.ptr<i32>
    %503 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %504 = llvm.insertvalue %495, %503[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.insertvalue %502, %504[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %506 = llvm.mlir.constant(0 : index) : i64
    %507 = llvm.insertvalue %506, %505[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.insertvalue %479, %507[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %509 = llvm.insertvalue %482, %508[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.insertvalue %483, %509[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.insertvalue %484, %510[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.insertvalue %487, %511[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.insertvalue %486, %512[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %514 = llvm.insertvalue %484, %513[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %515 = llvm.insertvalue %485, %514[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %516 = llvm.mlir.constant(0 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%516 : i64)
  ^bb49(%518: i64):  // 2 preds: ^bb48, ^bb59
    %519 = llvm.icmp "slt" %518, %479 : i64
    llvm.cond_br %519, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %520 = llvm.mlir.constant(0 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%520 : i64)
  ^bb51(%522: i64):  // 2 preds: ^bb50, ^bb58
    %523 = llvm.icmp "slt" %522, %482 : i64
    llvm.cond_br %523, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %524 = llvm.mlir.constant(0 : index) : i64
    %525 = llvm.mlir.constant(2 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%524 : i64)
  ^bb53(%527: i64):  // 2 preds: ^bb52, ^bb57
    %528 = llvm.icmp "slt" %527, %525 : i64
    llvm.cond_br %528, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %529 = llvm.mlir.constant(0 : index) : i64
    %530 = llvm.mlir.constant(2 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%529 : i64)
  ^bb55(%532: i64):  // 2 preds: ^bb54, ^bb56
    %533 = llvm.icmp "slt" %532, %530 : i64
    llvm.cond_br %533, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %534 = llvm.extractvalue %281[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %535 = llvm.mlir.constant(4 : index) : i64
    %536 = llvm.mul %14, %535  : i64
    %537 = llvm.mlir.constant(4 : index) : i64
    %538 = llvm.mul %14, %537  : i64
    %539 = llvm.add %536, %538  : i64
    %540 = llvm.mlir.constant(2 : index) : i64
    %541 = llvm.mul %527, %540  : i64
    %542 = llvm.add %539, %541  : i64
    %543 = llvm.add %542, %532  : i64
    %544 = llvm.getelementptr %534[%543] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %545 = llvm.load %544 : !llvm.ptr<i32>
    %546 = llvm.extractvalue %515[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %547 = llvm.extractvalue %515[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %548 = llvm.mul %518, %547  : i64
    %549 = llvm.mlir.constant(4 : index) : i64
    %550 = llvm.mul %522, %549  : i64
    %551 = llvm.add %548, %550  : i64
    %552 = llvm.mlir.constant(2 : index) : i64
    %553 = llvm.mul %527, %552  : i64
    %554 = llvm.add %551, %553  : i64
    %555 = llvm.add %554, %532  : i64
    %556 = llvm.getelementptr %546[%555] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %545, %556 : !llvm.ptr<i32>
    %557 = llvm.add %532, %531  : i64
    llvm.br ^bb55(%557 : i64)
  ^bb57:  // pred: ^bb55
    %558 = llvm.add %527, %526  : i64
    llvm.br ^bb53(%558 : i64)
  ^bb58:  // pred: ^bb53
    %559 = llvm.add %522, %521  : i64
    llvm.br ^bb51(%559 : i64)
  ^bb59:  // pred: ^bb51
    %560 = llvm.add %518, %517  : i64
    llvm.br ^bb49(%560 : i64)
  ^bb60:  // pred: ^bb49
    %561 = llvm.mlir.constant(1 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    %563 = llvm.mlir.constant(2 : index) : i64
    %564 = llvm.mlir.constant(2 : index) : i64
    %565 = llvm.mlir.constant(1 : index) : i64
    %566 = llvm.mlir.constant(4 : index) : i64
    %567 = llvm.mlir.constant(4 : index) : i64
    %568 = llvm.mlir.constant(4 : index) : i64
    %569 = llvm.mlir.null : !llvm.ptr<i32>
    %570 = llvm.getelementptr %569[%568] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %571 = llvm.ptrtoint %570 : !llvm.ptr<i32> to i64
    %572 = llvm.mlir.constant(16 : index) : i64
    %573 = llvm.add %571, %572  : i64
    %574 = llvm.call @malloc(%573) : (i64) -> !llvm.ptr<i8>
    %575 = llvm.bitcast %574 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %576 = llvm.ptrtoint %575 : !llvm.ptr<i32> to i64
    %577 = llvm.mlir.constant(1 : index) : i64
    %578 = llvm.sub %572, %577  : i64
    %579 = llvm.add %576, %578  : i64
    %580 = llvm.urem %579, %572  : i64
    %581 = llvm.sub %579, %580  : i64
    %582 = llvm.inttoptr %581 : i64 to !llvm.ptr<i32>
    %583 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %584 = llvm.insertvalue %575, %583[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %585 = llvm.insertvalue %582, %584[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %586 = llvm.mlir.constant(0 : index) : i64
    %587 = llvm.insertvalue %586, %585[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %588 = llvm.insertvalue %561, %587[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %589 = llvm.insertvalue %562, %588[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %590 = llvm.insertvalue %563, %589[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %591 = llvm.insertvalue %564, %590[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %592 = llvm.insertvalue %567, %591[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %593 = llvm.insertvalue %566, %592[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %594 = llvm.insertvalue %564, %593[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %595 = llvm.insertvalue %565, %594[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %596 = llvm.mlir.constant(0 : index) : i64
    %597 = llvm.mlir.constant(1 : index) : i64
    %598 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%596 : i64)
  ^bb61(%599: i64):  // 2 preds: ^bb60, ^bb71
    %600 = llvm.icmp "slt" %599, %597 : i64
    llvm.cond_br %600, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %601 = llvm.mlir.constant(0 : index) : i64
    %602 = llvm.mlir.constant(1 : index) : i64
    %603 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%601 : i64)
  ^bb63(%604: i64):  // 2 preds: ^bb62, ^bb70
    %605 = llvm.icmp "slt" %604, %602 : i64
    llvm.cond_br %605, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %606 = llvm.mlir.constant(0 : index) : i64
    %607 = llvm.mlir.constant(2 : index) : i64
    %608 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%606 : i64)
  ^bb65(%609: i64):  // 2 preds: ^bb64, ^bb69
    %610 = llvm.icmp "slt" %609, %607 : i64
    llvm.cond_br %610, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %611 = llvm.mlir.constant(0 : index) : i64
    %612 = llvm.mlir.constant(2 : index) : i64
    %613 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%611 : i64)
  ^bb67(%614: i64):  // 2 preds: ^bb66, ^bb68
    %615 = llvm.icmp "slt" %614, %612 : i64
    llvm.cond_br %615, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %616 = llvm.extractvalue %515[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %617 = llvm.extractvalue %515[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %618 = llvm.mul %599, %617  : i64
    %619 = llvm.mlir.constant(4 : index) : i64
    %620 = llvm.mul %604, %619  : i64
    %621 = llvm.add %618, %620  : i64
    %622 = llvm.mlir.constant(2 : index) : i64
    %623 = llvm.mul %609, %622  : i64
    %624 = llvm.add %621, %623  : i64
    %625 = llvm.add %624, %614  : i64
    %626 = llvm.getelementptr %616[%625] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %627 = llvm.load %626 : !llvm.ptr<i32>
    %628 = llvm.extractvalue %281[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %629 = llvm.mlir.constant(4 : index) : i64
    %630 = llvm.mul %14, %629  : i64
    %631 = llvm.mlir.constant(4 : index) : i64
    %632 = llvm.mul %14, %631  : i64
    %633 = llvm.add %630, %632  : i64
    %634 = llvm.mlir.constant(2 : index) : i64
    %635 = llvm.mul %609, %634  : i64
    %636 = llvm.add %633, %635  : i64
    %637 = llvm.add %636, %614  : i64
    %638 = llvm.getelementptr %628[%637] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %639 = llvm.load %638 : !llvm.ptr<i32>
    %640 = llvm.add %627, %639  : i32
    %641 = llvm.extractvalue %595[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %642 = llvm.mlir.constant(4 : index) : i64
    %643 = llvm.mul %599, %642  : i64
    %644 = llvm.mlir.constant(4 : index) : i64
    %645 = llvm.mul %604, %644  : i64
    %646 = llvm.add %643, %645  : i64
    %647 = llvm.mlir.constant(2 : index) : i64
    %648 = llvm.mul %609, %647  : i64
    %649 = llvm.add %646, %648  : i64
    %650 = llvm.add %649, %614  : i64
    %651 = llvm.getelementptr %641[%650] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %640, %651 : !llvm.ptr<i32>
    %652 = llvm.add %614, %613  : i64
    llvm.br ^bb67(%652 : i64)
  ^bb69:  // pred: ^bb67
    %653 = llvm.add %609, %608  : i64
    llvm.br ^bb65(%653 : i64)
  ^bb70:  // pred: ^bb65
    %654 = llvm.add %604, %603  : i64
    llvm.br ^bb63(%654 : i64)
  ^bb71:  // pred: ^bb63
    %655 = llvm.add %599, %598  : i64
    llvm.br ^bb61(%655 : i64)
  ^bb72:  // pred: ^bb61
    %656 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %657 = llvm.insertvalue %195, %656[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %658 = llvm.insertvalue %595, %657[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %658 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i1>, !llvm.ptr<i1>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(4 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(3 : i64) : i64
    %109 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %91[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<140 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<140 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

