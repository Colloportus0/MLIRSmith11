module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<[[[[6]], [[7]]]]> : tensor<1x2x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_3(dense<[1, 2, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 2, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.constant(1 : i64) : i64
    %7 = llvm.mlir.constant(0 : index) : i64
    %8 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %9 = llvm.bitcast %8 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %10 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %11 = llvm.insertvalue %9, %10[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.insertvalue %9, %11[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.insertvalue %13, %12[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.mlir.constant(4 : index) : i64
    %16 = llvm.insertvalue %15, %14[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.insertvalue %17, %16[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %21 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %22 = llvm.insertvalue %20, %21[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %23 = llvm.insertvalue %20, %22[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.insertvalue %24, %23[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %26 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %27 = llvm.bitcast %26 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %28 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %29 = llvm.insertvalue %27, %28[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.mlir.constant(4 : index) : i64
    %34 = llvm.insertvalue %33, %32[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.insertvalue %35, %34[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x array<2 x array<1 x array<1 x i32>>>>>
    %38 = llvm.bitcast %37 : !llvm.ptr<array<1 x array<2 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %39 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %40 = llvm.insertvalue %38, %39[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %38, %40[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.mlir.constant(0 : index) : i64
    %43 = llvm.insertvalue %42, %41[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.insertvalue %44, %43[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(2 : index) : i64
    %47 = llvm.insertvalue %46, %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.insertvalue %48, %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.insertvalue %50, %49[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mlir.constant(2 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.constant(2 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.mlir.constant(2 : index) : i64
    %66 = llvm.mlir.constant(4 : index) : i64
    %67 = llvm.mlir.constant(4 : index) : i64
    %68 = llvm.mlir.null : !llvm.ptr<i32>
    %69 = llvm.getelementptr %68[%67] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %70 = llvm.ptrtoint %69 : !llvm.ptr<i32> to i64
    %71 = llvm.mlir.constant(16 : index) : i64
    %72 = llvm.add %70, %71  : i64
    %73 = llvm.call @malloc(%72) : (i64) -> !llvm.ptr<i8>
    %74 = llvm.bitcast %73 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %75 = llvm.ptrtoint %74 : !llvm.ptr<i32> to i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.sub %71, %76  : i64
    %78 = llvm.add %75, %77  : i64
    %79 = llvm.urem %78, %71  : i64
    %80 = llvm.sub %78, %79  : i64
    %81 = llvm.inttoptr %80 : i64 to !llvm.ptr<i32>
    %82 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %83 = llvm.insertvalue %74, %82[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %81, %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.insertvalue %85, %84[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.insertvalue %60, %86[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.insertvalue %61, %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.insertvalue %62, %88[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.insertvalue %63, %89[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.insertvalue %66, %90[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.insertvalue %65, %91[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %63, %92[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %64, %93[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%95 : i64)
  ^bb1(%98: i64):  // 2 preds: ^bb0, ^bb11
    %99 = llvm.icmp "slt" %98, %96 : i64
    llvm.cond_br %99, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.mlir.constant(2 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%100 : i64)
  ^bb3(%103: i64):  // 2 preds: ^bb2, ^bb10
    %104 = llvm.icmp "slt" %103, %101 : i64
    llvm.cond_br %104, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%105 : i64)
  ^bb5(%108: i64):  // 2 preds: ^bb4, ^bb9
    %109 = llvm.icmp "slt" %108, %106 : i64
    llvm.cond_br %109, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.mlir.constant(2 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%110 : i64)
  ^bb7(%113: i64):  // 2 preds: ^bb6, ^bb8
    %114 = llvm.icmp "slt" %113, %111 : i64
    llvm.cond_br %114, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %115 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %116 = llvm.getelementptr %115[%113] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %117 = llvm.load %116 : !llvm.ptr<i32>
    %118 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mul %98, %119  : i64
    %121 = llvm.add %120, %103  : i64
    %122 = llvm.add %121, %108  : i64
    %123 = llvm.add %122, %7  : i64
    %124 = llvm.getelementptr %118[%123] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %125 = llvm.load %124 : !llvm.ptr<i32>
    %126 = llvm.icmp "sgt" %117, %125 : i32
    %127 = llvm.select %126, %117, %125 : i1, i32
    %128 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.mlir.constant(4 : index) : i64
    %130 = llvm.mul %98, %129  : i64
    %131 = llvm.mlir.constant(2 : index) : i64
    %132 = llvm.mul %103, %131  : i64
    %133 = llvm.add %130, %132  : i64
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mul %108, %134  : i64
    %136 = llvm.add %133, %135  : i64
    %137 = llvm.add %136, %113  : i64
    %138 = llvm.getelementptr %128[%137] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %127, %138 : !llvm.ptr<i32>
    %139 = llvm.add %113, %112  : i64
    llvm.br ^bb7(%139 : i64)
  ^bb9:  // pred: ^bb7
    %140 = llvm.add %108, %107  : i64
    llvm.br ^bb5(%140 : i64)
  ^bb10:  // pred: ^bb5
    %141 = llvm.add %103, %102  : i64
    llvm.br ^bb3(%141 : i64)
  ^bb11:  // pred: ^bb3
    %142 = llvm.add %98, %97  : i64
    llvm.br ^bb1(%142 : i64)
  ^bb12:  // pred: ^bb1
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(2 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.constant(2 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.constant(2 : index) : i64
    %149 = llvm.mlir.constant(4 : index) : i64
    %150 = llvm.mlir.constant(4 : index) : i64
    %151 = llvm.mlir.null : !llvm.ptr<i1>
    %152 = llvm.getelementptr %151[%150] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %153 = llvm.ptrtoint %152 : !llvm.ptr<i1> to i64
    %154 = llvm.mlir.constant(16 : index) : i64
    %155 = llvm.add %153, %154  : i64
    %156 = llvm.call @malloc(%155) : (i64) -> !llvm.ptr<i8>
    %157 = llvm.bitcast %156 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %158 = llvm.ptrtoint %157 : !llvm.ptr<i1> to i64
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.sub %154, %159  : i64
    %161 = llvm.add %158, %160  : i64
    %162 = llvm.urem %161, %154  : i64
    %163 = llvm.sub %161, %162  : i64
    %164 = llvm.inttoptr %163 : i64 to !llvm.ptr<i1>
    %165 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %166 = llvm.insertvalue %157, %165[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.insertvalue %164, %166[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.insertvalue %168, %167[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.insertvalue %143, %169[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.insertvalue %144, %170[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.insertvalue %145, %171[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.insertvalue %146, %172[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.insertvalue %149, %173[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.insertvalue %148, %174[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.insertvalue %146, %175[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.insertvalue %147, %176[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%178 : i64)
  ^bb13(%181: i64):  // 2 preds: ^bb12, ^bb23
    %182 = llvm.icmp "slt" %181, %179 : i64
    llvm.cond_br %182, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.mlir.constant(2 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%183 : i64)
  ^bb15(%186: i64):  // 2 preds: ^bb14, ^bb22
    %187 = llvm.icmp "slt" %186, %184 : i64
    llvm.cond_br %187, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %188 = llvm.mlir.constant(0 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%188 : i64)
  ^bb17(%191: i64):  // 2 preds: ^bb16, ^bb21
    %192 = llvm.icmp "slt" %191, %189 : i64
    llvm.cond_br %192, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %193 = llvm.mlir.constant(0 : index) : i64
    %194 = llvm.mlir.constant(2 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%193 : i64)
  ^bb19(%196: i64):  // 2 preds: ^bb18, ^bb20
    %197 = llvm.icmp "slt" %196, %194 : i64
    llvm.cond_br %197, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %198 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.mlir.constant(4 : index) : i64
    %200 = llvm.mul %181, %199  : i64
    %201 = llvm.mlir.constant(2 : index) : i64
    %202 = llvm.mul %186, %201  : i64
    %203 = llvm.add %200, %202  : i64
    %204 = llvm.mlir.constant(2 : index) : i64
    %205 = llvm.mul %191, %204  : i64
    %206 = llvm.add %203, %205  : i64
    %207 = llvm.add %206, %196  : i64
    %208 = llvm.getelementptr %198[%207] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %209 = llvm.load %208 : !llvm.ptr<i32>
    %210 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.mlir.constant(4 : index) : i64
    %212 = llvm.mul %181, %211  : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mul %186, %213  : i64
    %215 = llvm.add %212, %214  : i64
    %216 = llvm.mlir.constant(2 : index) : i64
    %217 = llvm.mul %191, %216  : i64
    %218 = llvm.add %215, %217  : i64
    %219 = llvm.add %218, %196  : i64
    %220 = llvm.getelementptr %210[%219] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %221 = llvm.load %220 : !llvm.ptr<i32>
    %222 = llvm.icmp "slt" %209, %221 : i32
    %223 = llvm.extractvalue %177[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.mlir.constant(4 : index) : i64
    %225 = llvm.mul %181, %224  : i64
    %226 = llvm.mlir.constant(2 : index) : i64
    %227 = llvm.mul %186, %226  : i64
    %228 = llvm.add %225, %227  : i64
    %229 = llvm.mlir.constant(2 : index) : i64
    %230 = llvm.mul %191, %229  : i64
    %231 = llvm.add %228, %230  : i64
    %232 = llvm.add %231, %196  : i64
    %233 = llvm.getelementptr %223[%232] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %222, %233 : !llvm.ptr<i1>
    %234 = llvm.add %196, %195  : i64
    llvm.br ^bb19(%234 : i64)
  ^bb21:  // pred: ^bb19
    %235 = llvm.add %191, %190  : i64
    llvm.br ^bb17(%235 : i64)
  ^bb22:  // pred: ^bb17
    %236 = llvm.add %186, %185  : i64
    llvm.br ^bb15(%236 : i64)
  ^bb23:  // pred: ^bb15
    %237 = llvm.add %181, %180  : i64
    llvm.br ^bb13(%237 : i64)
  ^bb24:  // pred: ^bb13
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.mlir.constant(2 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.mlir.constant(2 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(2 : index) : i64
    %244 = llvm.mlir.constant(4 : index) : i64
    %245 = llvm.mlir.constant(4 : index) : i64
    %246 = llvm.mlir.null : !llvm.ptr<i32>
    %247 = llvm.getelementptr %246[%245] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %248 = llvm.ptrtoint %247 : !llvm.ptr<i32> to i64
    %249 = llvm.mlir.constant(16 : index) : i64
    %250 = llvm.add %248, %249  : i64
    %251 = llvm.call @malloc(%250) : (i64) -> !llvm.ptr<i8>
    %252 = llvm.bitcast %251 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %253 = llvm.ptrtoint %252 : !llvm.ptr<i32> to i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.sub %249, %254  : i64
    %256 = llvm.add %253, %255  : i64
    %257 = llvm.urem %256, %249  : i64
    %258 = llvm.sub %256, %257  : i64
    %259 = llvm.inttoptr %258 : i64 to !llvm.ptr<i32>
    %260 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %261 = llvm.insertvalue %252, %260[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.insertvalue %259, %261[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.mlir.constant(0 : index) : i64
    %264 = llvm.insertvalue %263, %262[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.insertvalue %238, %264[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.insertvalue %239, %265[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.insertvalue %240, %266[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.insertvalue %241, %267[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.insertvalue %244, %268[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.insertvalue %243, %269[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.insertvalue %241, %270[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.insertvalue %242, %271[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%273 : i64)
  ^bb25(%276: i64):  // 2 preds: ^bb24, ^bb35
    %277 = llvm.icmp "slt" %276, %274 : i64
    llvm.cond_br %277, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(2 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%278 : i64)
  ^bb27(%281: i64):  // 2 preds: ^bb26, ^bb34
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%283 : i64)
  ^bb29(%286: i64):  // 2 preds: ^bb28, ^bb33
    %287 = llvm.icmp "slt" %286, %284 : i64
    llvm.cond_br %287, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %288 = llvm.mlir.constant(0 : index) : i64
    %289 = llvm.mlir.constant(2 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%288 : i64)
  ^bb31(%291: i64):  // 2 preds: ^bb30, ^bb32
    %292 = llvm.icmp "slt" %291, %289 : i64
    llvm.cond_br %292, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %293 = llvm.extractvalue %177[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.mlir.constant(4 : index) : i64
    %295 = llvm.mul %276, %294  : i64
    %296 = llvm.mlir.constant(2 : index) : i64
    %297 = llvm.mul %281, %296  : i64
    %298 = llvm.add %295, %297  : i64
    %299 = llvm.mlir.constant(2 : index) : i64
    %300 = llvm.mul %286, %299  : i64
    %301 = llvm.add %298, %300  : i64
    %302 = llvm.add %301, %291  : i64
    %303 = llvm.getelementptr %293[%302] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %304 = llvm.load %303 : !llvm.ptr<i1>
    %305 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.mlir.constant(4 : index) : i64
    %307 = llvm.mul %276, %306  : i64
    %308 = llvm.mlir.constant(2 : index) : i64
    %309 = llvm.mul %281, %308  : i64
    %310 = llvm.add %307, %309  : i64
    %311 = llvm.mlir.constant(2 : index) : i64
    %312 = llvm.mul %286, %311  : i64
    %313 = llvm.add %310, %312  : i64
    %314 = llvm.add %313, %291  : i64
    %315 = llvm.getelementptr %305[%314] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %316 = llvm.load %315 : !llvm.ptr<i32>
    %317 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.mlir.constant(4 : index) : i64
    %319 = llvm.mul %276, %318  : i64
    %320 = llvm.mlir.constant(2 : index) : i64
    %321 = llvm.mul %281, %320  : i64
    %322 = llvm.add %319, %321  : i64
    %323 = llvm.mlir.constant(2 : index) : i64
    %324 = llvm.mul %286, %323  : i64
    %325 = llvm.add %322, %324  : i64
    %326 = llvm.add %325, %291  : i64
    %327 = llvm.getelementptr %317[%326] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %328 = llvm.load %327 : !llvm.ptr<i32>
    %329 = llvm.select %304, %316, %328 : i1, i32
    %330 = llvm.extractvalue %272[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.mlir.constant(4 : index) : i64
    %332 = llvm.mul %276, %331  : i64
    %333 = llvm.mlir.constant(2 : index) : i64
    %334 = llvm.mul %281, %333  : i64
    %335 = llvm.add %332, %334  : i64
    %336 = llvm.mlir.constant(2 : index) : i64
    %337 = llvm.mul %286, %336  : i64
    %338 = llvm.add %335, %337  : i64
    %339 = llvm.add %338, %291  : i64
    %340 = llvm.getelementptr %330[%339] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %329, %340 : !llvm.ptr<i32>
    %341 = llvm.add %291, %290  : i64
    llvm.br ^bb31(%341 : i64)
  ^bb33:  // pred: ^bb31
    %342 = llvm.add %286, %285  : i64
    llvm.br ^bb29(%342 : i64)
  ^bb34:  // pred: ^bb29
    %343 = llvm.add %281, %280  : i64
    llvm.br ^bb27(%343 : i64)
  ^bb35:  // pred: ^bb27
    %344 = llvm.add %276, %275  : i64
    llvm.br ^bb25(%344 : i64)
  ^bb36:  // pred: ^bb25
    %345 = llvm.mlir.constant(4 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.mlir.null : !llvm.ptr<i64>
    %348 = llvm.getelementptr %347[%345] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %349 = llvm.ptrtoint %348 : !llvm.ptr<i64> to i64
    %350 = llvm.mlir.constant(16 : index) : i64
    %351 = llvm.add %349, %350  : i64
    %352 = llvm.call @malloc(%351) : (i64) -> !llvm.ptr<i8>
    %353 = llvm.bitcast %352 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %354 = llvm.ptrtoint %353 : !llvm.ptr<i64> to i64
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.sub %350, %355  : i64
    %357 = llvm.add %354, %356  : i64
    %358 = llvm.urem %357, %350  : i64
    %359 = llvm.sub %357, %358  : i64
    %360 = llvm.inttoptr %359 : i64 to !llvm.ptr<i64>
    %361 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %362 = llvm.insertvalue %353, %361[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %363 = llvm.insertvalue %360, %362[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.insertvalue %364, %363[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %366 = llvm.insertvalue %345, %365[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %367 = llvm.insertvalue %346, %366[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.mlir.constant(4 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%368 : i64)
  ^bb37(%371: i64):  // 2 preds: ^bb36, ^bb38
    %372 = llvm.icmp "slt" %371, %369 : i64
    llvm.cond_br %372, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %373 = llvm.extractvalue %367[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %374 = llvm.getelementptr %373[%371] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %6, %374 : !llvm.ptr<i64>
    %375 = llvm.add %371, %370  : i64
    llvm.br ^bb37(%375 : i64)
  ^bb39:  // pred: ^bb37
    %376 = llvm.mlir.constant(4 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    %378 = llvm.mlir.null : !llvm.ptr<i64>
    %379 = llvm.getelementptr %378[%376] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %380 = llvm.ptrtoint %379 : !llvm.ptr<i64> to i64
    %381 = llvm.mlir.constant(16 : index) : i64
    %382 = llvm.add %380, %381  : i64
    %383 = llvm.call @malloc(%382) : (i64) -> !llvm.ptr<i8>
    %384 = llvm.bitcast %383 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %385 = llvm.ptrtoint %384 : !llvm.ptr<i64> to i64
    %386 = llvm.mlir.constant(1 : index) : i64
    %387 = llvm.sub %381, %386  : i64
    %388 = llvm.add %385, %387  : i64
    %389 = llvm.urem %388, %381  : i64
    %390 = llvm.sub %388, %389  : i64
    %391 = llvm.inttoptr %390 : i64 to !llvm.ptr<i64>
    %392 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %393 = llvm.insertvalue %384, %392[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %394 = llvm.insertvalue %391, %393[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %395 = llvm.mlir.constant(0 : index) : i64
    %396 = llvm.insertvalue %395, %394[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %397 = llvm.insertvalue %376, %396[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %398 = llvm.insertvalue %377, %397[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %399 = llvm.mlir.constant(0 : index) : i64
    %400 = llvm.mlir.constant(4 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%399 : i64)
  ^bb40(%402: i64):  // 2 preds: ^bb39, ^bb41
    %403 = llvm.icmp "slt" %402, %400 : i64
    llvm.cond_br %403, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %404 = llvm.extractvalue %367[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %405 = llvm.getelementptr %404[%402] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %406 = llvm.load %405 : !llvm.ptr<i64>
    %407 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %408 = llvm.load %407 : !llvm.ptr<i64>
    %409 = llvm.mul %406, %408  : i64
    %410 = llvm.extractvalue %398[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %411 = llvm.getelementptr %410[%402] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %409, %411 : !llvm.ptr<i64>
    %412 = llvm.add %402, %401  : i64
    llvm.br ^bb40(%412 : i64)
  ^bb42:  // pred: ^bb40
    %413 = llvm.mlir.constant(4 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    %415 = llvm.mlir.null : !llvm.ptr<i1>
    %416 = llvm.getelementptr %415[%413] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %417 = llvm.ptrtoint %416 : !llvm.ptr<i1> to i64
    %418 = llvm.mlir.constant(16 : index) : i64
    %419 = llvm.add %417, %418  : i64
    %420 = llvm.call @malloc(%419) : (i64) -> !llvm.ptr<i8>
    %421 = llvm.bitcast %420 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %422 = llvm.ptrtoint %421 : !llvm.ptr<i1> to i64
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.sub %418, %423  : i64
    %425 = llvm.add %422, %424  : i64
    %426 = llvm.urem %425, %418  : i64
    %427 = llvm.sub %425, %426  : i64
    %428 = llvm.inttoptr %427 : i64 to !llvm.ptr<i1>
    %429 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %430 = llvm.insertvalue %421, %429[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %431 = llvm.insertvalue %428, %430[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %432 = llvm.mlir.constant(0 : index) : i64
    %433 = llvm.insertvalue %432, %431[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %434 = llvm.insertvalue %413, %433[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %435 = llvm.insertvalue %414, %434[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %436 = llvm.mlir.constant(0 : index) : i64
    %437 = llvm.mlir.constant(4 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%436 : i64)
  ^bb43(%439: i64):  // 2 preds: ^bb42, ^bb44
    %440 = llvm.icmp "slt" %439, %437 : i64
    llvm.cond_br %440, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %441 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %442 = llvm.getelementptr %441[%439] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %443 = llvm.load %442 : !llvm.ptr<i64>
    %444 = llvm.extractvalue %398[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %445 = llvm.getelementptr %444[%439] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %446 = llvm.load %445 : !llvm.ptr<i64>
    %447 = llvm.icmp "eq" %443, %446 : i64
    %448 = llvm.extractvalue %435[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %449 = llvm.getelementptr %448[%439] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %447, %449 : !llvm.ptr<i1>
    %450 = llvm.add %439, %438  : i64
    llvm.br ^bb43(%450 : i64)
  ^bb45:  // pred: ^bb43
    %451 = llvm.mlir.constant(4 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.mlir.null : !llvm.ptr<i64>
    %454 = llvm.getelementptr %453[%451] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %455 = llvm.ptrtoint %454 : !llvm.ptr<i64> to i64
    %456 = llvm.mlir.constant(16 : index) : i64
    %457 = llvm.add %455, %456  : i64
    %458 = llvm.call @malloc(%457) : (i64) -> !llvm.ptr<i8>
    %459 = llvm.bitcast %458 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %460 = llvm.ptrtoint %459 : !llvm.ptr<i64> to i64
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.sub %456, %461  : i64
    %463 = llvm.add %460, %462  : i64
    %464 = llvm.urem %463, %456  : i64
    %465 = llvm.sub %463, %464  : i64
    %466 = llvm.inttoptr %465 : i64 to !llvm.ptr<i64>
    %467 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %468 = llvm.insertvalue %459, %467[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %469 = llvm.insertvalue %466, %468[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %470 = llvm.mlir.constant(0 : index) : i64
    %471 = llvm.insertvalue %470, %469[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %472 = llvm.insertvalue %451, %471[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %473 = llvm.insertvalue %452, %472[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %474 = llvm.mlir.constant(0 : index) : i64
    %475 = llvm.mlir.constant(4 : index) : i64
    %476 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%474 : i64)
  ^bb46(%477: i64):  // 2 preds: ^bb45, ^bb47
    %478 = llvm.icmp "slt" %477, %475 : i64
    llvm.cond_br %478, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %479 = llvm.extractvalue %435[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %480 = llvm.getelementptr %479[%477] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %481 = llvm.load %480 : !llvm.ptr<i1>
    %482 = llvm.extractvalue %367[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %483 = llvm.getelementptr %482[%477] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %484 = llvm.load %483 : !llvm.ptr<i64>
    %485 = llvm.extractvalue %36[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %486 = llvm.getelementptr %485[%477] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %487 = llvm.load %486 : !llvm.ptr<i64>
    %488 = llvm.select %481, %484, %487 : i1, i64
    %489 = llvm.extractvalue %473[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %490 = llvm.getelementptr %489[%477] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %488, %490 : !llvm.ptr<i64>
    %491 = llvm.add %477, %476  : i64
    llvm.br ^bb46(%491 : i64)
  ^bb48:  // pred: ^bb46
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.constant(2 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.mlir.constant(2 : index) : i64
    %496 = llvm.mlir.constant(1 : index) : i64
    %497 = llvm.mlir.constant(2 : index) : i64
    %498 = llvm.mlir.constant(4 : index) : i64
    %499 = llvm.mlir.constant(4 : index) : i64
    %500 = llvm.mlir.null : !llvm.ptr<i32>
    %501 = llvm.getelementptr %500[%499] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %502 = llvm.ptrtoint %501 : !llvm.ptr<i32> to i64
    %503 = llvm.mlir.constant(16 : index) : i64
    %504 = llvm.add %502, %503  : i64
    %505 = llvm.call @malloc(%504) : (i64) -> !llvm.ptr<i8>
    %506 = llvm.bitcast %505 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %507 = llvm.ptrtoint %506 : !llvm.ptr<i32> to i64
    %508 = llvm.mlir.constant(1 : index) : i64
    %509 = llvm.sub %503, %508  : i64
    %510 = llvm.add %507, %509  : i64
    %511 = llvm.urem %510, %503  : i64
    %512 = llvm.sub %510, %511  : i64
    %513 = llvm.inttoptr %512 : i64 to !llvm.ptr<i32>
    %514 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %515 = llvm.insertvalue %506, %514[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %516 = llvm.insertvalue %513, %515[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.mlir.constant(0 : index) : i64
    %518 = llvm.insertvalue %517, %516[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %519 = llvm.insertvalue %492, %518[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %520 = llvm.insertvalue %493, %519[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %521 = llvm.insertvalue %494, %520[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.insertvalue %495, %521[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %523 = llvm.insertvalue %498, %522[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %524 = llvm.insertvalue %497, %523[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %525 = llvm.insertvalue %495, %524[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %526 = llvm.insertvalue %496, %525[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %527 = llvm.mlir.constant(0 : index) : i64
    %528 = llvm.mlir.constant(1 : index) : i64
    %529 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%527 : i64)
  ^bb49(%530: i64):  // 2 preds: ^bb48, ^bb59
    %531 = llvm.icmp "slt" %530, %528 : i64
    llvm.cond_br %531, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %532 = llvm.mlir.constant(0 : index) : i64
    %533 = llvm.mlir.constant(2 : index) : i64
    %534 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%532 : i64)
  ^bb51(%535: i64):  // 2 preds: ^bb50, ^bb58
    %536 = llvm.icmp "slt" %535, %533 : i64
    llvm.cond_br %536, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %537 = llvm.mlir.constant(0 : index) : i64
    %538 = llvm.mlir.constant(1 : index) : i64
    %539 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%537 : i64)
  ^bb53(%540: i64):  // 2 preds: ^bb52, ^bb57
    %541 = llvm.icmp "slt" %540, %538 : i64
    llvm.cond_br %541, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %542 = llvm.mlir.constant(0 : index) : i64
    %543 = llvm.mlir.constant(2 : index) : i64
    %544 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%542 : i64)
  ^bb55(%545: i64):  // 2 preds: ^bb54, ^bb56
    %546 = llvm.icmp "slt" %545, %543 : i64
    llvm.cond_br %546, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %547 = llvm.extractvalue %272[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %548 = llvm.mlir.constant(4 : index) : i64
    %549 = llvm.mul %7, %548  : i64
    %550 = llvm.mlir.constant(2 : index) : i64
    %551 = llvm.mul %535, %550  : i64
    %552 = llvm.add %549, %551  : i64
    %553 = llvm.mlir.constant(2 : index) : i64
    %554 = llvm.mul %7, %553  : i64
    %555 = llvm.add %552, %554  : i64
    %556 = llvm.add %555, %545  : i64
    %557 = llvm.getelementptr %547[%556] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %558 = llvm.load %557 : !llvm.ptr<i32>
    %559 = llvm.extractvalue %526[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %560 = llvm.mlir.constant(4 : index) : i64
    %561 = llvm.mul %530, %560  : i64
    %562 = llvm.mlir.constant(2 : index) : i64
    %563 = llvm.mul %535, %562  : i64
    %564 = llvm.add %561, %563  : i64
    %565 = llvm.mlir.constant(2 : index) : i64
    %566 = llvm.mul %540, %565  : i64
    %567 = llvm.add %564, %566  : i64
    %568 = llvm.add %567, %545  : i64
    %569 = llvm.getelementptr %559[%568] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %558, %569 : !llvm.ptr<i32>
    %570 = llvm.add %545, %544  : i64
    llvm.br ^bb55(%570 : i64)
  ^bb57:  // pred: ^bb55
    %571 = llvm.add %540, %539  : i64
    llvm.br ^bb53(%571 : i64)
  ^bb58:  // pred: ^bb53
    %572 = llvm.add %535, %534  : i64
    llvm.br ^bb51(%572 : i64)
  ^bb59:  // pred: ^bb51
    %573 = llvm.add %530, %529  : i64
    llvm.br ^bb49(%573 : i64)
  ^bb60:  // pred: ^bb49
    %574 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %575 = llvm.insertvalue %526, %574[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %576 = llvm.insertvalue %177, %575[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %576 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.call @main_graph(%1, %2, %3, %4, %5) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %6, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %22, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> ()
    %23 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %24 = llvm.extractvalue %23[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %25 = llvm.extractvalue %23[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %26 = llvm.mlir.constant(2 : i64) : i64
    %27 = llvm.mlir.constant(16 : i64) : i64
    %28 = llvm.call @malloc(%27) : (i64) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %30 = llvm.mlir.constant(4 : i64) : i64
    %31 = llvm.call @omTensorCreateUntyped(%30) : (i64) -> !llvm.ptr<i8>
    %32 = llvm.mlir.constant(1 : i64) : i64
    %33 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.bitcast %33 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %35 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.bitcast %35 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%31, %32, %34, %36) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %37 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%31, %37) : (!llvm.ptr<i8>, i64) -> ()
    %38 = llvm.call @omTensorGetShape(%31) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %39 = llvm.call @omTensorGetStrides(%31) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %40 = llvm.mlir.constant(0 : i64) : i64
    %41 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.getelementptr %38[%40] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %41, %42 : !llvm.ptr<i64>
    %43 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.getelementptr %39[%40] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %43, %44 : !llvm.ptr<i64>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.extractvalue %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %38[%45] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %46, %47 : !llvm.ptr<i64>
    %48 = llvm.extractvalue %24[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.getelementptr %39[%45] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %48, %49 : !llvm.ptr<i64>
    %50 = llvm.mlir.constant(2 : i64) : i64
    %51 = llvm.extractvalue %24[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.getelementptr %38[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %51, %52 : !llvm.ptr<i64>
    %53 = llvm.extractvalue %24[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %39[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %53, %54 : !llvm.ptr<i64>
    %55 = llvm.mlir.constant(3 : i64) : i64
    %56 = llvm.extractvalue %24[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.getelementptr %38[%55] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %56, %57 : !llvm.ptr<i64>
    %58 = llvm.extractvalue %24[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.getelementptr %39[%55] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %58, %59 : !llvm.ptr<i64>
    %60 = llvm.mlir.constant(0 : i64) : i64
    %61 = llvm.getelementptr %29[%60] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %31, %61 : !llvm.ptr<ptr<i8>>
    %62 = llvm.mlir.constant(4 : i64) : i64
    %63 = llvm.call @omTensorCreateUntyped(%62) : (i64) -> !llvm.ptr<i8>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %25[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.bitcast %65 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %67 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.bitcast %67 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%63, %64, %66, %68) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %69 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%63, %69) : (!llvm.ptr<i8>, i64) -> ()
    %70 = llvm.call @omTensorGetShape(%63) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %71 = llvm.call @omTensorGetStrides(%63) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %72 = llvm.mlir.constant(0 : i64) : i64
    %73 = llvm.extractvalue %25[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %70[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %25[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %71[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(1 : i64) : i64
    %78 = llvm.extractvalue %25[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %70[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %25[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %71[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(2 : i64) : i64
    %83 = llvm.extractvalue %25[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.getelementptr %70[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %83, %84 : !llvm.ptr<i64>
    %85 = llvm.extractvalue %25[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.getelementptr %71[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.mlir.constant(3 : i64) : i64
    %88 = llvm.extractvalue %25[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %70[%87] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %88, %89 : !llvm.ptr<i64>
    %90 = llvm.extractvalue %25[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.getelementptr %71[%87] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.mlir.constant(1 : i64) : i64
    %93 = llvm.getelementptr %29[%92] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %63, %93 : !llvm.ptr<ptr<i8>>
    %94 = llvm.call @omTensorListCreate(%29, %26, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %94 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<60 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<60 x i8>> to !llvm.ptr<i8>
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

